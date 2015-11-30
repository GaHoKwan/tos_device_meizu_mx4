.class final Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoLightSenrorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3053
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 3054
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3055
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$4900(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3059
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handleLsPriximitySensorLocked()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$5000(Lcom/android/server/power/DisplayPowerController;)V

    .line 3060
    monitor-exit v1

    .line 3061
    return-void

    .line 3060
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
