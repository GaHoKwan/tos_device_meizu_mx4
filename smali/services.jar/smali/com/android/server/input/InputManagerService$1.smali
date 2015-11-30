.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/telephony/PhoneStateListener;
.source "InputManagerService.java"


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
    .line 191
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v3, "/sys/devices/platform/gpio-keys.0/key_hall_state"

    # invokes: Lcom/android/server/input/InputManagerService;->readFrom(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 196
    .local v0, "lidOpen":Z
    if-ne v1, v7, :cond_2

    .line 197
    const/4 v0, 0x1

    .line 201
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 202
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v3, "/sys/bus/iio/devices/iio:device0/sensor_phone_calling"

    # invokes: Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V
    invoke-static {v2, v3, v6}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;Ljava/lang/String;I)V

    .line 203
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mAccelerometer:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 205
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z
    invoke-static {v2, v6}, Lcom/android/server/input/InputManagerService;->access$502(Lcom/android/server/input/InputManagerService;Z)Z

    .line 206
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    monitor-enter v3

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z
    invoke-static {v2, v4}, Lcom/android/server/input/InputManagerService;->access$602(Lcom/android/server/input/InputManagerService;Z)Z

    .line 208
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_1
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 222
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z
    invoke-static {v2, v6}, Lcom/android/server/input/InputManagerService;->access$802(Lcom/android/server/input/InputManagerService;Z)Z

    .line 228
    :cond_1
    :goto_2
    return-void

    .line 198
    :cond_2
    if-ne v1, v4, :cond_0

    .line 199
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v3, "/sys/bus/iio/devices/iio:device0/sensor_phone_calling"

    # invokes: Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;Ljava/lang/String;I)V

    .line 211
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mAccelerometer:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 212
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z
    invoke-static {v2, v5}, Lcom/android/server/input/InputManagerService;->access$502(Lcom/android/server/input/InputManagerService;Z)Z

    .line 213
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z
    invoke-static {v2, v5}, Lcom/android/server/input/InputManagerService;->access$702(Lcom/android/server/input/InputManagerService;Z)Z

    .line 214
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    monitor-enter v3

    .line 215
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z
    invoke-static {v2, v4}, Lcom/android/server/input/InputManagerService;->access$602(Lcom/android/server/input/InputManagerService;Z)Z

    .line 216
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 223
    :cond_4
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z
    invoke-static {v2, v5}, Lcom/android/server/input/InputManagerService;->access$802(Lcom/android/server/input/InputManagerService;Z)Z

    goto :goto_2
.end method
