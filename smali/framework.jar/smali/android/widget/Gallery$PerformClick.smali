.class Landroid/widget/Gallery$PerformClick;
.super Landroid/widget/Gallery$WindowRunnnable;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.Gallery.Feature "
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method private constructor <init>(Landroid/widget/Gallery;)V
    .locals 1

    .prologue
    .line 2817
    iput-object p1, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery$WindowRunnnable;-><init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Gallery;
    .param p2, "x1"    # Landroid/widget/Gallery$1;

    .prologue
    .line 2817
    invoke-direct {p0, p1}, Landroid/widget/Gallery$PerformClick;-><init>(Landroid/widget/Gallery;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2822
    iget-object v3, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    iget-boolean v3, v3, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 2836
    :cond_0
    :goto_0
    return-void

    .line 2824
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v3}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 2825
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    iget v1, p0, Landroid/widget/Gallery$PerformClick;->mClickMotionPosition:I

    .line 2826
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    iget v3, v3, Landroid/widget/Gallery;->mItemCount:I

    if-lez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2829
    iget-object v3, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    iget-object v4, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    iget v4, v4, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2832
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2833
    iget-object v3, p0, Landroid/widget/Gallery$PerformClick;->this$0:Landroid/widget/Gallery;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    # invokes: Landroid/widget/Gallery;->performItemClicks(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v1, v4, v5}, Landroid/widget/Gallery;->access$2700(Landroid/widget/Gallery;Landroid/view/View;IJ)Z

    goto :goto_0
.end method
