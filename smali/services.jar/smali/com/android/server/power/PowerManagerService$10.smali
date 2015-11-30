.class Lcom/android/server/power/PowerManagerService$10;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4278
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4280
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerController;->releaseWakeUpRequestLock()V

    .line 4282
    monitor-exit v1

    .line 4283
    return-void

    .line 4282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
