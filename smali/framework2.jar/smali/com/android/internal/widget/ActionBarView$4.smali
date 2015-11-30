.class Lcom/android/internal/widget/ActionBarView$4;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarView;->onConfigurationChangedInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 2439
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 2442
    :cond_0
    return-void
.end method
