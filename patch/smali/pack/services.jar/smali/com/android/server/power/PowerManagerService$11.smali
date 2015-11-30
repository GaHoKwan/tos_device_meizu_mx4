.class Lcom/android/server/power/PowerManagerService$11;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->initLightSensorListener()V
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
    .line 4307
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationChanged(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4323
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->writeSettingsAnimatonLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;I)V

    .line 4324
    monitor-exit v1

    .line 4325
    return-void

    .line 4324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBrightnessChanged(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->writeSettingsBrightnessLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;I)V

    .line 4331
    monitor-exit v1

    .line 4332
    return-void

    .line 4331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLuxChanged()V
    .locals 5

    .prologue
    .line 4311
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/DisplayPowerController;->getLastAmbientLux()F

    move-result v1

    .line 4312
    .local v1, "lux":F
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4315
    .local v0, "brightness":I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4316
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->writeSettingsLightSensorLocked(FI)V
    invoke-static {v2, v1, v0}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;FI)V

    .line 4317
    monitor-exit v3

    .line 4318
    return-void

    .line 4317
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onScreenBrighten(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const/4 v0, 0x1

    .line 4355
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 4357
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4358
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/power/PowerManagerService;->mMode:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$4602(Lcom/android/server/power/PowerManagerService;I)I

    .line 4359
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->resetWakeUpStatusLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)V

    .line 4361
    :cond_0
    monitor-exit v2

    .line 4362
    return-void

    .line 4356
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4361
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScreenDimEnd(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const/4 v3, 0x2

    .line 4344
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenDim:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$5002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4346
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mMode:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->getDesiredScreenPowerStateLocked()I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 4348
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->writeSettingsBrightnessLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;I)V

    .line 4350
    :cond_0
    monitor-exit v1

    .line 4351
    return-void

    .line 4350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenDimStart(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4337
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenDim:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$5002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4339
    monitor-exit v1

    .line 4340
    return-void

    .line 4339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
