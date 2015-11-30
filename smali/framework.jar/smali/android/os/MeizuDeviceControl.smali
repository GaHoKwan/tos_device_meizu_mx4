.class public Landroid/os/MeizuDeviceControl;
.super Ljava/lang/Object;
.source "MeizuDeviceControl.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "Porting MeizuDeviceControl interface"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->MTK:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DEVCFG_ACCELERATION_SENSOR:I = 0x9

.field public static final DEVCFG_ACTIVATE_STATS:I = 0x5

.field public static final DEVCFG_BUTTON_LIGHT:I = 0x2

.field public static final DEVCFG_GRAVITY_SENSOR:I = 0x4

.field public static final DEVCFG_GYROSCOPE_SENSOR:I = 0xa

.field public static final DEVCFG_IR_CALIBRATE:I = 0x0

.field public static final DEVCFG_LIGHT_SENSOR:I = 0x3

.field public static final DEVCFG_MAINTAIN_STATE:I = 0x6

.field public static final DEVCFG_MAX_INT_FIELDS:I = 0x7

.field public static final DEVCFG_SHOPDEMO_TOOL:I = 0x8

.field public static final DEVCFG_TOUCH_SCREEN:I = 0x1

.field public static final EARPOD_ADJUST_CMD_UP_KEY_CALIBRATE:Ljava/lang/String; = "up_key_calibrate"

