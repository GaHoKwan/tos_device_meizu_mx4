.class Lcom/android/internal/policy/impl/PhoneWindowManager$41;
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
    .line 8559
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8564
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_intelligent_voice"

    const/4 v3, -0x3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 8572
    .local v0, "isLongHomePressEnable":I
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyLongPressed:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$5102(Z)Z

    .line 8573
    if-nez v0, :cond_0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->isPhoneIdel()Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->access$5200()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8576
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    const/16 v2, 0x791a

    invoke-virtual {v1, v2, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(IZ)Z

    .line 8578
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 8590
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3802(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8591
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 8592
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8594
    return-void

    .line 8580
    :cond_0
    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->isPhoneIdel()Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->access$5200()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8581
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->startVoiceActivity(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->access$5300(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    .line 8584
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    const/16 v2, 0x7724

    invoke-virtual {v1, v2, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(IZ)Z

    .line 8587
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v5, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    goto :goto_0
.end method
