.class Landroid/widget/AbsListView$7;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ActionMode$BackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->startMultiChoice()Z
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
    .line 10201
    iput-object p1, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 10204
    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 10205
    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 10206
    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 10207
    const/4 v0, 0x1

    .line 10209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
