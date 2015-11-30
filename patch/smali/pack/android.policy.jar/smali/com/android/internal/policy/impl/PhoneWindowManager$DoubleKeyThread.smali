.class final Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoubleKeyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2

    .prologue
    .line 8661
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8662
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 8663
    const-string v0, "WindowManager"

    const-string v1, "Start DoubleKeyThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8664
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->start()V

    .line 8665
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8670
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8684
    :goto_0
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    .line 8685
    const-string v1, "WindowManager"

    const-string v2, "End DoubleKeyThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8686
    :cond_0
    return-void

    .line 8679
    :catch_0
    move-exception v0

    .line 8682
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WindowManager"

    const-string v2, "Interrupt the DoubleKeyThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
