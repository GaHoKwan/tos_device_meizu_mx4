.class Landroid/widget/AbsListView$CheckForKeyLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "#zhangxin@SDK.AbsListView.Feature do something when check for long press"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 4061
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 4061
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4064
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_0

    .line 4065
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 4066
    .local v1, "index":I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4068
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_4

    .line 4069
    const/4 v0, 0x0

    .line 4073
    .local v0, "handled":Z
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mSelectedPosition:I

    int-to-long v5, v5

    # invokes: Landroid/widget/AbsListView;->CheckForLongPressForMeiZu(IJLandroid/view/View;)Z
    invoke-static {v3, v4, v5, v6, v2}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;IJLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4095
    .end local v0    # "handled":Z
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 4078
    .restart local v0    # "handled":Z
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4079
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-wide v5, v5, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 4081
    :cond_2
    if-eqz v0, :cond_3

    .line 4082
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4083
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4092
    .end local v0    # "handled":Z
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-wide v5, v5, Landroid/widget/AbsListView;->mSelectedRowId:J

    # invokes: Landroid/widget/AbsListView;->startDragSwitch(IJLandroid/view/View;)V
    invoke-static {v3, v4, v5, v6, v2}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;IJLandroid/view/View;)V

    goto :goto_0

    .line 4086
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4087
    if-eqz v2, :cond_3

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1
.end method