.field public static final EARPOD_ADJUST_STATE_COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final EARPOD_ADJUST_STATE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final EARPOD_ADJUST_STATE_PENDING:Ljava/lang/String; = "PENDING"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "MeizuDeviceControl"

    sput-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static adjustGravitySensor([I)I
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 195
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v1, "adjustGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_adjust_gravity_sensor([I)I

    move-result v0

    return v0
.end method

.method public static calibrateAcceAndGyroSensor()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 419
    invoke-static {v1}, Landroid/os/MeizuDeviceControl;->calibrateAccelerationAndGyroscopeSensor(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 420
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v2, "calibrateAcceleration failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return v0

    .line 423
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/MeizuDeviceControl;->calibrateAccelerationAndGyroscopeSensor(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 424
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v2, "calibrateGyroscope failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 427
    goto :goto_0
.end method

.method private static calibrateAccelerationAndGyroscopeSensor(I)I
    .locals 7
    .param p0, "cmd"    # I

    .prologue
    const/4 v3, -0x1

    .line 375
    const-string v1, "/sys/devices/14e30000.i2c/i2c-66/66-003a/input/input0/calibrator_cmd"

    .line 377
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/MeizuDeviceControl;->writeCalibrationData(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-wide/16 v4, 0x9c4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    const/4 v2, 0x0

    .line 384
    .local v2, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 385
    const-string v4, "6 0 0"

    invoke-static {v1, v4}, Landroid/os/MeizuDeviceControl;->writeCalibrationData(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :goto_2
    invoke-static {v1}, Landroid/os/MeizuDeviceControl;->readCalibrationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    sget-object v4, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sensor test "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v2, :cond_2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 402
    :cond_0
    if-eqz v2, :cond_3

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 415
    :cond_1
    :goto_3
    return v3

    .line 397
    :cond_2
    const-wide/16 v4, 0x190

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 384
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 1 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/MeizuDeviceControl;->writeCalibrationData(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {v1}, Landroid/os/MeizuDeviceControl;->readCalibrationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v2, p0}, Landroid/os/MeizuDeviceControl;->writeSensorCalibVals(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 412
    sget-object v3, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calibration return is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {v1, v2}, Landroid/os/MeizuDeviceControl;->writeCalibrationData(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v3, 0x0

    goto :goto_3

    .line 380
    .end local v0    # "i":I
    .end local v2    # "res":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 388
    .restart local v0    # "i":I
    .restart local v2    # "res":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_2

    .line 398
    :catch_2
    move-exception v4

    goto :goto_4
.end method

.method public static calibrateAccelerationSensor()I
    .locals 2

    .prologue
    .line 306
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateAccelerationSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_calibrate_acceleration_sensor()I

    move-result v0

    return v0
.end method

.method public static calibrateGp2ap()I
    .locals 2

    .prologue
    .line 235
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGp2ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_calibrate_gp2ap()I

    move-result v0

    return v0
.end method

.method public static calibrateGravitySensor()I
    .locals 2

    .prologue
    .line 208
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_calibrate_gravity_sensor()I

    move-result v0

    return v0
.end method

.method public static enableTouchAdjust()I
    .locals 2

    .prologue
    .line 181
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string v1, "enableTouchAdjust"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_enable_touch_adjust()I

    move-result v0

    return v0
.end method

.method private static native native_adjust_gravity_sensor([I)I
.end method

.method private static native native_calibrate_acceleration_sensor()I
.end method

.method private static native native_calibrate_gp2ap()I
.end method

.method private static native native_calibrate_gravity_sensor()I
.end method

.method private static native native_enable_touch_adjust()I
.end method

.method private static native native_read_acceleration_sensor_value([I)I
.end method

.method private static native native_read_auto_cabc()I
.end method

.method private static native native_read_calibration_data(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_read_cfgparam(I[I)I
.end method

.method private static native native_read_cpu_value()I
.end method

.method private static native native_read_earpod_adjust_state()I
.end method

.method private static native native_read_gp2ap()I
.end method

.method private static native native_read_gravity_value([I)I
.end method

.method private static native native_reset_calibration()I
.end method

.method private static native native_save_cpu_value(I)I
.end method

.method private static native native_set_auto_cabc(I)I
.end method

.method private static native native_set_hdmi_cable_status(I)I
.end method

.method private static native native_set_key_wakeup_type(I)I
.end method

.method private static native native_switch_usb_fast_charger(I)I
.end method

.method private static native native_update_led_brightness(I)I
.end method

.method private static native native_write_acceleration_sensor_value([I)I
.end method

.method private static native native_write_calibration_data(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native native_write_calibrator_cmd(Ljava/lang/String;)I
.end method

.method private static native native_write_cfgparam(I[I)I
.end method

.method private static native native_write_earpod_adjust_cmd(Ljava/lang/String;)I
.end method

.method private static native native_write_gp2ap(I)I
.end method

.method public static readAccelerationSensorCalibValue([I)I
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 314
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readAccelerationSensorCalibValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_read_acceleration_sensor_value([I)I

    move-result v0

    return v0
.end method

.method public static readAutoCabc()I
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_read_auto_cabc()I

    move-result v0

    .line 110
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readAutoCabc--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return v0
.end method

.method public static readCPUfreq()I
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_read_cpu_value()I

    move-result v0

    .line 68
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCPUfreq----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return v0
.end method

.method private static readCalibrationData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_read_calibration_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 442
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_0
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 444
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCalibrationData path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    return-object v0
.end method

.method public static readCfgParam(I[I)I
    .locals 4
    .param p0, "dev"    # I
    .param p1, "info"    # [I

    .prologue
    .line 165
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceControl;->native_read_cfgparam(I[I)I

    move-result v0

    .line 169
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 170
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev over:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    return v0
.end method

.method public static readEarpodAdjustState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_read_earpod_adjust_state()I

    move-result v0

    .line 460
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 466
    :pswitch_0
    const-string v1, "ERROR"

    :goto_0
    return-object v1

    .line 461
    :pswitch_1
    const-string v1, "ERROR"

    goto :goto_0

    .line 462
    :pswitch_2
    const-string v1, "PENDING"

    goto :goto_0

    .line 463
    :pswitch_3
    const-string v1, "COMPLETE"

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static readGp2apValue()I
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_read_gp2ap()I

    move-result v0

    .line 250
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readGp2apValue--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    return v0
.end method

.method public static readGravityValue([I)I
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 222
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readGravityValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_read_gravity_value([I)I

    move-result v0

    return v0
.end method

.method public static resetCalibration()I
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/MeizuDeviceControl;->native_reset_calibration()I

    move-result v0

    .line 83
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetCalibration----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return v0
.end method

.method public static saveCPUfreq(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 53
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCPUfreq----value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_save_cpu_value(I)I

    move-result v0

    return v0
.end method

.method public static saveKeyWakeupType(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 123
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveKeyWakeupType value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_set_key_wakeup_type(I)I

    move-result v0

    return v0
.end method

.method public static setAutoCabc(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 96
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoCabc--value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_set_auto_cabc(I)I

    move-result v0

    return v0
.end method

.method public static set_hdmi_cable_status(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 293
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_hdmi_cable_status value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_set_hdmi_cable_status(I)I

    move-result v0

    .line 297
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 298
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_hdmi_cable_status--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    return v0
.end method

.method public static switchUsbFastCharger(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 136
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUsbFastCharger value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_switch_usb_fast_charger(I)I

    move-result v0

    return v0
.end method

.method public static updateLedBrightness(I)I
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 282
    .local v1, "time":J
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_update_led_brightness(I)I

    move-result v0

    .line 283
    .local v0, "ret":I
    sget-boolean v3, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 284
    sget-object v3, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLedBrightness--value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "time cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return v0
.end method

.method public static writeAccelerationSensorCalibValue([I)I
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 322
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeAccelerationSensorCalibValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_write_acceleration_sensor_value([I)I

    move-result v0

    return v0
.end method

.method private static writeCalibrationData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 432
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 433
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeCalibrationData path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceControl;->native_write_calibration_data(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, "ret":I
    return v0
.end method

.method public static writeCalibratorCmd(Ljava/lang/String;)I
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeCalibratorCmd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_write_calibrator_cmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static writeCfgParam(I[I)I
    .locals 3
    .param p0, "dev"    # I
    .param p1, "info"    # [I

    .prologue
    .line 150
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCfgParam dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceControl;->native_write_cfgparam(I[I)I

    move-result v0

    return v0
.end method

.method public static writeEarpodAdjustCmd(Ljava/lang/String;)I
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 451
    sget-boolean v0, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "write earpod adjust cmd."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_write_earpod_adjust_cmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static writeGp2apValue(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 264
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 265
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceControl;->native_write_gp2ap(I)I

    move-result v0

    .line 268
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceControl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 269
    sget-object v1, Landroid/os/MeizuDeviceControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    return v0
.end method

.method private static writeSensorCalibVals(Ljava/lang/String;I)I
    .locals 12
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "cmd"    # I

    .prologue
    const/4 v9, 0x7

    .line 346
    const/16 v0, 0x1b

    .line 347
    .local v0, "counts":I
    new-array v1, v9, [I

    .line 349
    .local v1, "cvals":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 350
    const/4 v8, 0x0

    aput v8, v1, v2

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_0
    const/4 v6, 0x0

    .line 353
    .local v6, "start":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 354
    const-string v8, " "

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 355
    .local v5, "space":I
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "param":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 359
    .local v7, "val":I
    div-int/lit8 v8, v2, 0x4

    aget v9, v1, v8

    and-int/lit16 v10, v7, 0xff

    rem-int/lit8 v11, v2, 0x4

    rsub-int/lit8 v11, v11, 0x3

    mul-int/lit8 v11, v11, 0x8

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v1, v8

    .line 360
    add-int/lit8 v6, v5, 0x1

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "space":I
    .end local v7    # "val":I
    :cond_1
    if-nez p1, :cond_2

    .line 365
    const/16 v8, 0x9

    invoke-static {v8, v1}, Landroid/os/MeizuDeviceControl;->writeCfgParam(I[I)I

    move-result v4

    .line 371
    .local v4, "ret":I
    :goto_2
    return v4

    .line 366
    .end local v4    # "ret":I
    :cond_2
    const/4 v8, 0x2

    if-ne p1, v8, :cond_3

    .line 367
    const/16 v8, 0xa

    invoke-static {v8, v1}, Landroid/os/MeizuDeviceControl;->writeCfgParam(I[I)I

    move-result v4

    .restart local v4    # "ret":I
    goto :goto_2

    .line 369
    .end local v4    # "ret":I
    :cond_3
    const/4 v4, -0x1

    .restart local v4    # "ret":I
    goto :goto_2
.end method
