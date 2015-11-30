.class final Landroid/widget/ListView$ScrollSelectionRunnable;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "#zhangxin@SDK.ListView.Feature runnable for scroll selection"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollSelectionRunnable"
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x19

.field private static final SCROLL_SPEED:I = 0x23


# instance fields
.field private mStart:Z

.field private mUpSelect:Z

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 4933
    iput-object p1, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4935
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 4936
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 5012
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    .line 5013
    iget-object v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5014
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 5008
    iget-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 4948
    const/16 v3, 0x23

    .line 4949
    .local v3, "speed":I
    const/4 v0, 0x0

    .line 4950
    .local v0, "atEdge":Z
    const/4 v1, 0x0

    .line 4952
    .local v1, "atEnd":Z
    iget-boolean v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    if-eqz v4, :cond_4

    .line 4953
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    move-result v0

    .line 4954
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const/4 v5, 0x1

    # invokes: Landroid/widget/ListView;->findCandidateScrollSelection(Z)I
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;Z)I

    move-result v2

    .line 4957
    .local v2, "candidatePosition":I
    if-ne v2, v6, :cond_0

    .line 4958
    const/4 v1, 0x1

    .line 4962
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # getter for: Landroid/widget/ListView;->mLastUpSelectPosition:I
    invoke-static {v4}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 4963
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # getter for: Landroid/widget/ListView;->mLastUpSelectPosition:I
    invoke-static {v5}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)I

    move-result v5

    # invokes: Landroid/widget/ListView;->upSelect(II)V
    invoke-static {v4, v5, v2}, Landroid/widget/ListView;->access$400(Landroid/widget/ListView;II)V

    .line 4966
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # getter for: Landroid/widget/ListView;->mDragDownPosition:I
    invoke-static {v4}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 4967
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # setter for: Landroid/widget/ListView;->mDragDownPosition:I
    invoke-static {v4, v6}, Landroid/widget/ListView;->access$502(Landroid/widget/ListView;I)I

    .line 4972
    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v4, v4, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v4, :cond_2

    .line 4973
    const/4 v1, 0x1

    .line 4974
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    # invokes: Landroid/widget/ListView;->correctTooLow(I)V
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;I)V

    .line 5002
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 5003
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const-wide/16 v5, 0x19

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5005
    :cond_3
    return-void

    .line 4977
    .end local v2    # "candidatePosition":I
    :cond_4
    mul-int/lit8 v3, v3, -0x1

    .line 4978
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    move-result v0

    .line 4979
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const/4 v5, 0x0

    # invokes: Landroid/widget/ListView;->findCandidateScrollSelection(Z)I
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;Z)I

    move-result v2

    .line 4982
    .restart local v2    # "candidatePosition":I
    if-ne v2, v6, :cond_5

    .line 4983
    const/4 v1, 0x1

    .line 4986
    :cond_5
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # getter for: Landroid/widget/ListView;->mLastDownSelectPosition:I
    invoke-static {v4}, Landroid/widget/ListView;->access$700(Landroid/widget/ListView;)I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 4987
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # getter for: Landroid/widget/ListView;->mLastDownSelectPosition:I
    invoke-static {v5}, Landroid/widget/ListView;->access$700(Landroid/widget/ListView;)I

    move-result v5

    # invokes: Landroid/widget/ListView;->downSelect(II)V
    invoke-static {v4, v5, v2}, Landroid/widget/ListView;->access$800(Landroid/widget/ListView;II)V

    .line 4990
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # getter for: Landroid/widget/ListView;->mDragDownPosition:I
    invoke-static {v4}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 4991
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    # setter for: Landroid/widget/ListView;->mDragDownPosition:I
    invoke-static {v4, v6}, Landroid/widget/ListView;->access$502(Landroid/widget/ListView;I)I

    .line 4996
    :cond_6
    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v4, v4, Landroid/widget/ListView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v5, v5, Landroid/widget/ListView;->mItemCount:I

    if-ne v4, v5, :cond_2

    .line 4997
    const/4 v1, 0x1

    .line 4998
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    # invokes: Landroid/widget/ListView;->correctTooHigh(I)V
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$900(Landroid/widget/ListView;I)V

    goto :goto_0
.end method

.method public startScrollSelecte(Z)V
    .locals 1
    .param p1, "up"    # Z

    .prologue
    .line 4941
    iput-boolean p1, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 4942
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    .line 4943
    iget-object v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4944
    return-void
.end method
