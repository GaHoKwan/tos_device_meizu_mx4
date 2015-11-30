.class Lcom/android/server/benchmark/BenchMarkSwitchManager$4;
.super Ljava/lang/Object;
.source "BenchMarkSwitchManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/benchmark/BenchMarkSwitchManager;->createView()Landroid/view/View;
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
    .line 441
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$4;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$4;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/benchmark/BenchMarkSwitchManager;->handleBenchMarkAppResume(I)V
    invoke-static {v0, v1}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$400(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$4;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$700(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$4;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$700(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 449
    :cond_0
    return-void
.end method
