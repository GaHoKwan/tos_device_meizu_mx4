.class Lcom/meizu/widget/MzPullRefreshView$1;
.super Ljava/lang/Object;
.source "MzPullRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzPullRefreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MzPullRefreshView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzPullRefreshView;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 387
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z
    invoke-static {v0}, Lcom/meizu/widget/MzPullRefreshView;->access$000(Lcom/meizu/widget/MzPullRefreshView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z
    invoke-static {v0}, Lcom/meizu/widget/MzPullRefreshView;->access$100(Lcom/meizu/widget/MzPullRefreshView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z
    invoke-static {v0}, Lcom/meizu/widget/MzPullRefreshView;->access$100(Lcom/meizu/widget/MzPullRefreshView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/widget/MzPullRefreshView;->access$300(Lcom/meizu/widget/MzPullRefreshView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I
    invoke-static {v2}, Lcom/meizu/widget/MzPullRefreshView;->access$200(Lcom/meizu/widget/MzPullRefreshView;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/widget/MzPullRefreshView;->access$300(Lcom/meizu/widget/MzPullRefreshView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F
    invoke-static {v4}, Lcom/meizu/widget/MzPullRefreshView;->access$400(Lcom/meizu/widget/MzPullRefreshView;)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0xa

    iget-object v5, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I
    invoke-static {v5}, Lcom/meizu/widget/MzPullRefreshView;->access$200(Lcom/meizu/widget/MzPullRefreshView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 392
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/widget/MzPullRefreshView;->access$700(Lcom/meizu/widget/MzPullRefreshView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_LINE:I
    invoke-static {v1}, Lcom/meizu/widget/MzPullRefreshView;->access$500(Lcom/meizu/widget/MzPullRefreshView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MzPullRefreshView$1;->this$0:Lcom/meizu/widget/MzPullRefreshView;

    # getter for: Lcom/meizu/widget/MzPullRefreshView;->mTotalFrame:I
    invoke-static {v2}, Lcom/meizu/widget/MzPullRefreshView;->access$600(Lcom/meizu/widget/MzPullRefreshView;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    :cond_1
    return-void
.end method
