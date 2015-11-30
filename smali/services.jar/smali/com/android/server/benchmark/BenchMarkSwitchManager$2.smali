.class Lcom/android/server/benchmark/BenchMarkSwitchManager$2;
.super Ljava/lang/Object;
.source "BenchMarkSwitchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/benchmark/BenchMarkSwitchManager;->showAlertDialog(IZ)V
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
    .line 398
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$2;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$2;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$702(Lcom/android/server/benchmark/BenchMarkSwitchManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 402
    return-void
.end method
