.class Landroid/widget/AbsListView$11;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->handleItemSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$deltaY:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$originalItem:I

.field final synthetic val$switchItem:I

.field final synthetic val$switchItemID:J

.field final synthetic val$switchViewStartTop:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/ViewTreeObserver;JIIII)V
    .locals 0

    .prologue
    .line 11217
    iput-object p1, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$11;->val$observer:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Landroid/widget/AbsListView$11;->val$switchItemID:J

    iput p5, p0, Landroid/widget/AbsListView$11;->val$switchItem:I

    iput p6, p0, Landroid/widget/AbsListView$11;->val$originalItem:I

    iput p7, p0, Landroid/widget/AbsListView$11;->val$deltaY:I

    iput p8, p0, Landroid/widget/AbsListView$11;->val$switchViewStartTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 11219
    iget-object v5, p0, Landroid/widget/AbsListView$11;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11222
    iget-object v5, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11223
    iget-object v5, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMobileItemId:J
    invoke-static {v6}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)J

    move-result-wide v6

    # invokes: Landroid/widget/AbsListView;->getViewForID(J)Landroid/view/View;
    invoke-static {v5, v6, v7}, Landroid/widget/AbsListView;->access$7300(Landroid/widget/AbsListView;J)Landroid/view/View;

    move-result-object v2

    .line 11224
    .local v2, "mobileView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget-wide v6, p0, Landroid/widget/AbsListView$11;->val$switchItemID:J

    # invokes: Landroid/widget/AbsListView;->getViewForID(J)Landroid/view/View;
    invoke-static {v5, v6, v7}, Landroid/widget/AbsListView;->access$7300(Landroid/widget/AbsListView;J)Landroid/view/View;

    move-result-object v3

    .line 11229
    .local v3, "switchView":Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 11230
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 11232
    iget-object v5, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$11;->val$deltaY:I

    # += operator for: Landroid/widget/AbsListView;->mTotalOffset:I
    invoke-static {v5, v6}, Landroid/widget/AbsListView;->access$7412(Landroid/widget/AbsListView;I)I

    .line 11234
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 11235
    .local v4, "switchViewNewTop":I
    iget v5, p0, Landroid/widget/AbsListView$11;->val$switchViewStartTop:I

    sub-int v1, v5, v4

    .line 11237
    .local v1, "delta":I
    int-to-float v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 11238
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 11240
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x96

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11241
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11243
    return v9

    .line 11226
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "delta":I
    .end local v2    # "mobileView":Landroid/view/View;
    .end local v3    # "switchView":Landroid/view/View;
    .end local v4    # "switchViewNewTop":I
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$11;->val$switchItem:I

    iget-object v7, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 11227
    .restart local v2    # "mobileView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$11;->val$originalItem:I

    iget-object v7, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "switchView":Landroid/view/View;
    goto :goto_0
.end method
