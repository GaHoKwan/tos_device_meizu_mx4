.class Landroid/widget/AbsListView$6;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 9840
    iput-object p1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9842
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9843
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    iget-object v2, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    # setter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$4702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/AbsListView$FlingRunnable;

    .line 9847
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 9848
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->createScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)V

    .line 9849
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 9852
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    .line 9853
    return-void
.end method
