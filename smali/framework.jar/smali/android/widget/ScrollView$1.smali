.class Landroid/widget/ScrollView$1;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 2359
    iput-object p1, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2361
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    # invokes: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v0}, Landroid/widget/ScrollView;->access$000(Landroid/widget/ScrollView;)I

    move-result v6

    .line 2362
    .local v6, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/OverScrollerExt;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 2363
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/OverScrollerExt;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mScrollX:I
    invoke-static {v1}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2365
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    # setter for: Landroid/widget/ScrollView;->mOverFling:Z
    invoke-static {v0, v7}, Landroid/widget/ScrollView;->access$402(Landroid/widget/ScrollView;Z)Z

    .line 2368
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 2369
    return-void
.end method
