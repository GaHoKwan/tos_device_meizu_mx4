.class Lcom/android/internal/widget/ActionBarContainer$1;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer$1;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer$1;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 106
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer$1;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarContainer;->access$000(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->resetDirtyRect(Landroid/graphics/Rect;)V

    .line 109
    :cond_0
    return-void
.end method
