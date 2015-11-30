.class Lcom/android/server/input/InputManagerService$2;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    .line 233
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z
    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->access$602(Lcom/android/server/input/InputManagerService;Z)Z

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mNewGestureState:I
    invoke-static {v0, v3}, Lcom/android/server/input/InputManagerService;->access$1202(Lcom/android/server/input/InputManagerService;I)I

    .line 243
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->onStateChanged()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)V

    .line 255
    :goto_0
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    monitor-enter v1

    .line 246
    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z
    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->access$602(Lcom/android/server/input/InputManagerService;Z)Z

    .line 250
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mNewGestureState:I
    invoke-static {v0, v4}, Lcom/android/server/input/InputManagerService;->access$1202(Lcom/android/server/input/InputManagerService;I)I

    .line 252
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->onStateChanged()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 250
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
