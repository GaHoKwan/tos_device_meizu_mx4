.class Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1340
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1396
    :cond_0
    :goto_0
    return v1

    .line 1347
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMzDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2500(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
