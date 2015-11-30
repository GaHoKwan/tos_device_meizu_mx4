.class Lcom/android/internal/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->applyMeizuStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$contentHeight:I

.field final synthetic val$titleDivider:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$2;->val$titleDivider:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/app/AlertController$2;->val$contentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1587
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    .line 1574
    iget-object v0, p0, Lcom/android/internal/app/AlertController$2;->val$titleDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1575
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController$2;->val$contentHeight:I

    iget-object v1, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$1600(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1600(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1582
    :cond_1
    :goto_0
    return-void

    .line 1579
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1600(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method
