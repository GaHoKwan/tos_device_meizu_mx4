.class Landroid/widget/AbsListView$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$motionPosition:I

.field final synthetic val$performClick:Landroid/widget/AbsListView$PerformClick;

.field final synthetic val$x:F


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;IFLandroid/widget/AbsListView$PerformClick;)V
    .locals 0

    .prologue
    .line 5020
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/widget/AbsListView$3;->val$motionPosition:I

    iput p4, p0, Landroid/widget/AbsListView$3;->val$x:F

    iput-object p5, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5023
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1302(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5024
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5025
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 5026
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5030
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iget v1, p0, Landroid/widget/AbsListView$3;->val$motionPosition:I

    iget v2, p0, Landroid/widget/AbsListView$3;->val$x:F

    iget-object v3, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    # invokes: Landroid/widget/AbsListView;->touchModeResetForMeiZu(IFLandroid/widget/AbsListView$PerformClick;)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;IFLandroid/widget/AbsListView$PerformClick;)V

    .line 5033
    return-void
.end method
