.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;,
        Lcom/android/server/power/DisplayPowerController$RampAnimatorController;,
        Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;,
        Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;,
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x1c2L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x1c2L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.4f

.field private static DEBUG:Z = false

.field public static final DEBUG_LIGHT_SENSOR:Z = false

.field public static final DEBUG_LIGHT_STRATEGY:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field public static final DEBUG_SCREEN:Z = true

.field public static final DEFAULT_AUTO_DALTA_SPLINE_DURATIONS:I = 0x960

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x64

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1f4L

.field public static final MSG_DOWN_BY_PERCENTS:I = 0x65

.field public static final MSG_LIGHT_SENSOR_CHANGED:I = 0x64

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SB_PROXIMITY_SENSOR_DEBOUNCED:I = 0x4

.field public static final MSG_UPDATE_LIGHT_SENSOR_POWER_STATE:I = 0x66

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field public static final P_SHUTDWON:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_STATE_DIM:I = 0x2

.field private static final SCREEN_STATE_OFF:I = 0x0

.field private static final SCREEN_STATE_ON:I = 0x1

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x64L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PowerManagerDisplayController"

.field public static final TRIGER_CHANGED_DEBOUNCE_TIME:I = 0x1c2

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z = false

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final mIsBlackDevice:Z

.field private static final mProximityWakeUpNode:Ljava/lang/String; = "/sys/class/meizu/ps/wakeup_enable"


# instance fields
.field public final DEBUG_LUX:Z

.field private mAmbientLux:F

.field private mAmbientLuxLastRealTime:F

.field private mAmbientLuxRealTime:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutoBrightnessValid:Z

.field private mBootCompleted:Z

.field private mBrighteningLuxThreshold:F

