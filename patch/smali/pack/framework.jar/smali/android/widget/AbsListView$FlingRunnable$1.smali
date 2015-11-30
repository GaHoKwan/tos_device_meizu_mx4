.class Landroid/widget/AbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0

    .prologue
    .line 5696
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 5699
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mActivePointerId:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v0

    .line 5700
    .local v0, "activeId":I
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 5705
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;
    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->access$1700(Landroid/widget/AbsListView$FlingRunnable;)Lcom/meizu/widget/OverScrollerExt;

    move-result-object v1

    .line 5707
    .local v1, "scroller":Lcom/meizu/widget/OverScrollerExt;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 5708
    :cond_0
    const-string v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Direct return : vt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",activeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mScrollY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    :goto_0
    return-void

    .line 5713
    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMaximumVelocity:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5714
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 5715
    .local v3, "yvel":F
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5716
    const-string v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fly wheel: yvel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",activeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mScrollY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mTouchMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mMinimumVelocity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ListView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/meizu/widget/OverScrollerExt;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5725
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-wide/16 v5, 0x28

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 5727
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5728
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5729
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0
.end method
