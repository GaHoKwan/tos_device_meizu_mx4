.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "#zhangxin@SDK.AbsListView.Feature do something for meizu in FlingRunnable"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field mDoFling:Z

.field private mLastFlingY:I

.field private mLastOverFlingY:I

.field private mOverScrollMode:I

.field private final mScroller:Lcom/meizu/widget/OverScrollerExt;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5736
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5682
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mDoFling:Z

    .line 5692
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 5693
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    .line 5696
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 5741
    new-instance v0, Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    .line 5744
    return-void
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView$FlingRunnable;)Lcom/meizu/widget/OverScrollerExt;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 5669
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 7
    .param p1, "delta"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5845
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v2, v6, v6}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 5846
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v2, v5, v5, v5}, Lcom/meizu/widget/OverScrollerExt;->notifyHorizontalEdgeReached(III)V

    .line 5847
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Lcom/meizu/widget/OverScrollerExt;->notifyVerticalEdgeReached(III)V

    .line 5849
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 5850
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5852
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5853
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v2}, Lcom/meizu/widget/OverScrollerExt;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 5854
    .local v1, "vel":I
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5855
    const-string v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edgeReached when fling: touch mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScrollY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",vel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5858
    :cond_1
    if-lez p1, :cond_3

    .line 5859
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5869
    .end local v1    # "vel":I
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5870
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5871
    return-void

    .line 5861
    .restart local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 5864
    .end local v1    # "vel":I
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5865
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_2

    .line 5866
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 5888
    # getter for: Landroid/widget/AbsListView;->sDbgMotion:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5889
    const-string v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endFling+: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFirstPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "endFling"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5897
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iput v4, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5901
    iput-boolean v5, p0, Landroid/widget/AbsListView$FlingRunnable;->mDoFling:Z

    .line 5904
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5905
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5907
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5908
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)V

    .line 5909
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt;->abortAnimation()V

    .line 5911
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5912
    const-string v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endFling-: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFirstPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5915
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5916
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 5917
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5921
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    if-ltz v0, :cond_3

    .line 5922
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 5923
    iput v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    .line 5926
    :cond_3
    return-void

    .line 5892
    :cond_4
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5893
    const-string v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endFling+: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFirstPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 5929
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5930
    const-string v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flywheelTouch: touch mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5936
    iget v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    if-ltz v0, :cond_1

    .line 5937
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 5938
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    .line 5941
    :cond_1
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 5945
    # getter for: Landroid/widget/AbsListView;->sDbgDataChange:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$3700()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 5946
    const-string v15, "AbsListView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FlingRunnable: touch mode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",mAdapter = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",mFirstPosition = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",mDataChanged = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",adatper size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",this = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    :cond_0
    const-wide/16 v15, 0x8

    const-string v17, "Fling-run"

    invoke-static/range {v15 .. v17}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5951
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v15, v15, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v15, :pswitch_data_0

    .line 5953
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5954
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 6152
    :goto_0
    return-void

    .line 5958
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v15}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 5959
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 5966
    :cond_1
    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mDoFling:Z

    .line 5971
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v15

    if-nez v15, :cond_2

    .line 5972
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 5977
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v15, v15, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v15, :cond_3

    .line 5978
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5981
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v15, v15, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v15

    if-nez v15, :cond_5

    .line 5982
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5983
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 5991
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    .line 5993
    .local v13, "scroller":Lcom/meizu/widget/OverScrollerExt;
    invoke-virtual {v13}, Lcom/meizu/widget/OverScrollerExt;->computeScrollOffset()Z

    move-result v8

    .line 5994
    .local v8, "more":Z
    invoke-virtual {v13}, Lcom/meizu/widget/OverScrollerExt;->getCurrY()I

    move-result v14

    .line 5998
    .local v14, "y":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v4, v15, v14

    .line 6000
    .local v4, "delta":I
    if-lez v4, :cond_9

    .line 6002
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6003
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6004
    .local v6, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6007
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6021
    .end local v6    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 6022
    .local v9, "motionView":Landroid/view/View;
    const/4 v11, 0x0

    .line 6023
    .local v11, "oldTop":I
    if-eqz v9, :cond_6

    .line 6024
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    .line 6028
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15, v4, v4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v1

    .line 6029
    .local v1, "atEdge":Z
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    .line 6031
    .local v2, "atEnd":Z
    :goto_2
    # getter for: Landroid/widget/AbsListView;->sDbgMotion:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$3100()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 6032
    const-string v15, "AbsListView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FlingRunnable mode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mScrollY = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static/range {v17 .. v17}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",atEnd = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",delta = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",more = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",y = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",mLastFlingY = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6037
    :cond_7
    if-eqz v2, :cond_c

    .line 6050
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->canOverScroll()Z

    move-result v15

    if-nez v15, :cond_b

    .line 6051
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6057
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mShouldAbort:Z
    invoke-static {v15}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v15}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 6059
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/16 v16, 0x0

    # setter for: Landroid/widget/AbsListView;->mShouldAbort:Z
    invoke-static/range {v15 .. v16}, Landroid/widget/AbsListView;->access$4302(Landroid/widget/AbsListView;Z)Z

    .line 6060
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/16 v16, 0x77c4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 6151
    .end local v1    # "atEdge":Z
    .end local v2    # "atEnd":Z
    .end local v4    # "delta":I
    .end local v8    # "more":Z
    .end local v9    # "motionView":Landroid/view/View;
    .end local v11    # "oldTop":I
    .end local v14    # "y":I
    :cond_8
    :goto_3
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 6010
    .restart local v4    # "delta":I
    .restart local v8    # "more":Z
    .restart local v14    # "y":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    .line 6011
    .local v10, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    add-int v16, v16, v10

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6013
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6014
    .local v7, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6017
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    neg-int v15, v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto/16 :goto_1

    .line 6029
    .end local v7    # "lastView":Landroid/view/View;
    .end local v10    # "offsetToLast":I
    .restart local v1    # "atEdge":Z
    .restart local v9    # "motionView":Landroid/view/View;
    .restart local v11    # "oldTop":I
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 6065
    .restart local v2    # "atEnd":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v15, v15, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 6066
    if-eqz v8, :cond_8

    .line 6067
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto :goto_3

    .line 6074
    :cond_c
    if-eqz v8, :cond_e

    if-nez v2, :cond_e

    .line 6075
    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->invalidate()V

    .line 6076
    :cond_d
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 6077
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 6079
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_3

    .line 6101
    .end local v1    # "atEdge":Z
    .end local v2    # "atEnd":Z
    .end local v4    # "delta":I
    .end local v8    # "more":Z
    .end local v9    # "motionView":Landroid/view/View;
    .end local v11    # "oldTop":I
    .end local v13    # "scroller":Lcom/meizu/widget/OverScrollerExt;
    .end local v14    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    .line 6103
    .restart local v13    # "scroller":Lcom/meizu/widget/OverScrollerExt;
    invoke-virtual {v13}, Lcom/meizu/widget/OverScrollerExt;->computeScrollOffset()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 6133
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v15}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;)I

    move-result v12

    .line 6134
    .local v12, "scrollY":I
    invoke-virtual {v13}, Lcom/meizu/widget/OverScrollerExt;->getCurrY()I

    move-result v3

    .line 6135
    .local v3, "currY":I
    invoke-virtual {v13}, Lcom/meizu/widget/OverScrollerExt;->getCurrY()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 6136
    .local v5, "deltaY":I
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 6137
    if-eqz v5, :cond_f

    .line 6138
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    neg-int v0, v5

    move/from16 v16, v0

    neg-int v0, v5

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 6139
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->invalidate()V

    .line 6140
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 6143
    .end local v3    # "currY":I
    .end local v5    # "deltaY":I
    .end local v12    # "scrollY":I
    :cond_10
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 6144
    const-string v15, "AbsListView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FlingRunnable overfling intend to endfling: mScrollY = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static/range {v17 .. v17}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6146
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_3

    .line 5951
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method springBack2Dest(I)V
    .locals 7
    .param p1, "dest"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5808
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 5809
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    neg-int v5, p1

    neg-int v6, p1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 5811
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5812
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5813
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5815
    :cond_0
    return-void
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 5749
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v1, v1}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 5750
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mOverScrollMode:I

    .line 5751
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 5753
    if-gez p1, :cond_3

    move v2, v6

    .line 5754
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5756
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5757
    const-string v0, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start: touch mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScrollY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",initialVelocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastFlingY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/meizu/widget/OverScrollerExt;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5761
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/OverScrollerExt;->fling(IIIIIIII)V

    .line 5763
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5769
    iget-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mDoFling:Z

    if-nez v0, :cond_1

    .line 5770
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5781
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5782
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5784
    :cond_2
    return-void

    .end local v2    # "initialY":I
    :cond_3
    move v2, v1

    .line 5753
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 5817
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5818
    const-string v0, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startOverfling: touch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mScrollY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",initialVelocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMinimumVelocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getHeight() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v1, v1}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 5830
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/widget/OverScrollerExt;->fling(IIIIIIIIII)V

    .line 5833
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5834
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5835
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5836
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5874
    if-gez p1, :cond_1

    const v2, 0x7fffffff

    .line 5875
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5876
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v1, v1}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 5877
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5878
    const-string v0, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startScroll: touch mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScrollY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastFlingY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5881
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    if-eqz p3, :cond_2

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/meizu/widget/OverScrollerExt;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5882
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/OverScrollerExt;->startScroll(IIIII)V

    .line 5883
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5884
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5885
    return-void

    .end local v2    # "initialY":I
    :cond_1
    move v2, v1

    .line 5874
    goto :goto_0

    .line 5881
    .restart local v2    # "initialY":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 5787
    # getter for: Landroid/widget/AbsListView;->sDbgMZ:Z
    invoke-static {}, Landroid/widget/AbsListView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5788
    const-string v0, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSpringback: touch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mScrollY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v4, v4}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 5795
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5796
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 5798
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5799
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5800
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5805
    :goto_0
    return-void

    .line 5802
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5803
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
