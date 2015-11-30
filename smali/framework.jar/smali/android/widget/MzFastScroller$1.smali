.class Landroid/widget/MzFastScroller$1;
.super Ljava/lang/Object;
.source "MzFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/MzFastScroller;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    # getter for: Landroid/widget/MzFastScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v1}, Landroid/widget/MzFastScroller;->access$000(Landroid/widget/MzFastScroller;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    # invokes: Landroid/widget/MzFastScroller;->beginDrag()V
    invoke-static {v1}, Landroid/widget/MzFastScroller;->access$100(Landroid/widget/MzFastScroller;)V

    .line 237
    iget-object v1, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    iget-object v2, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    # getter for: Landroid/widget/MzFastScroller;->mInitialTouchY:F
    invoke-static {v2}, Landroid/widget/MzFastScroller;->access$200(Landroid/widget/MzFastScroller;)F

    move-result v2

    # invokes: Landroid/widget/MzFastScroller;->getPosFromMotionEvent(F)F
    invoke-static {v1, v2}, Landroid/widget/MzFastScroller;->access$300(Landroid/widget/MzFastScroller;F)F

    move-result v0

    .line 238
    .local v0, "pos":F
    iget-object v1, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    # invokes: Landroid/widget/MzFastScroller;->scrollTo(F)V
    invoke-static {v1, v0}, Landroid/widget/MzFastScroller;->access$400(Landroid/widget/MzFastScroller;F)V

    .line 241
    .end local v0    # "pos":F
    :cond_0
    iget-object v1, p0, Landroid/widget/MzFastScroller$1;->this$0:Landroid/widget/MzFastScroller;

    const/4 v2, 0x0

    # setter for: Landroid/widget/MzFastScroller;->mHasPendingDrag:Z
    invoke-static {v1, v2}, Landroid/widget/MzFastScroller;->access$502(Landroid/widget/MzFastScroller;Z)Z

    .line 242
    return-void
.end method
