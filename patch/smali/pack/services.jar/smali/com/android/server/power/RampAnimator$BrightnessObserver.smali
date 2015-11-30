.class final Lcom/android/server/power/RampAnimator$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/power/RampAnimator;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 827
    .local p0, "this":Lcom/android/server/power/RampAnimator$BrightnessObserver;, "Lcom/android/server/power/RampAnimator<TT;>.BrightnessObserver;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$BrightnessObserver;->this$0:Lcom/android/server/power/RampAnimator;

    .line 828
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 829
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 832
    .local p0, "this":Lcom/android/server/power/RampAnimator$BrightnessObserver;, "Lcom/android/server/power/RampAnimator<TT;>.BrightnessObserver;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$BrightnessObserver;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1800(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$BrightnessObserver;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->handleBrightnessChangedByUserLocked()V
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$2600(Lcom/android/server/power/RampAnimator;)V

    .line 834
    monitor-exit v1

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
