.class Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1424
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBlurAlpha(F)V

    .line 1426
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBlurIntensity(F)V

    .line 1427
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->enableBlurGlassFeature(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mAttached:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$1902(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;Z)Z

    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2000(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1431
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mAttached:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$1902(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;Z)Z

    .line 1405
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2600(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2600(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2600(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2700(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2700(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2700(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1413
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2000(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1414
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2000(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1416
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1417
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1419
    :cond_4
    return-void
.end method
