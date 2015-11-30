.class Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->prepareAnimators()V
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
    .line 1604
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1631
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1621
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBlurAlpha(F)V

    .line 1622
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBlurIntensity(F)V

    .line 1623
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->enableBlurGlassFeature(Z)V

    .line 1624
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2500(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1625
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1616
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1610
    return-void
.end method
