.class Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1440
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2500(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1450
    :cond_0
    return-void
.end method
