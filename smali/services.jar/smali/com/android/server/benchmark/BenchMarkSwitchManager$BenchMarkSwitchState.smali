.class Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkSwitchState;
.super Ljava/lang/Object;
.source "BenchMarkSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/benchmark/BenchMarkSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BenchMarkSwitchState"
.end annotation


# static fields
.field public static final Disabled:I = 0x3

.field public static final Disabling:I = 0x2

.field public static final Enabling:I = 0x4

.field public static final Init:I = 0x0

.field public static final Ready:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;


# direct methods
.method constructor <init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkSwitchState;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
