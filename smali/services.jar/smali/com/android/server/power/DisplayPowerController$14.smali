.class Lcom/android/server/power/DisplayPowerController$14;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 3002
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$14;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 3016
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 3005
    const-string v4, "PowerManagerDisplayController"

    const-string v5, "LightSensor P-Sensor onSensorChanged"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$14;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$3200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$14;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$3200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v4, :cond_1

    .line 3007
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3008
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    .line 3009
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$14;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$300(Lcom/android/server/power/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 3010
    .local v1, "positive":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$14;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handlePsLightSensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/power/DisplayPowerController;->access$4800(Lcom/android/server/power/DisplayPowerController;JZ)V

    .line 3012
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_1
    return-void
.end method
