.class Lcom/android/internal/app/ActionBarImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
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
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->access$602(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 236
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 240
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setAlpha(F)V

    .line 250
    :cond_2
    return-void
.end method
