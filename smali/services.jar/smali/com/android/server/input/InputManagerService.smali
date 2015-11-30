.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$BinderDeath;,
        Lcom/android/server/input/InputManagerService$LidSwitchListener;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final SENSOR_PHONE_CALLING:Ljava/lang/String; = "/sys/bus/iio/devices/iio:device0/sensor_phone_calling"

.field private static final STATE_NONE_GESTURE:I = 0x0

.field private static final STATE_SCREEN_OFF_GESTURE:I = 0x2

.field private static final STATE_SCREEN_ON_GESTURE:I = 0x1

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0x94

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field static final TAG:Ljava/lang/String; = "InputManager"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerIsRunning:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private mEnterHallMode:Z

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$LidSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewGestureState:I

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOldGestureState:I

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPositive:Z

.field private mPowerKeyDown:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private final mProximitySensorLock:Ljava/lang/Object;

.field private mProximityThreshold:F

.field private final mPtr:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldWakeUp:Z

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 145
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 150
    new-array v0, v1, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 182
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mOldGestureState:I

    .line 183
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mNewGestureState:I

    .line 184
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z

    .line 191
    new-instance v0, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 230
    new-instance v0, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 1857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    .line 2018
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorLock:Ljava/lang/Object;

    .line 2021
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mPositive:Z

    .line 2022
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mEnterHallMode:Z

    .line 2023
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    .line 2024
    new-instance v0, Lcom/android/server/input/InputManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 364
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 365
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 369
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    .line 376
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 377
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mAccelerometer:Landroid/hardware/Sensor;

    .line 378
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 380
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 381
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPM:Landroid/os/PowerManager;

    .line 388
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 389
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mProximityThreshold:F

    .line 394
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->readFrom(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/input/InputManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mNewGestureState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->onStateChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/input/InputManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/input/InputManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    return v0
.end method

.method static synthetic access$2100(ILandroid/view/InputEvent;IIIII)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 120
    invoke-static/range {p0 .. p6}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/input/InputManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPositive:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/input/InputManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPositive:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/input/InputManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/input/InputManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mEnterHallMode:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAccelerometer:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/input/InputManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/input/InputManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/input/InputManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/input/InputManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/input/InputManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/input/InputManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1386
    monitor-enter p1

    .line 1387
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_0

    .line 1388
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(III)V

    .line 1389
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1391
    :cond_0
    monitor-exit p1

    .line 1392
    return-void

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1413
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return v1

    .line 1417
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkInjectEventsPermission(II)Z
    .locals 2
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 905
    array-length v2, p0

    .line 906
    .local v2, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 907
    aget-object v1, p0, v0

    .line 908
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 909
    const/4 v3, 0x1

    .line 912
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 906
    .restart local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 13
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 772
    const/4 v7, 0x0

    .line 773
    .local v7, "numFullKeyboardsAdded":I
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 774
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 777
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 778
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v10, :cond_0

    .line 779
    monitor-exit v11

    .line 839
    :goto_0
    return-void

    .line 781
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 783
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 784
    .local v9, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_1

    .line 785
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 789
    :cond_1
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v5, v10

    .line 790
    .local v5, "numDevices":I
    mul-int/lit8 v10, v5, 0x2

    new-array v0, v10, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .local v0, "deviceIdAndGeneration":[I
    const/4 v1, 0x0

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .local v8, "numFullKeyboardsAdded":I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 792
    :try_start_1
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v10, v1

    .line 793
    .local v2, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v10, v1, 0x2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v12

    aput v12, v0, v10

    .line 794
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getGeneration()I

    move-result v12

    aput v12, v0, v10

    .line 796
    invoke-virtual {v2}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 797
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 799
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :try_start_2
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    goto :goto_2

    .line 801
    :cond_2
    :try_start_3
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_3

    .line 805
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 808
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_5

    .line 809
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 805
    .end local v0    # "deviceIdAndGeneration":[I
    .end local v1    # "i":I
    .end local v5    # "numDevices":I
    .end local v8    # "numFullKeyboardsAdded":I
    .end local v9    # "numListeners":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :catchall_0
    move-exception v10

    :goto_5
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 812
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v0    # "deviceIdAndGeneration":[I
    .restart local v1    # "i":I
    .restart local v5    # "numDevices":I
    .restart local v8    # "numFullKeyboardsAdded":I
    .restart local v9    # "numListeners":I
    :cond_5
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 815
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v10, :cond_8

    .line 816
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 817
    .local v6, "numFullKeyboards":I
    const/4 v3, 0x0

    .line 818
    .local v3, "missingLayoutForExternalKeyboard":Z
    const/4 v4, 0x0

    .line 819
    .local v4, "missingLayoutForExternalKeyboardAdded":Z
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v11

    .line 820
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v6, :cond_7

    .line 821
    :try_start_5
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 822
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 823
    const/4 v3, 0x1

    .line 824
    if-ge v1, v8, :cond_6

    .line 825
    const/4 v4, 0x1

    .line 820
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 829
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_7
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 830
    if-eqz v3, :cond_9

    .line 831
    if-eqz v4, :cond_8

    .line 832
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification()V

    .line 838
    .end local v3    # "missingLayoutForExternalKeyboard":Z
    .end local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v6    # "numFullKeyboards":I
    :cond_8
    :goto_7
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v7, v8

    .line 839
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto/16 :goto_0

    .line 829
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v3    # "missingLayoutForExternalKeyboard":Z
    .restart local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .restart local v6    # "numFullKeyboards":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :catchall_1
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v10

    .line 834
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v10, :cond_8

    .line 835
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_7

    .line 805
    .end local v3    # "missingLayoutForExternalKeyboard":Z
    .end local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v6    # "numFullKeyboards":I
    :catchall_2
    move-exception v10

    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_5
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private findByTag(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1907
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LidSwitchListener;

    .line 1908
    .local v1, "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1912
    .end local v1    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :goto_1
    return-object v1

    .line 1906
    .restart local v1    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1912
    .end local v1    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1668
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    :cond_0
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 1614
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 1558
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1563
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1564
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1566
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1568
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1569
    const-string v7, "devices"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1572
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1573
    const-string v7, "device"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-nez v7, :cond_3

    .line 1586
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v1, v2

    .line 1589
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 1576
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1577
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1578
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1581
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v2

    .line 1586
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_2
    move-exception v7

    move-object v1, v2

    .line 1587
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_1

    .line 1583
    :catch_3
    move-exception v3

    .line 1584
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1586
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v7

    :catch_5
    move-exception v8

    goto :goto_5

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 1583
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_3

    .line 1581
    :catch_7
    move-exception v7

    goto :goto_2
.end method

.method private getHoverTapSlop()I
    .locals 1

    .prologue
    .line 1609
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 1604
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 1599
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 1594
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1634
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1663
    :cond_0
    :goto_0
    return-object v1

    .line 1638
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 1641
    goto :goto_0

    .line 1644
    :cond_2
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1645
    .local v1, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$12;

    invoke-direct {v3, p0, v1}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1658
    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_0

    .line 1659
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1661
    goto :goto_0
.end method

.method private getLongPressTimeout()I
    .locals 1

    .prologue
    .line 1619
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerPrimaryKeySetting()Z
    .locals 4

    .prologue
    .line 1299
    const/4 v0, 0x0

    .line 1301
    .local v0, "changePrimaryKey":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "change_pointer_primary_key"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1306
    :goto_0
    return v0

    .line 1301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPointerSpeedSetting()I
    .locals 4

    .prologue
    .line 1288
    const/4 v0, 0x0

    .line 1290
    .local v0, "speed":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1294
    :goto_0
    return v0

    .line 1292
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 1326
    move v0, p1

    .line 1328
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1332
    :goto_0
    return v0

    .line 1330
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 1156
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_2

    .line 1157
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 1160
    .local v2, "inputDeviceDescriptor":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v6

    .line 1162
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v0

    .line 1163
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1166
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1168
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1170
    if-eqz v0, :cond_2

    .line 1171
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    .line 1172
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 1173
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1175
    :cond_0
    if-eqz v4, :cond_1

    .line 1176
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 1177
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_1

    .line 1178
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1180
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1184
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1187
    .end local v0    # "changed":Z
    .end local v2    # "inputDeviceDescriptor":Ljava/lang/String;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_2
    return-void

    .line 1166
    .restart local v2    # "inputDeviceDescriptor":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v5

    .line 1168
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 874
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x1040482

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 878
    :cond_0
    return-void
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 1512
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z

    if-eqz v0, :cond_0

    .line 1513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method private static native nativeCancelVibrate(III)V
.end method

.method private static native nativeDump(I)Ljava/lang/String;
.end method

.method private static native nativeGetKeyCodeState(IIII)I
.end method

.method private static native nativeGetScanCodeState(IIII)I
.end method

.method private static native nativeGetSwitchState(IIII)I
.end method

.method private static native nativeHasKeys(III[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)I
.end method

.method private static native nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeMonitor(I)V
.end method

.method private static native nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadDeviceAliases(I)V
.end method

.method private static native nativeReloadKeyboardLayouts(I)V
.end method

.method private static native nativeSetDisplayViewport(IZIIIIIIIIIIII)V
.end method

.method private static native nativeSetFocusedApplication(ILcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(IZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(IZ)V
.end method

.method private static native nativeSetInputWindows(I[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetPointerPrimaryKey(IZ)V
.end method

.method private static native nativeSetPointerSpeed(II)V
.end method

.method private static native nativeSetShowTouches(IZ)V
.end method

.method private static native nativeSetSmartBookPlugIn(IZ)V
.end method

.method private static native nativeSetSystemUiVisibility(II)V
.end method

.method private static native nativeStart(I)V
.end method

.method private static native nativeTransferTouchFocus(ILandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(ILandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(II[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 2
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .locals 1
    .param p1, "whenNanos"    # J

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1438
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 1475
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1443
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_0

    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1445
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1449
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1450
    monitor-exit v1

    .line 1451
    return-void

    .line 1450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyListeners(ZLjava/lang/String;)V
    .locals 6
    .param p1, "lidopen"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1915
    const/4 v2, 0x0

    .line 1916
    .local v2, "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1917
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    check-cast v2, Lcom/android/server/input/InputManagerService$LidSwitchListener;

    .line 1918
    .restart local v2    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    if-eqz p2, :cond_1

    iget-object v3, v2, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1916
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1919
    :cond_1
    if-eqz v2, :cond_0

    .line 1921
    :try_start_0
    iget-object v3, v2, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mCallback:Landroid/hardware/input/ILidSwitchCallback;

    invoke-interface {v3, p1}, Landroid/hardware/input/ILidSwitchCallback;->onLidSwitchChanged(Z)V

    .line 1922
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListeners "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lidopen is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1923
    :catch_0
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1929
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method private notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V
    .locals 1
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "pid"    # I
    .param p4, "message"    # I

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V

    .line 1481
    return-void
.end method

.method private notifySwitch(JII)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 1460
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 1461
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 1462
    .local v0, "lidOpen":Z
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->switchHandler(ZLjava/lang/String;)V

    .line 1463
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1466
    .end local v0    # "lidOpen":Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_1

    and-int/lit16 v1, p4, 0x94

    if-eqz v1, :cond_1

    .line 1467
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1470
    :cond_1
    return-void

    .line 1461
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onStateChanged()V
    .locals 2

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mOldGestureState:I

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mNewGestureState:I

    if-eq v0, v1, :cond_0

    .line 2006
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mNewGestureState:I

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mOldGestureState:I

    .line 2007
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPowerKeyDown:Z

    .line 2009
    :cond_0
    return-void
.end method

.method private readFrom(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1955
    const/16 v7, 0x8

    new-array v0, v7, [B

    .line 1956
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 1957
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v5, -0x1

    .line 1959
    .local v5, "ret":I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 1961
    .local v4, "len":I
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1962
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1964
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 1971
    if-eqz v3, :cond_0

    .line 1972
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 1978
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_1
    return v7

    .line 1973
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    .restart local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1975
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1965
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 1966
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v7, "InputManager"

    const-string v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1971
    if-eqz v2, :cond_1

    .line 1972
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    move v7, v5

    .line 1978
    goto :goto_1

    .line 1973
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 1975
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1967
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1968
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v7, "InputManager"

    const-string v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1971
    if-eqz v2, :cond_1

    .line 1972
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 1973
    :catch_4
    move-exception v1

    .line 1975
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1970
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1971
    :goto_5
    if-eqz v2, :cond_2

    .line 1972
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1976
    :cond_2
    :goto_6
    throw v7

    .line 1973
    :catch_5
    move-exception v1

    .line 1975
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1970
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1967
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1965
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private registerPointerPrimaryKeySettingObserver()V
    .locals 5

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_pointer_primary_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$10;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1285
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$9;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1273
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$11;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1323
    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(I)V

    .line 477
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(I)V

    .line 470
    return-void
.end method

.method private setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V
    .locals 15
    .param p1, "external"    # Z
    .param p2, "viewport"    # Lcom/android/server/display/DisplayViewport;

    .prologue
    .line 494
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/display/DisplayViewport;->orientation:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/display/DisplayViewport;->deviceHeight:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v14}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(IZIIIIIIIIIIII)V

    .line 501
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 1259
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1261
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(II)V

    .line 1262
    return-void
.end method

.method private showMissingKeyboardLayoutNotification()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const v8, 0x1040482

    const/4 v1, 0x0

    .line 843
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 845
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 849
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    .line 853
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 854
    .local v7, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1040483

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10803d6

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 863
    .local v6, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 868
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method private switchHandler(ZLjava/lang/String;)V
    .locals 9
    .param p1, "lidOpen"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2045
    move v1, p1

    .line 2046
    .local v1, "lid":Z
    move-object v2, p2

    .line 2047
    .local v2, "tag_l":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    if-nez v3, :cond_0

    .line 2049
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2051
    iput-boolean v8, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    .line 2053
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mEnterHallMode:Z

    if-nez v3, :cond_0

    .line 2054
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2056
    :try_start_0
    const-string v3, "InputManager"

    const-string v5, "sleep......wait for proximity sensor to notify !"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorLock:Ljava/lang/Object;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    :cond_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_1

    .line 2065
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2066
    iput-boolean v7, p0, Lcom/android/server/input/InputManagerService;->mProximitySensorEnabled:Z

    .line 2068
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mPositive:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 2069
    const-string v3, "InputManager"

    const-string v4, "enter hall mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iput-boolean v8, p0, Lcom/android/server/input/InputManagerService;->mEnterHallMode:Z

    .line 2071
    const-string v3, "/sys/devices/mx_tsp/hall_mode"

    invoke-direct {p0, v3, v8}, Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V

    .line 2084
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->notifyListeners(ZLjava/lang/String;)V

    .line 2090
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 2091
    .local v0, "callstate":I
    if-nez v1, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 2092
    const-string v3, "/sys/bus/iio/devices/iio:device0/sensor_phone_calling"

    invoke-direct {p0, v3, v8}, Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V

    .line 2093
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2095
    iput-boolean v8, p0, Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z

    .line 2096
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    monitor-enter v4

    .line 2097
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z

    .line 2098
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2108
    .end local v0    # "callstate":I
    :goto_2
    return-void

    .line 2060
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2072
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mEnterHallMode:Z

    if-eqz v3, :cond_3

    .line 2073
    const-string v3, "InputManager"

    const-string v4, "exit hall mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iput-boolean v7, p0, Lcom/android/server/input/InputManagerService;->mEnterHallMode:Z

    .line 2075
    const-string v3, "/sys/devices/mx_tsp/hall_mode"

    invoke-direct {p0, v3, v7}, Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V

    goto :goto_1

    .line 2077
    :cond_3
    const-string v3, "InputManager"

    const-string v4, "not support other hall mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2098
    .restart local v0    # "callstate":I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2100
    :cond_4
    const-string v3, "/sys/bus/iio/devices/iio:device0/sensor_phone_calling"

    invoke-direct {p0, v3, v7}, Lcom/android/server/input/InputManagerService;->writeToControl(Ljava/lang/String;I)V

    .line 2101
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 2102
    iput-boolean v7, p0, Lcom/android/server/input/InputManagerService;->mAccelerometerIsRunning:Z

    .line 2103
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    monitor-enter v4

    .line 2104
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mShouldWakeUp:Z

    .line 2105
    monitor-exit v4

    goto :goto_2

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 2058
    .end local v0    # "callstate":I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    .prologue
    .line 883
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 884
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 891
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 897
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 900
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 901
    return-void

    .line 895
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 897
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 6
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 950
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 951
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .local v1, "intent":Landroid/content/Intent;
    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 954
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_0

    .line 956
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 6
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 960
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 961
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_0

    .line 962
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 964
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 967
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 968
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 18
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 975
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 976
    .local v12, "metaData":Landroid/os/Bundle;
    if-nez v12, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 980
    :cond_0
    const-string v2, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 981
    .local v9, "configResId":I
    if-nez v9, :cond_1

    .line 982
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 988
    .local v15, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 991
    .local v6, "collection":Ljava/lang/String;
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 992
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 994
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string v2, "keyboard-layouts"

    invoke-static {v14, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 997
    :goto_2
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 998
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 999
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 1036
    :try_start_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1038
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v10    # "element":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v11

    .line 1039
    .local v11, "ex":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 988
    .end local v6    # "collection":Ljava/lang/String;
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 1002
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "collection":Ljava/lang/String;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_3
    const-string v2, "keyboard-layout"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1003
    sget-object v2, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v3, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 1006
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1008
    .local v13, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1010
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1013
    .local v7, "keyboardLayoutResId":I
    if-eqz v13, :cond_4

    if-eqz v5, :cond_4

    if-nez v7, :cond_6

    .line 1014
    :cond_4
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1027
    :cond_5
    :goto_3
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1036
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "element":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1019
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v7    # "keyboardLayoutResId":I
    .restart local v8    # "a":Landroid/content/res/TypedArray;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v13}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    move-object/from16 v2, p4

    .line 1022
    invoke-interface/range {v2 .. v7}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1027
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v13    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 1030
    .end local v8    # "a":Landroid/content/res/TypedArray;
    :cond_8
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping unrecognized element \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' in keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method

.method private writeToControl(Ljava/lang/String;I)V
    .locals 5
    .param p1, "deviceNode"    # Ljava/lang/String;
    .param p2, "enable"    # I

    .prologue
    .line 1982
    const/4 v1, 0x0

    .line 1984
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

    .line 1985
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    add-int/lit8 p2, p2, 0x30

    .line 1986
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 1987
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1993
    if-eqz v2, :cond_2

    .line 1995
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 2001
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1996
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1999
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1988
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1989
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "InputManager"

    const-string v4, "writeToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1993
    if-eqz v1, :cond_0

    .line 1995
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1996
    :catch_2
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1990
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1991
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v3, "InputManager"

    const-string v4, "writeToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1993
    if-eqz v1, :cond_0

    .line 1995
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1996
    :catch_4
    move-exception v0

    .line 1998
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1993
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 1995
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1999
    :cond_1
    :goto_4
    throw v3

    .line 1996
    :catch_5
    move-exception v0

    .line 1998
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1993
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1990
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1988
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
.method public addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1095
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v2, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1097
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_0
    if-nez p1, :cond_1

    .line 1100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_1
    if-nez p2, :cond_2

    .line 1103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, "oldLayout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1117
    monitor-exit v2

    .line 1118
    return-void

    .line 1115
    .end local v0    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1117
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1367
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1369
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_1

    .line 1370
    :cond_0
    monitor-exit v2

    .line 1375
    :goto_0
    return-void

    .line 1372
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    goto :goto_0

    .line 1372
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    const-string v1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->nativeDump(I)Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1496
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    .line 1504
    :goto_1
    return v0

    .line 1502
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1503
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1504
    const/4 v0, 0x1

    goto :goto_1

    .line 1502
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1497
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1046
    if-nez p1, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "deviceId"    # I

    .prologue
    .line 698
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 699
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 700
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 701
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    .line 702
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 703
    monitor-exit v4

    .line 707
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_1
    return-object v2

    .line 700
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    monitor-exit v4

    .line 707
    const/4 v2, 0x0

    goto :goto_1

    .line 706
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .prologue
    .line 716
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 717
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 718
    .local v0, "count":I
    new-array v2, v0, [I

    .line 719
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 720
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_0
    monitor-exit v4

    return-object v2

    .line 723
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .locals 2

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v1

    return-object v0

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKeyCodeState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 513
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(IIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 5
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 930
    if-nez p1, :cond_0

    .line 931
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 934
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 935
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 942
    aget-object v1, v0, v4

    if-nez v1, :cond_1

    .line 943
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_1
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .prologue
    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$7;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 925
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1083
    if-nez p1, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScanCodeState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 526
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(IIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .prologue
    .line 539
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(IIII)I

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .prologue
    .line 556
    if-nez p3, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_2
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(III[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 655
    if-nez p1, :cond_0

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-eq p2, v10, :cond_1

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 665
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 666
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 669
    .local v7, "ident":J
    :try_start_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    const/16 v5, 0x7530

    const/high16 v6, 0x8000000

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 672
    .local v9, "result":I
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    packed-switch v9, :pswitch_data_0

    .line 686
    :pswitch_0
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 687
    :goto_0
    return v0

    .line 672
    .end local v9    # "result":I
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 676
    .restart local v9    # "result":I
    :pswitch_1
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " permission denied."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v10

    .line 680
    goto :goto_0

    .line 682
    :pswitch_3
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " timed out."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 683
    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeMonitor(I)V

    .line 1433
    return-void

    .line 1431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 6
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 573
    if-nez p1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 578
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    aget-object v2, v0, v4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 579
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 580
    aget-object v1, v0, v5

    return-object v1
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1383
    return-void

    .line 1380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCallback(Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V
    .locals 10
    .param p1, "callback"    # Landroid/hardware/input/ILidSwitchCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1868
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1870
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    :goto_0
    return-void

    .line 1871
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->findByTag(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1872
    .local v2, "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    if-eqz v2, :cond_2

    .line 1873
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .line 1893
    .end local v2    # "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1875
    .restart local v2    # "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :cond_2
    :try_start_3
    new-instance v4, Lcom/android/server/input/InputManagerService$LidSwitchListener;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/input/InputManagerService$LidSwitchListener;-><init>(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V

    .line 1876
    .local v4, "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    new-instance v0, Lcom/android/server/input/InputManagerService$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v0, p0, p2, v6, v4}, Lcom/android/server/input/InputManagerService$BinderDeath;-><init>(Lcom/android/server/input/InputManagerService;Ljava/lang/String;ILcom/android/server/input/InputManagerService$LidSwitchListener;)V

    .line 1877
    .local v0, "binderDeath":Lcom/android/server/input/InputManagerService$BinderDeath;
    invoke-interface {p1}, Landroid/hardware/input/ILidSwitchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1878
    const-string v6, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerCallback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    const-string v6, "/sys/devices/platform/gpio-keys.0/key_hall_state"

    invoke-direct {p0, v6}, Lcom/android/server/input/InputManagerService;->readFrom(Ljava/lang/String;)I

    move-result v5

    .line 1882
    .local v5, "ret":I
    const/4 v3, 0x0

    .line 1883
    .local v3, "lidOpen":Z
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1884
    const/4 v3, 0x1

    .line 1888
    :cond_3
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/input/InputManagerService;->switchHandler(ZLjava/lang/String;)V

    .line 1889
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    invoke-interface {v6, v8, v9, v3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1893
    .end local v0    # "binderDeath":Lcom/android/server/input/InputManagerService$BinderDeath;
    .end local v2    # "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .end local v3    # "lidOpen":Z
    .end local v4    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .end local v5    # "ret":I
    :goto_2
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 1885
    .restart local v0    # "binderDeath":Lcom/android/server/input/InputManagerService$BinderDeath;
    .restart local v2    # "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .restart local v3    # "lidOpen":Z
    .restart local v4    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .restart local v5    # "ret":I
    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1886
    const/4 v3, 0x0

    goto :goto_1

    .line 1890
    .end local v0    # "binderDeath":Lcom/android/server/input/InputManagerService$BinderDeath;
    .end local v2    # "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .end local v3    # "lidOpen":Z
    .end local v4    # "listener":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    .end local v5    # "ret":I
    :catch_0
    move-exception v1

    .line 1891
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 596
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 743
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 744
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 745
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 749
    .restart local v1    # "callingPid":I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 753
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 759
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    monitor-exit v5

    .line 761
    return-void

    .line 754
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 756
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1123
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v2, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1127
    :cond_0
    if-nez p1, :cond_1

    .line 1128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_1
    if-nez p2, :cond_2

    .line 1131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1134
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "oldLayout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1141
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1146
    monitor-exit v2

    .line 1147
    return-void

    .line 1144
    .end local v0    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1146
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1058
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_0
    if-nez p1, :cond_1

    .line 1063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_1
    if-nez p2, :cond_2

    .line 1066
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1078
    monitor-exit v1

    .line 1079
    return-void

    .line 1076
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v0

    .line 1078
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public setDisplayViewports(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/DisplayViewport;)V
    .locals 2
    .param p1, "defaultViewport"    # Lcom/android/server/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Lcom/android/server/display/DisplayViewport;

    .prologue
    const/4 v1, 0x1

    .line 482
    iget-boolean v0, p1, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    .line 486
    :cond_0
    iget-boolean v0, p2, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_2

    .line 487
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    .line 491
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_1

    .line 489
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    goto :goto_0
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .locals 1
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(ILcom/android/server/input/InputApplicationHandle;)V

    .line 1195
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .prologue
    .line 1198
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(IZZ)V

    .line 1199
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 622
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 624
    .local v0, "oldFilter":Landroid/view/IInputFilter;
    if-ne v0, p1, :cond_0

    .line 625
    monitor-exit v2

    .line 651
    :goto_0
    return-void

    .line 628
    :cond_0
    if-eqz v0, :cond_1

    .line 629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 630
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 631
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :try_start_1
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 640
    :try_start_2
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 641
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    :cond_2
    :goto_2
    :try_start_4
    iget v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(IZ)V

    .line 650
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 649
    .restart local v0    # "oldFilter":Landroid/view/IInputFilter;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 634
    :catch_0
    move-exception v1

    goto :goto_1

    .line 644
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1190
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(I[Lcom/android/server/input/InputWindowHandle;)V

    .line 1191
    return-void
.end method

.method public setSmartBookPlugIn(Z)V
    .locals 1
    .param p1, "plugin"    # Z

    .prologue
    .line 1203
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSmartBookPlugIn(IZ)V

    .line 1204
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1207
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(II)V

    .line 1208
    return-void
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 398
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 402
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 405
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeStart(I)V

    .line 409
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 411
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 412
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 414
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerPrimaryKeySettingObserver()V

    .line 416
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 429
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerPrimaryKeyFromSettings()V

    .line 430
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    return-void
.end method

.method public systemRunning()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 437
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 439
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 462
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1224
    if-nez p1, :cond_0

    .line 1225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_0
    if-nez p2, :cond_1

    .line 1228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(ILandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 1235
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_0
    const/4 v0, -0x7

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    .line 1241
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1245
    return-void
.end method

.method public unregisterCallback(Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/input/ILidSwitchCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1896
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1897
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->findByTag(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$LidSwitchListener;

    move-result-object v0

    .line 1898
    .local v0, "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    if-nez v0, :cond_0

    .line 1899
    monitor-exit v2

    .line 1904
    :goto_0
    return-void

    .line 1901
    :cond_0
    const-string v1, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1903
    monitor-exit v2

    goto :goto_0

    .end local v0    # "find":Lcom/android/server/input/InputManagerService$LidSwitchListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(ILandroid/view/InputChannel;)V

    .line 608
    return-void
.end method

.method public updatePointerPrimaryKeyFromSettings()V
    .locals 2

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerPrimaryKeySetting()Z

    move-result v0

    .line 1255
    .local v0, "changePrimaryKey":Z
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetPointerPrimaryKey(IZ)V

    .line 1256
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 1

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1249
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1250
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1310
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v0

    .line 1311
    .local v0, "setting":I
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(IZ)V

    .line 1312
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1338
    array-length v2, p2

    if-lt p3, v2, :cond_0

    .line 1339
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1343
    :cond_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1344
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1345
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_1

    .line 1346
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p4, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    .restart local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1357
    monitor-enter v1

    .line 1358
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1359
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget v3, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v2, p1, p2, p3, v3}, Lcom/android/server/input/InputManagerService;->nativeVibrate(II[JII)V

    .line 1360
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1361
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1355
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1360
    .restart local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method
