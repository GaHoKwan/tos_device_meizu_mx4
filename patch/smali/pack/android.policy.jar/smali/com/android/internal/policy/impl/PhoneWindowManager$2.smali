.class Lcom/android/internal/policy/impl/PhoneWindowManager$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1006
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-gez v3, :cond_0

    .line 1007
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1010
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1011
    .local v0, "resolvedBehavior":I
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1012
    const/4 v0, 0x3

    .line 1015
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1051
    :goto_0
    :pswitch_0
    return-void

    .line 1019
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v1, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1022
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyIsNotIdle:Z

    .line 1026
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1028
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->canPlayHDEffects()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1029
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_3

    :goto_1
    invoke-virtual {v3, v6, v2, v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1040
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "globalactions"

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1029
    goto :goto_1

    .line 1037
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1, v6, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_2

    .line 1045
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v1, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1046
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3, v6, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1047
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "globalactions"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1048
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3

    .line 1015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method