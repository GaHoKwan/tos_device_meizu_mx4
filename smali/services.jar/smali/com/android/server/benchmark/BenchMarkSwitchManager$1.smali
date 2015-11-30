.class Lcom/android/server/benchmark/BenchMarkSwitchManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BenchMarkSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/benchmark/BenchMarkSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;


# direct methods
.method constructor <init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$1;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$1;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v1, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    .line 345
    :cond_0
    return-void
.end method
