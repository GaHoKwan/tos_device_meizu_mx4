.class Lcom/android/internal/app/ActionBarImpl$5;
.super Landroid/database/ContentObserver;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/app/ActionBarImpl;->disableBackButton(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->access$1600(Lcom/android/internal/app/ActionBarImpl;Z)V

    .line 1836
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$500(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$500(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->onSmartBarConfigurationChanged()V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->onSmartBarConfigurationChanged()V

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1400(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1400(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->onSmartBarConfigurationChanged()V

    .line 1845
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1846
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->onSmartBarConfigurationChanged()V

    .line 1848
    :cond_3
    return-void
.end method
