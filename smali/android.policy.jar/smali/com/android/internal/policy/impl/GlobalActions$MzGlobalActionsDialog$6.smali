.class Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;
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
    .line 1488
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1491
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1500
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10400c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1503
    :cond_0
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1504
    :cond_1
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1505
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1506
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->access$2500(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1509
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    return-void
.end method