.field public mBrightnessSpline:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDaltaBrightness:[I

.field private mDaltaBrightnessDurations:[I

.field private mDaltaBrightnessDurationsSpline:Landroid/util/Spline;

.field private mDarkeningLuxThreshold:F

.field private mDebouceTimeBySettings:J

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private mDefaultLux:F

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mElectronBeam:Lcom/android/server/power/ElectronBeam;

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mLastEBoffTime:J

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mLsProximitySensor:I

.field private mLsProximitySensorEnabled:Z

.field private final mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mLuxLevels:[I

.field private mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnSbProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnSbProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

.field private mRampMode:I

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mSbPendingProximity:I

.field private mSbPendingProximityDebounceTime:J

.field private mSbProximity:I

.field private mSbProximitySensorEnabled:Z

.field private final mSbProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mSbScreenOffBecauseOfProximity:Z

.field private mSbScreenOnIsStart:Z

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessLevels:[I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShutDownFlag_D:Z

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUseSoftwareAutoDurationsConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mWaitingForNegativeProximity:Z

.field private mWakeUpRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 107
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 122
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 2236
    invoke-static {}, Landroid/os/BuildExt;->isBlackDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->mIsBlackDevice:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .locals 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "lights"    # Lcom/android/server/LightsService;
    .param p5, "twilight"    # Lcom/android/server/TwilightService;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p7, "displayManager"    # Lcom/android/server/display/DisplayManagerService;
    .param p8, "displaySuspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p9, "displayBlanker"    # Lcom/android/server/power/DisplayBlanker;
    .param p10, "callbacks"    # Lcom/android/server/power/DisplayPowerController$Callbacks;
    .param p11, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 312
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 315
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximity:I

    .line 318
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 319
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 322
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    .line 334
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOnIsStart:Z

    .line 386
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 389
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 416
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    .line 655
    new-instance v6, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 745
    new-instance v6, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnSbProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 759
    new-instance v6, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnSbProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 875
    new-instance v6, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1429
    new-instance v6, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1947
    new-instance v6, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1960
    new-instance v6, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1973
    new-instance v6, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 2148
    new-instance v6, Lcom/android/server/power/DisplayPowerController$11;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$11;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2168
    new-instance v6, Lcom/android/server/power/DisplayPowerController$12;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$12;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 2197
    new-instance v6, Lcom/android/server/power/DisplayPowerController$13;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$13;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 2226
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->DEBUG_LUX:Z

    .line 2235
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessSpline:I

    .line 2238
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    .line 2245
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxRealTime:F

    .line 2246
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxLastRealTime:F

    .line 2247
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    .line 2250
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    .line 2251
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    .line 2254
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mBootCompleted:Z

    .line 2255
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    .line 2257
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorEnabled:Z

    .line 3002
    new-instance v6, Lcom/android/server/power/DisplayPowerController$14;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$14;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 437
    new-instance v6, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v6, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 438
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 439
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 440
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 441
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 442
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 443
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 444
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v1, "filter":Landroid/content/IntentFilter;
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 447
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 448
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 449
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 451
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 453
    .local v3, "resources":Landroid/content/res/Resources;
    const v6, 0x10e002d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 456
    const v6, 0x10e002a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 460
    .local v5, "screenBrightnessMinimum":I
    const v6, 0x111001a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 462
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_2

    .line 463
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->mIsBlackDevice:Z

    if-eqz v6, :cond_6

    const v6, 0x1070020

    :goto_0
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 467
    .local v2, "lux":[I
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->mIsBlackDevice:Z

    if-eqz v6, :cond_7

    const v6, 0x1070022

    :goto_1
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 472
    .local v4, "screenBrightness":[I
    invoke-static {v2, v4}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 473
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v6, :cond_8

    .line 474
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "must be monotic and have exactly one more entry than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "config_autoBrightnessLevels (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "which must be strictly increasing.  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Auto-brightness will be disabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 490
    :cond_0
    :goto_2
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->mIsBlackDevice:Z

    if-eqz v6, :cond_9

    const v6, 0x1070020

    :goto_3
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLuxLevels:[I

    .line 494
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->mIsBlackDevice:Z

    if-eqz v6, :cond_a

    const v6, 0x1070022

    :goto_4
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    .line 499
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aget v8, v8, v9

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 501
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Init mScreenAutoBrightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->readFromConfig()V

    .line 513
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initDurationsSpline()V

    .line 516
    const v6, 0x10e002e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 520
    .end local v2    # "lux":[I
    .end local v4    # "screenBrightness":[I
    :cond_2
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 524
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v6

    mul-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 527
    const v6, 0x111001d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 531
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 532
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_3

    .line 533
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 538
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_4

    .line 540
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 543
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v6, :cond_5

    .line 544
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 547
    :cond_5
    const-string v6, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 560
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 561
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 566
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initLsProximitySensorObserver()V

    .line 568
    return-void

    .line 463
    :cond_6
    const v6, 0x107001f

    goto/16 :goto_0

    .line 467
    .restart local v2    # "lux":[I
    :cond_7
    const v6, 0x1070021

    goto/16 :goto_1

    .line 482
    .restart local v4    # "screenBrightness":[I
    :cond_8
    const/4 v6, 0x0

    aget v6, v4, v6

    if-ge v6, v5, :cond_0

    .line 483
    const/4 v6, 0x0

    aget v5, v4, v6

    goto/16 :goto_2

    .line 490
    :cond_9
    const v6, 0x107001f

    goto/16 :goto_3

    .line 494
    :cond_a
    const v6, 0x1070021

    goto/16 :goto_4
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceSbProximitySensor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->lightSensorChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleUpdateLightSensorPowerState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/power/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/DisplayPowerController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/DisplayPowerController;)Landroid/util/Spline;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurationsSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/DisplayPowerController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/power/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleSbProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/DisplayPowerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handlePsLightSensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleLsPriximitySensorLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method private adjustScreenBrightnessByUserPrefer(IFIF)I
    .locals 18
    .param p1, "pb"    # I
    .param p2, "plux"    # F
    .param p3, "cb"    # I
    .param p4, "clux"    # F

    .prologue
    .line 2893
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->getLuxLevel(F)I

    move-result v3

    .line 2894
    .local v3, "curLevel":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->getLuxLevel(F)I

    move-result v10

    .line 2895
    .local v10, "preLevel":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/DisplayPowerController;->daltaLevelBrightness2Max(I)I

    move-result v4

    .line 2896
    .local v4, "daltaMaxBn":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/DisplayPowerController;->daltaLevelBrightness2Min(I)I

    move-result v6

    .line 2897
    .local v6, "daltaMinBn":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->daltaLevelLux2Max(F)I

    move-result v5

    .line 2898
    .local v5, "daltaMaxLux":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->daltaLevelLux2Min(F)I

    move-result v7

    .line 2899
    .local v7, "daltaMinLux":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->totalLuxLevelLength()I

    move-result v15

    .line 2900
    .local v15, "totalLuxLevel":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->totalBrightnessLevelLength()I

    move-result v14

    .line 2901
    .local v14, "totalBrightLevel":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(I)I

    move-result v9

    .line 2907
    .local v9, "preBnLevel":I
    const/4 v2, 0x0

    .line 2908
    .local v2, "bl":I
    const/4 v12, 0x0

    .line 2909
    .local v12, "steps":I
    cmpl-float v16, p4, p2

    if-ltz v16, :cond_0

    .line 2910
    sub-int v16, v3, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v16, v16, v17

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 2911
    add-int v16, v9, v12

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2922
    :goto_0
    if-nez v12, :cond_1

    .line 2943
    .end local p1    # "pb":I
    :goto_1
    return p1

    .line 2914
    .restart local p1    # "pb":I
    :cond_0
    sub-int v16, v10, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v16, v16, v17

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 2915
    sub-int v16, v9, v12

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 2927
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/DisplayPowerController;->preferDaltaLevels(IF)I

    move-result v11

    .line 2928
    .local v11, "prferDaltaLevels":I
    if-gtz v11, :cond_3

    .line 2943
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    move-object/from16 v16, v0

    aget p1, v16, v2

    goto :goto_1

    .line 2931
    :cond_3
    cmpl-float v16, p4, p2

    if-gez v16, :cond_2

    .line 2935
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    sget-boolean v16, Lcom/android/server/power/DisplayPowerController;->mIsBlackDevice:Z

    if-eqz v16, :cond_4

    const/16 v16, 0x4

    :goto_2
    mul-int v8, v17, v16

    .line 2937
    .local v8, "incBn":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    move-object/from16 v16, v0

    aget v16, v16, v2

    add-int v16, v16, v8

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .local v13, "target":I
    move/from16 p1, v13

    .line 2939
    goto :goto_1

    .line 2935
    .end local v8    # "incBn":I
    .end local v13    # "target":I
    :cond_4
    const/16 v16, 0x6

    goto :goto_2
.end method

.method private animateScreenBrightness(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 1421
    invoke-static {p1}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenBrightness(I)V

    .line 1424
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 1427
    :cond_0
    return-void
.end method

.method private animateScreenBrightness(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2262
    invoke-static {p1}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenBrightness(I)V

    .line 2269
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightness(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 2274
    :cond_0
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 1582
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1583
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1584
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1585
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1595
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1596
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1597
    return-void

    .line 1587
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 1588
    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x64

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1590
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 1338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1339
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1340
    const-string v0, "PowerManagerDisplayController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1344
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1399
    if-gt p0, p1, :cond_0

    .line 1405
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 1402
    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 1403
    goto :goto_0

    :cond_1
    move p1, p0

    .line 1405
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1394
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1385
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1520
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1521
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1522
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1524
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 572
    :try_start_0
    array-length v2, p1

    .line 573
    .local v2, "n":I
    new-array v5, v2, [F

    .line 574
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 575
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 576
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 577
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 578
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 582
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 583
    const-string v7, "PowerManagerDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 585
    const-string v7, "PowerManagerDisplayController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    mul-float/2addr v4, v12

    goto :goto_1

    .line 589
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "PowerManagerDisplayController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private createAutoDurationsSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p1, "dalta"    # [I
    .param p2, "duration"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 2800
    :try_start_0
    array-length v2, p2

    .line 2801
    .local v2, "n":I
    new-array v5, v2, [F

    .line 2802
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 2803
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p2, v8

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteDurations(I)F

    move-result v8

    aput v8, v6, v7

    .line 2804
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2805
    add-int/lit8 v7, v1, -0x1

    aget v7, p1, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 2806
    aget v7, p2, v1

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteDurations(I)F

    move-result v7

    aput v7, v6, v1

    .line 2804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2809
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 2810
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 2811
    const-string v7, "PowerManagerDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-duantions spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget v7, p1, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 2813
    const-string v7, "PowerManagerDisplayController"

    const-string v8, "Auto-duantions spline:  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2812
    mul-float/2addr v4, v12

    goto :goto_1

    .line 2817
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 2818
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "PowerManagerDisplayController"

    const-string v8, "Auto-duantions spline: Could not create auto-duantions spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2819
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private daltaLevelBrightness2Max(I)I
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 2981
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->totalBrightnessLevelLength()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private daltaLevelBrightness2Min(I)I
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 2989
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(I)I

    move-result v0

    return v0
.end method

.method private daltaLevelLux2Max(F)I
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 2977
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->totalLuxLevelLength()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getLuxLevel(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private daltaLevelLux2Min(F)I
    .locals 1
    .param p1, "lux"    # F

    .prologue
    .line 2985
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getLuxLevel(F)I

    move-result v0

    return v0
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 1785
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1787
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1788
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1789
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1794
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1796
    .end local v0    # "time":J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 7

    .prologue
    .line 1496
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1500
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 1502
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1504
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debounceProximitySensor P-sensor mProximity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPendingProximity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    .line 1508
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1517
    .end local v1    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1512
    .restart local v1    # "now":J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1513
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1514
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private debounceSbProximitySensor()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 706
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 708
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_5

    .line 709
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximity:I

    .line 711
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_2

    .line 712
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 713
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSbProximity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximity:I

    if-ne v3, v6, :cond_3

    .line 717
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOffBecauseOfProximity:Z

    .line 718
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnSbProximityPositive()V

    .line 719
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v3, :cond_1

    .line 720
    :cond_1
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "Turn Off screen becaue of P-sensor closing in smart book mode."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v1    # "now":J
    :cond_2
    :goto_0
    return-void

    .line 722
    .restart local v1    # "now":J
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOffBecauseOfProximity:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximity:I

    if-nez v3, :cond_2

    .line 723
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOffBecauseOfProximity:Z

    .line 724
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnSbProximityNegative()V

    .line 725
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v3, :cond_4

    .line 726
    :cond_4
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "Turn On screen becaue of P-sensor away in smart book mode."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 733
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private disableProximityWakeUp()V
    .locals 2

    .prologue
    .line 3135
    const-string v0, "/sys/class/meizu/ps/wakeup_enable"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->writeProximityWakeUpEnable(Ljava/lang/String;I)V

    .line 3136
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2012
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2013
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Frank@{\n mRampMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoDurationsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoDurationsConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDaltaBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightness:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDaltaBrightnessDurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessSpline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebouceTimeBySettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWakeUpRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxLastRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxLastRealTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxRealTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDefaultLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLsProximitySensor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Frank@}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 2070
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2072
    :cond_2
    return-void
.end method

.method private enableProximityWakeUp()V
    .locals 2

    .prologue
    .line 3132
    const-string v0, "/sys/class/meizu/ps/wakeup_enable"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->writeProximityWakeUpEnable(Ljava/lang/String;I)V

    .line 3133
    return-void
.end method

.method private getBrightnessLevel(I)I
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 2967
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->totalBrightnessLevelLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 2968
    .local v1, "l":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 2969
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_0

    .line 2973
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 2968
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2973
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getBrightnessSpline()I
    .locals 2

    .prologue
    .line 2281
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->isMeizuProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2282
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    const-string v1, " Meizu screen return 8"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_0
    const/16 v0, 0x8

    .line 2286
    :goto_0
    return v0

    .line 2285
    :cond_1
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "PowerManagerDisplayController"

    const-string v1, " NOT Meizu screen return 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLuxLevel(F)I
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 2958
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->totalLuxLevelLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 2959
    .local v1, "l":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 2960
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLuxLevels:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 2964
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 2959
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2964
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1920
    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1935
    :cond_1
    :goto_0
    return v0

    .line 1925
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1926
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1930
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1931
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v6, 0x3

    .line 1558
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1559
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    const-wide/16 v4, 0x1c2

    add-long v0, v2, v4

    .line 1560
    .local v0, "debounceSettings":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1561
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    sub-long v3, v0, p1

    invoke-virtual {v2, v6, v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1563
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxRealTime:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxLastRealTime:F

    .line 1564
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxRealTime:F

    .line 1571
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1578
    :goto_0
    return-void

    .line 1576
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1577
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_0
.end method

.method private handleLsPriximitySensorLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3064
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3066
    .local v0, "autoMode":I
    const-string v1, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LightSensor P-Sensor autoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    if-ne v0, v4, :cond_0

    .line 3069
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setLsProximitySensorEnabled(Z)V

    .line 3074
    :goto_0
    return-void

    .line 3072
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/power/DisplayPowerController;->setLsProximitySensorEnabled(Z)V

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 1465
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProximitySensorEvent mPendingProximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " positive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1469
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v3, :cond_2

    if-nez p3, :cond_0

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1480
    if-eqz p3, :cond_3

    .line 1481
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1482
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1491
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1485
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1486
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private handlePsLightSensorEvent(JZ)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3019
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v0, :cond_0

    .line 3020
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_1

    .line 3021
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSensor P-Sensor auto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_2

    .line 3025
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    .line 3041
    :cond_2
    :goto_0
    return-void

    .line 3028
    :cond_3
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    if-ne v0, v3, :cond_4

    if-nez p3, :cond_2

    .line 3031
    :cond_4
    if-eqz p3, :cond_5

    .line 3032
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    .line 3034
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->stopAutoAnimation()V

    goto :goto_0

    .line 3036
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    .line 3038
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->startAutoAnimation()V

    goto :goto_0
.end method

.method private handleSbProximitySensorEvent(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 679
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 689
    if-eqz p3, :cond_4

    .line 690
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    .line 691
    add-long v0, p1, v3

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximityDebounceTime:J

    .line 696
    :goto_1
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 697
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSbPendingProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceSbProximitySensor()V

    goto :goto_0

    .line 693
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    .line 694
    add-long v0, p1, v3

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximityDebounceTime:J

    goto :goto_1
.end method

.method private handleUpdateLightSensorPowerState()V
    .locals 2

    .prologue
    .line 2845
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2846
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-eqz v0, :cond_0

    .line 2847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    .line 2848
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    .line 2850
    :cond_0
    monitor-exit v1

    .line 2851
    return-void

    .line 2850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initDurationsSpline()V
    .locals 3

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightness:[I

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->createAutoDurationsSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurationsSpline:Landroid/util/Spline;

    .line 2785
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurationsSpline:Landroid/util/Spline;

    if-nez v0, :cond_0

    .line 2786
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in config.xml.  config_autoDaltaBrightnessDurations (size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "must be monotic and have exactly one more entry than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config_autoDaltaBrightness (size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightness:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "which must be strictly decreasing.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Auto-durations will be disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoDurationsConfig:Z

    .line 2796
    :goto_0
    return-void

    .line 2794
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoDurationsConfig:Z

    goto :goto_0
.end method

.method private initLsProximitySensorObserver()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3095
    const-string v2, "PowerManagerDisplayController"

    const-string v3, " LightSensor P-Sensor  init ..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3097
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/DisplayPowerController$AutoLightSenrorObserver;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3101
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3103
    .local v0, "autoMode":I
    if-ne v0, v6, :cond_0

    .line 3105
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setLsProximitySensorEnabled(Z)V

    .line 3107
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v5, 0x2

    .line 847
    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 851
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 853
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 854
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 858
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 859
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 870
    new-instance v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;-><init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .line 871
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->initAnimatorListener()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V

    .line 873
    return-void

    .line 851
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 856
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isAmbientLuxValid()Z
    .locals 2

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMeizuProduct()Z
    .locals 2

    .prologue
    .line 2277
    const-string v0, "Meizu"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 1939
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private lightSensorChanged()V
    .locals 1

    .prologue
    .line 2840
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 2841
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    invoke-interface {v0}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onLuxChanged()V

    .line 2842
    return-void
.end method

.method private static native nativeSetAALMode(I)V
.end method

.method private static native nativeSetLightSensorValue(I)V
.end method

.method private static native nativeSetScreenBrightness(I)V
.end method

.method private static native nativeSetScreenState(II)V
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1414
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private normalizeAbsoluteDurations(I)F
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 2824
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private preferDaltaLevels(IF)I
    .locals 2
    .param p1, "pb"    # I
    .param p2, "plux"    # F

    .prologue
    .line 2949
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/power/DisplayPowerController;->getLuxLevel(F)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 2075
    packed-switch p0, :pswitch_data_0

    .line 2083
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2077
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 2079
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 2081
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 2075
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readFromConfig()V
    .locals 2

    .prologue
    .line 2773
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2774
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightness:[I

    .line 2776
    const v1, 0x1070024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I

    .line 2778
    const v1, 0x10e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingDefault:I

    .line 2779
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mBootCompleted:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingDefault:I

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 2780
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/DisplayPowerController;->getDefaultAmbientLux()F

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mDefaultLux:F

    .line 2781
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1970
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1971
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1957
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1958
    return-void
.end method

.method private sendOnSbProximityNegative()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnSbProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 757
    return-void
.end method

.method private sendOnSbProximityPositive()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnSbProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1944
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1945
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

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

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 838
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 839
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 840
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 841
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 842
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 1602
    float-to-int v0, p1

    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetLightSensorValue(I)V

    .line 1606
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1607
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    .line 1608
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    .line 1609
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "updateAutoBrightness"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1534
    if-eqz p1, :cond_2

    .line 1535
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1536
    const/4 p2, 0x1

    .line 1537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1539
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x186a0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1551
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1552
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1554
    :cond_1
    return-void

    .line 1543
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1544
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1545
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1546
    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1547
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1548
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setLsProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 3076
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LightSensor P-Sensor enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLsProximitySensorEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_0
    if-eqz p1, :cond_2

    .line 3078
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 3081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorEnabled:Z

    .line 3082
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3093
    :cond_1
    :goto_0
    return-void

    .line 3085
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 3088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorEnabled:Z

    .line 3089
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    .line 3090
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .prologue
    .line 1527
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1530
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1531
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1437
    if-eqz p1, :cond_1

    .line 1438
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1442
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1445
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->enableProximityWakeUp()V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1452
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1453
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1454
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1456
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1458
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximityWakeUp()V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1357
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    if-ne v0, p1, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 1359
    if-eqz p1, :cond_3

    .line 1360
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 1367
    :goto_1
    if-eqz p1, :cond_4

    .line 1368
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenState(II)V

    .line 1378
    :cond_0
    :goto_2
    if-nez p1, :cond_1

    .line 1379
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->stopAutoAnimation()V

    .line 1382
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1357
    goto :goto_0

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_1

    .line 1370
    :cond_4
    invoke-static {v2, v2}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenState(II)V

    goto :goto_2
.end method

.method private startAutoAnimation()V
    .locals 2

    .prologue
    .line 3049
    const-string v0, "PowerManagerDisplayController"

    const-string v1, "LightSensor P-Sensor: startAutoAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 3051
    return-void
.end method

.method private stopAutoAnimation()V
    .locals 3

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isAnimating()Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3044
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSensor P-Sensor: stopAutoAnimation now... mRampMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->stopAnimation(ZI)Z

    .line 3047
    :cond_0
    return-void
.end method

.method private totalBrightnessLevelLength()I
    .locals 1

    .prologue
    .line 2955
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->totalLuxLevelLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private totalLuxLevelLength()I
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLuxLevels:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 1347
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_0

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1349
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1350
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblocked screen on after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 10
    .param p1, "time"    # J

    .prologue
    .line 1614
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v6, :cond_7

    .line 1615
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    add-long v4, v6, v8

    .line 1617
    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    .line 1618
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1782
    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_0
    :goto_0
    return-void

    .line 1627
    .restart local v4    # "timeWhenSensorWarmedUp":J
    :cond_1
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1633
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1634
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1635
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1641
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    const-wide/16 v8, 0x1c2

    add-long v0, v6, v8

    .line 1642
    .local v0, "debounceSettings":J
    cmp-long v6, p1, v0

    if-gez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-nez v6, :cond_3

    .line 1643
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Send debounce msg when light sensor inits, time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", debounceSettings = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1650
    :cond_3
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1651
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_4
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1777
    .end local v0    # "debounceSettings":J
    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_5
    :goto_1
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 1779
    :cond_6
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    const-wide/16 v8, 0xc8

    add-long/2addr v8, p1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1657
    :cond_7
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    .line 1660
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v6, :cond_8

    .line 1661
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1662
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1663
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 1664
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Possibly brightened, waiting for 450 ms: mBrighteningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_8
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v8, 0x1c2

    add-long v2, v6, v8

    .line 1673
    .local v2, "debounceTime":J
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mDebounceLuxTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", debounceTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_9
    cmp-long v6, p1, v2

    if-gez v6, :cond_b

    .line 1675
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "PowerManagerDisplayController"

    const-string v7, "updateAmbientLux: Send debounce msg when Possibly brightened"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_a
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1684
    :cond_b
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    const-wide/16 v8, 0x1c2

    add-long v0, v6, v8

    .line 1685
    .restart local v0    # "debounceSettings":J
    cmp-long v6, p1, v0

    if-gez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-nez v6, :cond_d

    .line 1686
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Possibly brightened, time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", debounceSettings = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", send debounce msg when light sensor been opened just now"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1694
    :cond_d
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1696
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_e

    .line 1697
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Brightened: mBrighteningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_e
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1704
    .end local v0    # "debounceSettings":J
    .end local v2    # "debounceTime":J
    :cond_f
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_17

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_17

    .line 1707
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v6, :cond_10

    .line 1708
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1709
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1710
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_10

    .line 1711
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Possibly darkened, waiting for 450 ms: mDarkeningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_10
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v8, 0x1c2

    add-long v2, v6, v8

    .line 1720
    .restart local v2    # "debounceTime":J
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_11

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mDebounceLuxTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", debounceTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_11
    cmp-long v6, p1, v2

    if-gez v6, :cond_13

    .line 1722
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_12

    const-string v6, "PowerManagerDisplayController"

    const-string v7, "updateAmbientLux: Send debounce msg when Possibly darkened"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_12
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1731
    :cond_13
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    const-wide/16 v8, 0x1c2

    add-long v0, v6, v8

    .line 1732
    .restart local v0    # "debounceSettings":J
    cmp-long v6, p1, v0

    if-gez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-nez v6, :cond_15

    .line 1733
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_14

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Possibly darkened,, time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", debounceSettings = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", send debounce msg when light sensor been opened just now"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_14
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1743
    :cond_15
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1746
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_16

    .line 1747
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Darkened: mDarkeningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_16
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1754
    .end local v0    # "debounceSettings":J
    .end local v2    # "debounceTime":J
    :cond_17
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v6, :cond_5

    .line 1756
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1757
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1758
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_18

    .line 1759
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Canceled debounce: mBrighteningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDarkeningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_18
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mDebounceLuxTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateAutoBrightness(Z)V
    .locals 18
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 1799
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v3, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1806
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "updateAutoBrightness: cancel update because of mLsProximitySensor P-sensor positive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1813
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v3, :cond_0

    .line 1817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v17

    .line 1818
    .local v17, "value":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1822
    .local v10, "gamma":F
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 1824
    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    .line 1827
    .local v7, "adjGamma":F
    mul-float/2addr v10, v7

    .line 1828
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1829
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: adjGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    .end local v7    # "adjGamma":F
    :cond_3
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v3, :cond_4

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v16

    .line 1835
    .local v16, "state":Lcom/android/server/TwilightService$TwilightState;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1837
    .local v1, "now":J
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v9

    .line 1839
    .local v9, "earlyGamma":F
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v12

    .line 1841
    .local v12, "lateGamma":F
    mul-float v3, v9, v12

    mul-float/2addr v10, v3

    .line 1842
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 1843
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lateGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    .end local v1    # "now":J
    .end local v9    # "earlyGamma":F
    .end local v12    # "lateGamma":F
    .end local v16    # "state":Lcom/android/server/TwilightService$TwilightState;
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_5

    .line 1850
    move/from16 v11, v17

    .line 1851
    .local v11, "in":F
    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/util/FloatMath;->pow(FF)F

    move-result v17

    .line 1852
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1853
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: gamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", out="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    .end local v11    # "in":F
    :cond_5
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v13

    .line 1872
    .local v13, "newScreenAutoBrightness":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-eqz v3, :cond_b

    .line 1873
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefer_screen_brightness"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingDefault:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1875
    .local v15, "prfValue":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefer_screen_lux"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mDefaultLux:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v14

    .line 1876
    .local v14, "prfLux":F
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1877
    .local v8, "b":I
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: get to settings brightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prfLux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current spline brightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDefaultLux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mDefaultLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenBrightnessSettingDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v8, v3}, Lcom/android/server/power/DisplayPowerController;->adjustScreenBrightnessByUserPrefer(IFIF)I

    move-result v3

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v4

    mul-int v13, v3, v4

    .line 1881
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    .line 1891
    .end local v8    # "b":I
    .end local v14    # "prfLux":F
    .end local v15    # "prfValue":I
    :goto_1
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v3, :cond_7

    .line 1892
    :cond_7
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ne v3, v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    if-eqz v3, :cond_0

    .line 1899
    :cond_8
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1900
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1911
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-eqz v3, :cond_0

    .line 1912
    :cond_a
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "updateAutoBrightness: Real upate now"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0

    .line 1884
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v4

    mul-int v13, v3, v4

    goto :goto_1
.end method

.method private updateNativeAALFunction(Lcom/android/server/power/DisplayPowerRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/server/power/DisplayPowerRequest;

    .prologue
    const/4 v3, 0x2

    .line 1309
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1310
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNativeAALFunction: AALFunction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/power/DisplayPowerRequest;->AALFunction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->AALFunction:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 1318
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetAALMode(I)V

    .line 1326
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->AALFunction:I

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1

    .line 1328
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_4

    .line 1329
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetLightSensorValue(I)V

    .line 1334
    :cond_1
    :goto_1
    return-void

    .line 1319
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->AALFunction:I

    if-ne v0, v3, :cond_3

    .line 1320
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->nativeSetAALMode(I)V

    goto :goto_0

    .line 1324
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->AALFunction:I

    shl-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetAALMode(I)V

    goto :goto_0

    .line 1331
    :cond_4
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetLightSensorValue(I)V

    goto :goto_1
.end method

.method private updatePowerState()V
    .locals 14

    .prologue
    .line 894
    const/4 v3, 0x0

    .line 895
    .local v3, "mustInitialize":Z
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 896
    .local v8, "updateAutoBrightness":Z
    const/4 v9, 0x0

    .line 897
    .local v9, "wasDim":Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 899
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->isSmartBookPluggedIn()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 900
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 901
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: Smartbook plug in, bypass updatePowerState in DisplayPowerController"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 906
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 907
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v10, :cond_2

    .line 908
    monitor-exit v11

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 911
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v10, :cond_17

    .line 912
    new-instance v10, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v10, v12}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 913
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 914
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 915
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 916
    const/4 v3, 0x1

    .line 930
    :cond_3
    :goto_1
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v10, :cond_1a

    const/4 v4, 0x1

    .line 931
    .local v4, "mustNotify":Z
    :goto_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    if-eqz v3, :cond_5

    .line 935
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 936
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: initialize."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 942
    :cond_5
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v10, :cond_23

    .line 943
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_6

    .line 944
    const-string v10, "PowerManagerDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePowerState: mProximity = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mWaitingForNegativeProximity = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mScreenOffBecauseOfProximity = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPowerRequest.useProximitySensor = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v12, v12, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPowerRequest.forceProximitySensorEnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v12, v12, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPowerRequest.forceWakeUpEnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v12, v12, Lcom/android/server/power/DisplayPowerRequest;->forceWakeUpEnable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_6
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v10, :cond_1f

    .line 952
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v10, :cond_1b

    .line 953
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 954
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->forceWakeUpEnable:Z

    if-nez v10, :cond_8

    .line 955
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v10, :cond_8

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 957
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 958
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 959
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_7

    .line 960
    :cond_7
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: setScreenOn false becaue of P-sensor"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 999
    :cond_8
    :goto_3
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a

    .line 1001
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_9

    .line 1002
    :cond_9
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: set mScreenOffBecauseOfProximity: false"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1005
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 1012
    :cond_a
    :goto_4
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v10, :cond_c

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mBootCompleted:Z

    if-eqz v10, :cond_c

    .line 1020
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v1, v10, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 1021
    .local v1, "enableLightSensor":Z
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->AALFunction:I

    and-int/lit8 v10, v10, 0x5

    if-eqz v10, :cond_b

    .line 1022
    const/4 v1, 0x1

    .line 1023
    :cond_b
    if-eqz v1, :cond_24

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v10}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v10, 0x1

    :goto_5
    invoke-direct {p0, v10, v8}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 1027
    .end local v1    # "enableLightSensor":Z
    :cond_c
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->updateNativeAALFunction(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 1028
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string v11, "PowerManagerDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePowerState: wantScreenOn = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v12}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", isScreenDim = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v13, 0x1

    if-ne v10, v13, :cond_25

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_d
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v11}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->updateWantsScreenOn(Z)V

    .line 1038
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v10}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 1047
    const/4 v2, 0x0

    .line 1050
    .local v2, "mode":I
    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v10, :cond_2b

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v10, :cond_2b

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v10, :cond_2b

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    if-nez v10, :cond_e

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-eqz v10, :cond_2b

    .line 1062
    :cond_e
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    invoke-virtual {v10}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->getOldScreenState()I

    move-result v5

    .line 1063
    .local v5, "oldState":I
    const/4 v10, 0x1

    if-ne v5, v10, :cond_26

    .line 1064
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v10, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 1087
    .local v7, "target":I
    :goto_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 1094
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-eqz v10, :cond_2a

    .line 1095
    const/4 v6, 0x0

    .line 1099
    .local v6, "slow":Z
    :goto_8
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    .line 1119
    .end local v5    # "oldState":I
    :goto_9
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2c

    .line 1121
    add-int/lit8 v10, v7, -0xa

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1123
    const/4 v6, 0x0

    .line 1129
    const-string v10, "PowerManagerDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePowerState: dim_config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dim = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->getCurBrightness()I
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v0

    .line 1131
    .local v0, "curBrightness":I
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v11

    mul-int/2addr v10, v11

    if-le v0, v10, :cond_f

    .line 1133
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/lit8 v10, v10, -0x8

    add-int/lit8 v11, v0, -0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v11

    mul-int v7, v10, v11

    .line 1134
    const-string v10, "PowerManagerDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePowerState: dim target= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_f
    const/4 v2, 0x0

    .line 1139
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->updateScreenState(I)V

    .line 1143
    const/4 v10, 0x2

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenState(II)V

    .line 1169
    .end local v0    # "curBrightness":I
    :cond_10
    :goto_a
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    if-eqz v6, :cond_2d

    const/16 v10, 0x28

    :goto_b
    invoke-direct {p0, v11, v10, v2}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(III)V

    .line 1187
    .end local v2    # "mode":I
    .end local v6    # "slow":Z
    .end local v7    # "target":I
    :goto_c
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->forceWakeUpEnable:Z

    if-eqz v10, :cond_14

    .line 1188
    :cond_11
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v10}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1193
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-nez v10, :cond_14

    .line 1197
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1199
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_12

    .line 1200
    :cond_12
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: setScreenOn true"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOnIsStart:Z

    .line 1205
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v10, :cond_30

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_30

    .line 1207
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 1208
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_13

    .line 1209
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: mPowerState.updateElectronBeam"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_13
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/power/DisplayPowerState;->updateElectronBeam()V

    .line 1268
    :cond_14
    :goto_d
    const-string v10, "PowerManagerDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePowerState: mustNotify="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mScreenOnWasBlocked="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mElectronBeamOnAnimator="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mElectronBeamOffAnimator="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", waitUntilClean="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v13, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->buttonBrightness:I

    invoke-virtual {v10, v11}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1277
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_15

    const-string v10, "PowerManagerDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " setBrightness mPendingRequestLocked.buttonBrightness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->buttonBrightness:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_15
    if-eqz v4, :cond_0

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1288
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1289
    :try_start_2
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v10, :cond_16

    .line 1290
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1292
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_16

    .line 1293
    const-string v10, "PowerManagerDisplayController"

    const-string v12, "updatePowerState: Display ready!"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_16
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1297
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto/16 :goto_0

    .line 917
    .end local v4    # "mustNotify":Z
    :cond_17
    :try_start_3
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v10, :cond_3

    .line 918
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_18

    .line 920
    const/4 v8, 0x1

    .line 922
    :cond_18
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_19

    const/4 v9, 0x1

    .line 923
    :goto_e
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v10, v12}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 924
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v10, v12

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 925
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 926
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 927
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 922
    :cond_19
    const/4 v9, 0x0

    goto :goto_e

    .line 930
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 965
    .restart local v4    # "mustNotify":Z
    :cond_1b
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v10, :cond_1d

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    .line 967
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_1c

    .line 968
    :cond_1c
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: enable P-sensor and wait for P-sensor negative"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    .line 971
    :cond_1d
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    if-eqz v10, :cond_8

    .line 972
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_1e

    .line 973
    :cond_1e
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: force enable P-sensor for talking screen off timeout"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 976
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v10, :cond_8

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 978
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    goto/16 :goto_3

    .line 983
    :cond_1f
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v10, :cond_21

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v10, :cond_21

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_21

    .line 986
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_20

    .line 987
    :cond_20
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: proximity wakelock released but still enable P-sensor and wait for P-sensor negative"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    .line 991
    :cond_21
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_22

    .line 992
    :cond_22
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: proximity wakelock released and disable P-sensor"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 995
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 1008
    :cond_23
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    .line 1023
    .restart local v1    # "enableLightSensor":Z
    :cond_24
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1028
    .end local v1    # "enableLightSensor":Z
    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1066
    .restart local v2    # "mode":I
    .restart local v5    # "oldState":I
    :cond_26
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    if-eqz v10, :cond_28

    .line 1067
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    if-eqz v10, :cond_27

    .line 1068
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1069
    .restart local v7    # "target":I
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v11, 0x66

    invoke-virtual {v10, v11}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    goto/16 :goto_7

    .line 1073
    .end local v7    # "target":I
    :cond_27
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v11, 0x66

    const-wide/16 v12, 0x1c2

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1077
    :cond_28
    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    if-eqz v10, :cond_29

    .line 1078
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .restart local v7    # "target":I
    goto/16 :goto_7

    .line 1081
    .end local v7    # "target":I
    :cond_29
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v10, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .restart local v7    # "target":I
    goto/16 :goto_7

    .line 1097
    :cond_2a
    const/4 v6, 0x1

    .restart local v6    # "slow":Z
    goto/16 :goto_8

    .line 1108
    .end local v5    # "oldState":I
    .end local v6    # "slow":Z
    .end local v7    # "target":I
    :cond_2b
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v10, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 1109
    .restart local v7    # "target":I
    const/4 v6, 0x0

    .line 1110
    .restart local v6    # "slow":Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 1115
    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    goto/16 :goto_9

    .line 1146
    :cond_2c
    if-eqz v9, :cond_10

    .line 1148
    const/4 v6, 0x0

    .line 1152
    const/4 v2, 0x0

    .line 1157
    const/4 v10, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenState(II)V

    goto/16 :goto_a

    .line 1169
    :cond_2d
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v10

    mul-int/lit16 v10, v10, 0xc8

    div-int/lit8 v10, v10, 0x2

    goto/16 :goto_b

    .line 1176
    .end local v2    # "mode":I
    .end local v6    # "slow":Z
    .end local v7    # "target":I
    :cond_2e
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isAnimating()Z
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1177
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->stopAnimation(ZI)Z

    .line 1179
    :cond_2f
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->goToSleep()V
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$1000(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V

    .line 1183
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_c

    .line 1213
    :cond_30
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 1231
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 1232
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: dismissElectronBeam"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 1234
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOnIsStart:Z

    goto/16 :goto_d

    .line 1241
    :cond_31
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-nez v10, :cond_14

    .line 1242
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-nez v10, :cond_14

    .line 1243
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_32

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    if-eqz v10, :cond_34

    .line 1244
    :cond_32
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1245
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    .line 1246
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v10, :cond_33

    .line 1247
    :cond_33
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: setScreenOn false"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_d

    .line 1252
    :cond_34
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v10, :cond_35

    const/4 v10, 0x2

    :goto_f
    invoke-virtual {v11, v10}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v10

    if-eqz v10, :cond_36

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1257
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: mElectronBeamOffAnimator.start"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_d

    .line 1252
    :cond_35
    const/4 v10, 0x1

    goto :goto_f

    .line 1260
    :cond_36
    const-string v10, "PowerManagerDisplayController"

    const-string v11, "updatePowerState: mElectronBeamOffAnimator.end"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_d

    .line 1296
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 2088
    packed-switch p0, :pswitch_data_0

    .line 2093
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2091
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeProximityWakeUpEnable(Ljava/lang/String;I)V
    .locals 6
    .param p1, "deviceNode"    # Ljava/lang/String;
    .param p2, "enable"    # I

    .prologue
    .line 3109
    const/4 v1, 0x0

    .line 3111
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    add-int/lit8 p2, p2, 0x30

    .line 3113
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 3114
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3115
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, -0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3121
    if-eqz v2, :cond_2

    .line 3123
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 3130
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 3125
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 3127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 3128
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 3116
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3117
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "writeToControl error FileNotFoundException: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3121
    if-eqz v1, :cond_0

    .line 3123
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3125
    :catch_2
    move-exception v0

    .line 3127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3118
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 3119
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "writeToControl error IOException: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3121
    if-eqz v1, :cond_0

    .line 3123
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 3125
    :catch_4
    move-exception v0

    .line 3127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3121
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 3123
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3128
    :cond_1
    :goto_4
    throw v3

    .line 3125
    :catch_5
    move-exception v0

    .line 3127
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3121
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3118
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 3116
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public aquireWakeUpRequestLock()V
    .locals 2

    .prologue
    .line 2296
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2297
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    .line 2298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    .line 2299
    monitor-exit v1

    .line 2300
    return-void

    .line 2299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1982
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1983
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1984
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1994
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2009
    return-void

    .line 1991
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAutoBrightness()I
    .locals 1

    .prologue
    .line 2876
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 2877
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 2879
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultAmbientLux()F
    .locals 4

    .prologue
    .line 2866
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingDefault:I

    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(I)I

    move-result v0

    .line 2867
    .local v0, "level":I
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2869
    .local v1, "luxLevel":I
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLuxLevels:[I

    aget v2, v2, v1

    int-to-float v2, v2

    return v2
.end method

.method public getLastAmbientLux()F
    .locals 2

    .prologue
    .line 2855
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->isAmbientLuxValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2857
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxRealTime:F

    .line 2862
    :goto_0
    return v0

    .line 2858
    :cond_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxLastRealTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2860
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxLastRealTime:F

    goto :goto_0

    .line 2862
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/DisplayPowerController;->getDefaultAmbientLux()F

    move-result v0

    goto :goto_0
.end method

.method public getNextValidLux()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 2833
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2835
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2836
    return-void
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProximitySensorPositive()Z
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "dzg@SHELL.PowerManager.Feature. add new interfaces"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2217
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyBootCompleted()V
    .locals 2

    .prologue
    .line 2290
    const-string v0, "PowerManagerDisplayController"

    const-string v1, "Boot: BootCompleted ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mBootCompleted:Z

    .line 2292
    return-void
.end method

.method public releaseWakeUpRequestLock()V
    .locals 2

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2304
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z

    .line 2305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessValid:Z

    .line 2306
    monitor-exit v1

    .line 2307
    return-void

    .line 2306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Lcom/android/server/power/DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 782
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 783
    const-string v1, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 788
    const/4 v0, 0x0

    .line 790
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 793
    const/4 v0, 0x1

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_7

    .line 797
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 798
    const/4 v0, 0x1

    .line 804
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 805
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 808
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 810
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 812
    :cond_4
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v1, :cond_5

    .line 813
    :cond_5
    const-string v1, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " changed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-eqz v0, :cond_6

    .line 815
    const-string v1, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPowerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", waitForNegativeProximity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 799
    :cond_7
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 801
    const/4 v0, 0x1

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sbCheckAndDismissElectron()V
    .locals 2

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOnIsStart:Z

    if-eqz v0, :cond_0

    .line 825
    const-string v0, "PowerManagerDisplayController"

    const-string v1, "Smartbook plug in but Electron not finished, dismissElectronBeam"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbScreenOnIsStart:Z

    .line 829
    :cond_0
    return-void
.end method

.method public setAutoBrightness(I)V
    .locals 0
    .param p1, "auto"    # I

    .prologue
    .line 2883
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 2884
    return-void
.end method

.method public setIPOScreenOnDelay(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setIPOScreenOnDelay(I)V

    .line 427
    return-void
.end method

.method public setLuxChangedListener(Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    .prologue
    .line 2335
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    .line 2336
    return-void
.end method

.method public setSbAALEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 610
    if-eqz p1, :cond_1

    .line 611
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {p0, v1}, Lcom/android/server/power/DisplayPowerController;->updateNativeAALFunction(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 613
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v1, v1, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_0

    .line 616
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 620
    .local v0, "target":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v0

    .line 621
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenState(II)V

    .line 622
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerState;->setScreenBrightness(I)V

    .line 628
    .end local v0    # "target":I
    :goto_1
    return-void

    .line 613
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v1, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .restart local v0    # "target":I
    goto :goto_0

    .line 624
    .end local v0    # "target":I
    :cond_1
    invoke-static {v2, v2}, Lcom/android/server/power/DisplayPowerController;->nativeSetScreenState(II)V

    .line 625
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerState;->setScreenBrightness(I)V

    goto :goto_1
.end method

.method public setSbProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, -0x1

    .line 634
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " set P-sensor enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    if-eqz p1, :cond_1

    .line 636
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorEnabled:Z

    .line 638
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbPendingProximity:I

    .line 639
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorEnabled:Z

    .line 645
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximity:I

    .line 646
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 647
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSbProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public updateDebunceTime(J)V
    .locals 4
    .param p1, "time"    # J

    .prologue
    .line 2324
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebouceTimeBySettings:J

    .line 2331
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 2332
    return-void
.end method

.method public updateRampAnimationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 2311
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    if-nez v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->stopAnimation(ZI)Z

    .line 2318
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    .line 2319
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRampMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRampMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_1
    monitor-exit v1

    .line 2321
    return-void

    .line 2320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
