.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 6173
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6174
    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 6175
    return-void
.end method


# virtual methods
.method public run()V
    .locals 36
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.AbsListView.Feature deal with bug on run method"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 6422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getHeight()I

    move-result v20

    .line 6423
    .local v20, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6425
    .local v9, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_0

    .line 6614
    :cond_0
    :goto_0
    return-void

    .line 6427
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v32

    add-int/lit8 v17, v32, -0x1

    .line 6428
    .local v17, "lastViewIndex":I
    add-int v13, v9, v17

    .line 6430
    .local v13, "lastPos":I
    if-ltz v17, :cond_0

    .line 6434
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v13, v0, :cond_1

    .line 6436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6440
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 6441
    .local v14, "lastView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 6442
    .local v16, "lastViewHeight":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 6443
    .local v19, "lastViewTop":I
    sub-int v18, v20, v19

    .line 6444
    .local v18, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    if-ge v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6447
    .local v8, "extraScroll":I
    :goto_1
    sub-int v32, v16, v18

    add-int v29, v32, v8

    .line 6448
    .local v29, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6450
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6451
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v13, v0, :cond_0

    .line 6452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6444
    .end local v8    # "extraScroll":I
    .end local v29    # "scrollBy":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 6458
    .end local v13    # "lastPos":I
    .end local v14    # "lastView":Landroid/view/View;
    .end local v16    # "lastViewHeight":I
    .end local v17    # "lastViewIndex":I
    .end local v18    # "lastViewPixelsShowing":I
    .end local v19    # "lastViewTop":I
    :pswitch_1
    const/16 v25, 0x1

    .line 6459
    .local v25, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 6461
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v9, v0, :cond_0

    const/16 v32, 0x1

    move/from16 v0, v32

    if-le v5, v0, :cond_0

    add-int v32, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 6465
    add-int/lit8 v22, v9, 0x1

    .line 6467
    .local v22, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v32, v0

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 6469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6473
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 6474
    .local v23, "nextView":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v24

    .line 6475
    .local v24, "nextViewHeight":I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v26

    .line 6476
    .local v26, "nextViewTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6477
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v32, v0

    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 6478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    add-int v34, v24, v26

    sub-int v34, v34, v8

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v32 .. v35}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6481
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6485
    :cond_4
    move/from16 v0, v26

    if-le v0, v8, :cond_0

    .line 6486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    sub-int v33, v26, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v32 .. v35}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 6497
    .end local v5    # "childCount":I
    .end local v8    # "extraScroll":I
    .end local v22    # "nextPos":I
    .end local v23    # "nextView":Landroid/view/View;
    .end local v24    # "nextViewHeight":I
    .end local v25    # "nextViewIndex":I
    .end local v26    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static/range {v32 .. v32}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v32

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static/range {v32 .. v32}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v32

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;
    invoke-static/range {v32 .. v32}, Landroid/widget/AbsListView$FlingRunnable;->access$1700(Landroid/widget/AbsListView$FlingRunnable;)Lcom/meizu/widget/OverScrollerExt;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/widget/OverScrollerExt;->computeScrollOffset()Z

    move-result v12

    .line 6498
    .local v12, "isFling":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v9, v0, :cond_6

    if-eqz v12, :cond_6

    .line 6501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6497
    .end local v12    # "isFling":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 6505
    .restart local v12    # "isFling":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6506
    .local v10, "firstView":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 6509
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 6516
    .local v11, "firstViewTop":I
    if-lez v9, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsListView;->getVerticalSpacing()I

    move-result v33

    add-int v8, v32, v33

    .line 6518
    .restart local v8    # "extraScroll":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    sub-int v33, v11, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v32 .. v35}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6520
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6522
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v9, v0, :cond_7

    .line 6523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6527
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-gt v9, v0, :cond_0

    .line 6528
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v32, v0

    const/16 v33, -0x1

    const/16 v34, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto/16 :goto_0

    .line 6516
    .end local v8    # "extraScroll":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 6535
    .end local v10    # "firstView":Landroid/view/View;
    .end local v11    # "firstViewTop":I
    .end local v12    # "isFling":Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v32

    add-int/lit8 v17, v32, -0x2

    .line 6536
    .restart local v17    # "lastViewIndex":I
    if-ltz v17, :cond_0

    .line 6539
    add-int v13, v9, v17

    .line 6541
    .restart local v13    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v13, v0, :cond_9

    .line 6543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6547
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 6548
    .restart local v14    # "lastView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 6549
    .restart local v16    # "lastViewHeight":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 6550
    .restart local v19    # "lastViewTop":I
    sub-int v18, v20, v19

    .line 6551
    .restart local v18    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6552
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6553
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v13, v0, :cond_a

    .line 6554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    sub-int v33, v18, v8

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v32 .. v35}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6557
    :cond_a
    sub-int v4, v20, v8

    .line 6558
    .local v4, "bottom":I
    add-int v15, v19, v16

    .line 6559
    .local v15, "lastViewBottom":I
    if-le v4, v15, :cond_0

    .line 6560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    sub-int v33, v4, v15

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v32 .. v35}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 6567
    .end local v4    # "bottom":I
    .end local v8    # "extraScroll":I
    .end local v13    # "lastPos":I
    .end local v14    # "lastView":Landroid/view/View;
    .end local v15    # "lastViewBottom":I
    .end local v16    # "lastViewHeight":I
    .end local v17    # "lastViewIndex":I
    .end local v18    # "lastViewPixelsShowing":I
    .end local v19    # "lastViewTop":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v0, v9, :cond_b

    .line 6569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6573
    :cond_b
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 6576
    .restart local v5    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    .line 6577
    .local v27, "position":I
    add-int v32, v9, v5

    add-int/lit8 v13, v32, -0x1

    .line 6579
    .restart local v13    # "lastPos":I
    const/16 v31, 0x0

    .line 6580
    .local v31, "viewTravelCount":I
    move/from16 v0, v27

    if-ge v0, v9, :cond_d

    .line 6581
    sub-int v32, v9, v27

    add-int/lit8 v31, v32, 0x1

    .line 6587
    :cond_c
    :goto_4
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v5

    move/from16 v33, v0

    div-float v28, v32, v33

    .line 6589
    .local v28, "screenTravelCount":F
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 6590
    .local v21, "modifier":F
    move/from16 v0, v27

    if-ge v0, v9, :cond_e

    .line 6591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v6, v0

    .line 6592
    .local v6, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v7, v0

    .line 6593
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6582
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    .end local v21    # "modifier":F
    .end local v28    # "screenTravelCount":F
    :cond_d
    move/from16 v0, v27

    if-le v0, v13, :cond_c

    .line 6583
    sub-int v31, v27, v13

    goto :goto_4

    .line 6595
    .restart local v21    # "modifier":F
    .restart local v28    # "screenTravelCount":F
    :cond_e
    move/from16 v0, v27

    if-le v0, v13, :cond_f

    .line 6596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v6, v0

    .line 6597
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v7, v0

    .line 6598
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6602
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    sub-int v33, v27, v9

    invoke-virtual/range {v32 .. v33}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v30

    .line 6603
    .local v30, "targetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v32, v0

    sub-int v6, v30, v32

    .line 6604
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/AbsListView;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v7, v0

    .line 6606
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 6425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6363
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v14, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6364
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 6365
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 6366
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v14, v14, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 6367
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v15, v15, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 6369
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 6370
    :cond_0
    const-string v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 6375
    :cond_2
    const/16 p2, -0x1

    .line 6378
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6379
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 6380
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 6381
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 6383
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    .line 6384
    sub-int v10, v11, v8

    .line 6386
    :cond_4
    if-ge v13, v9, :cond_5

    .line 6387
    sub-int v10, v13, v9

    .line 6390
    :cond_5
    if-nez v10, :cond_6

    .line 6410
    :goto_0
    return-void

    .line 6394
    :cond_6
    if-ltz p2, :cond_7

    .line 6395
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6396
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 6397
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6398
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 6400
    .local v1, "absScroll":I
    if-gez v10, :cond_8

    add-int v14, v2, v1

    if-le v14, v8, :cond_8

    .line 6402
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 6409
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 6403
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_7

    .line 6405
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 6178
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 6180
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 6182
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 6222
    :cond_0
    :goto_0
    return-void

    .line 6190
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6191
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 6196
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6197
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 6200
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6201
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 6202
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 6203
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 6212
    :goto_1
    if-lez v4, :cond_4

    .line 6213
    div-int v5, v8, v4

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 6217
    :goto_2
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 6218
    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 6219
    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6221
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6204
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 6205
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 6206
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6208
    .end local v4    # "viewTravelCount":I
    :cond_3
    invoke-virtual {p0, v1, v7, v8}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 6215
    .restart local v4    # "viewTravelCount":I
    :cond_4
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6225
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 6227
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 6228
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 6300
    :cond_0
    :goto_0
    return-void

    .line 6232
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v9, v9, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 6234
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v10, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 6242
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 6243
    .local v3, "childCount":I
    if-eqz v3, :cond_0

    .line 6248
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6249
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 6252
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6253
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_4

    .line 6254
    sub-int v1, v6, p2

    .line 6255
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 6260
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 6261
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 6262
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_3

    .line 6263
    move v8, v2

    .line 6264
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 6290
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v8, :cond_7

    .line 6291
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 6295
    :goto_2
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 6296
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 6297
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6299
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6266
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_3
    move v8, v7

    .line 6267
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6269
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_4
    if-le v4, v6, :cond_6

    .line 6270
    sub-int v0, p2, v5

    .line 6271
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 6276
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 6277
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 6278
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_5

    .line 6279
    move v8, v2

    .line 6280
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6282
    .end local v8    # "viewTravelCount":I
    :cond_5
    move v8, v7

    .line 6283
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6286
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_6
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 6293
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6303
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 6304
    return-void
.end method

.method startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 6307
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 6309
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 6311
    move v3, p2

    .line 6312
    .local v3, "postOffset":I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v8, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 6356
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 6320
    .restart local p3    # "duration":I
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6321
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 6326
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 6328
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 6329
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 6330
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 6331
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6332
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 6334
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6335
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 6338
    .local v2, "lastPos":I
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 6339
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 6350
    .local v6, "viewTravelCount":I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 6351
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_2
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 6353
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 6355
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6340
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 6341
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_1

    .line 6344
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 6345
    .local v5, "targetTop":I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 6351
    .end local v5    # "targetTop":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 6413
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6414
    return-void
.end method
