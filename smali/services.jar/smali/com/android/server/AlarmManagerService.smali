.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PwSavReceiver;,
        Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;,
        Lcom/android/server/AlarmManagerService$Injector;,
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    }
.end annotation


# static fields
.field private static final ALARM_EVENT:I = 0x1

.field public static final APPNAME:Ljava/lang/String; = "appname"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static DEBUG_BATCH:Z = false

.field private static DEBUG_POWERSAVING:Z = false

.field private static DEBUG_VALIDATE:Z = false

.field public static final DEFAULT_ENABLED:Ljava/lang/String; = "default_enabled"

.field public static final DEFAULT_ENABLED_VALUE:I = 0x1

.field private static final DISABLE_PROPERTY:Ljava/lang/String; = "0"

.field private static final DONT_RESTRICT:I = 0x0

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final IS_WAKEUP_MASK:I = 0x5

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final LIKELY_CLOCK:I = 0x0

.field private static final MINUTES10:J = 0x927c0L

.field private static final MINUTES60:J = 0x36ee80L

.field private static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final PERMISSION_INTERNET:Ljava/lang/String; = "android.permission.INTERNET"

.field public static final PWSAV_LEVEL:Ljava/lang/String; = "pwsav_level"

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field public static final TABLE_CONFIG:Ljava/lang/String; = "app_config"

.field protected static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TAGPWR:Ljava/lang/String; = "PowerSaving"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TYPE_NONWAKEUP_MASK:I = 0x1

.field public static final USER_ENABLED:Ljava/lang/String; = "user_enabled"

.field private static final WAKEUP_STATS:Z

.field protected static localLOGV:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field private final PROPERTY_PWRSAV_ENABLE:Ljava/lang/String;

.field private final RECENT_WAKEUP_PERIOD:J

.field private final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDbConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$PowerSavingConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

.field private mBlackListInited:Z

.field private mBlackListLock:Ljava/lang/Object;

.field private mBootAlarmService:Lcom/android/server/BootAlarmService;

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mIPOShutdown:Z

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$PowerSavingConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private mNextNonWakeup:J

.field private mNextWakeup:J

.field private mPPLEnable:Z

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private mPowerSavingContentObserver:Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPwSavAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPwSavReceiver:Lcom/android/server/AlarmManagerService$PwSavReceiver;

.field private mPwsavEnable:Z

.field private final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private mScreenOn:Z

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWaitThreadlock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 128
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 129
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_POWERSAVING:Z

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 142
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 195
    const-string v0, "content://com.aliyun.provider.secure/powersave"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->CONTENT_URI:Landroid/net/Uri;

    .line 501
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void

    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    :cond_1
    move v0, v2

    .line 129
    goto :goto_1

    :cond_2
    move v1, v2

    .line 135
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 694
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 148
    new-instance v7, Lcom/android/internal/util/LocalLog;

    const-string v10, "AlarmManager"

    invoke-direct {v7, v10}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 150
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 155
    iput v9, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 158
    new-instance v7, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 159
    new-instance v7, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 162
    new-instance v7, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 166
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 167
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 168
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    .line 169
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 170
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 171
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 172
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 183
    const-string v7, "persist.sys.powersaving"

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->PROPERTY_PWRSAV_ENABLE:Ljava/lang/String;

    .line 185
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    .line 186
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mBlackListLock:Ljava/lang/Object;

    .line 200
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    .line 203
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;

    .line 204
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 205
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 206
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mScreenOn:Z

    .line 209
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    .line 264
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 265
    const-wide/32 v10, 0x5265c00

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 502
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 652
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 653
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 654
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 655
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 691
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 695
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 696
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v7

    iput v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 697
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 701
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, "tz":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 703
    invoke-virtual {p0, v6}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 709
    :cond_0
    :try_start_0
    const-class v7, Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v7, v10}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 716
    .local v5, "pm":Landroid/os/PowerManager;
    const-string v7, "AlarmManager"

    invoke-virtual {v5, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 717
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.TIME_TICK"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x50000000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v9, v7, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 722
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    const/high16 v7, 0x4000000

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v9, v3, v7, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 730
    new-instance v7, Lcom/android/server/BootAlarmService;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {v7, v10, p0, v11}, Lcom/android/server/BootAlarmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;I)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    .line 733
    new-instance v7, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 734
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 735
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 736
    new-instance v7, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 738
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 739
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string v10, "com.android.deskclock"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :try_start_1
    const-string v7, "DmAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 743
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 744
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 745
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v4

    .line 746
    .local v4, "locked":Z
    const-string v7, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-nez v4, :cond_1

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 754
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v4    # "locked":Z
    :goto_2
    new-instance v7, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 755
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 756
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 760
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 761
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 819
    :goto_3
    return-void

    .line 710
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "locked":Z
    .restart local v5    # "pm":Landroid/os/PowerManager;
    :cond_1
    move v7, v9

    .line 747
    goto :goto_1

    .line 749
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v4    # "locked":Z
    :cond_2
    :try_start_2
    const-string v7, "AlarmManager"

    const-string v8, "dm binder is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 751
    .end local v1    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v2

    .line 752
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "AlarmManager"

    const-string v8, "remote error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 763
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v7, "AlarmManager"

    const-string v8, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 16
    .param p3, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "mDmFreeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "resendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2392
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v14, 0x0

    .line 2393
    .local v14, "isFreeIntent":Z
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2394
    const/4 v14, 0x0

    .line 2395
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2397
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 2398
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2399
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_1

    .line 2400
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending alarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_1
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ALARM_COUNT"

    iget v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_2

    .line 2408
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 2409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2412
    :cond_2
    new-instance v13, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 2414
    .local v13, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2416
    iget-object v9, v13, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2417
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2418
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v2, :cond_6

    .line 2419
    const/4 v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2420
    move-wide/from16 v0, p3

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2424
    :goto_2
    iget-object v11, v13, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2425
    .local v11, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2426
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v2, :cond_7

    .line 2427
    const/4 v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2428
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2432
    :goto_3
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_4

    .line 2434
    :cond_3
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2435
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2436
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 2439
    :cond_4
    const/4 v14, 0x1

    .line 2444
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    if-nez v14, :cond_0

    .line 2445
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2422
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_6
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2449
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v10

    .line 2450
    .local v10, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2453
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2430
    .end local v10    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v13    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_7
    :try_start_1
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 2455
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v10

    .line 2456
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string v2, "AlarmManager"

    const-string v3, "Failure sending alarm."

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2397
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2459
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "i":I
    :cond_9
    return-void
.end method

.method private static Plog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3319
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_POWERSAVING:Z

    if-eqz v0, :cond_0

    .line 3320
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaving, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/ArrayList;

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2110(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->getBlackListFromDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initBlackListConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->handleAlarmsDueToScreenOn()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->handleAlarmsDueToScreenOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 2
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 537
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 538
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 540
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 541
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 2566
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 2568
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    sget-object v7, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 2569
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 2570
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 2572
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_1
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2575
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 2577
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const/4 v4, 0x0

    .line 2579
    .local v4, "position":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2580
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 2581
    .local v5, "time":Landroid/text/format/Time;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 2582
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2583
    .local v6, "timeStr":Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    add-int/lit8 v4, v4, 0x1

    .line 2586
    goto :goto_0

    .line 2589
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "position":I
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "timeStr":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private native close(I)V
.end method

.method static convertToElapsed(JI)J
    .locals 5
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 505
    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 512
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 515
    :cond_1
    return-wide p0

    .line 505
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 1563
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1564
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1565
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v2

    .line 1566
    .local v2, "label":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    move-wide v3, p5

    .line 1567
    .local v3, "now":J
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " #"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1568
    const-string v5, ": "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0, v5, v3, v4}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1563
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3    # "now":J
    :cond_0
    move-wide v3, p3

    .line 1566
    goto :goto_1

    .line 1571
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "label":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1535
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1536
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1537
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1538
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1535
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1541
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fileAndPath"    # Ljava/lang/String;

    .prologue
    .line 2793
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2794
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    const/4 v4, 0x0

    .line 2802
    .local v4, "fw":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2803
    .end local v4    # "fw":Ljava/io/FileReader;
    .local v5, "fw":Ljava/io/FileReader;
    const/16 v6, 0xc8

    :try_start_1
    new-array v0, v6, [C

    .line 2804
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 2805
    .local v1, "byteread":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 2806
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2809
    .end local v0    # "buffer":[C
    .end local v1    # "byteread":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 2810
    .end local v5    # "fw":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fw":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2812
    if-eqz v4, :cond_0

    .line 2814
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2821
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fw":Ljava/io/FileReader;
    :cond_0
    :goto_2
    return-void

    .line 2797
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2808
    .restart local v0    # "buffer":[C
    .restart local v1    # "byteread":I
    .restart local v5    # "fw":Ljava/io/FileReader;
    :cond_2
    :try_start_4
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2812
    if-eqz v5, :cond_4

    .line 2814
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 2818
    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2

    .line 2815
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v5    # "fw":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 2817
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v4, v5

    .line 2818
    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2

    .line 2815
    .end local v0    # "buffer":[C
    .end local v1    # "byteread":I
    :catch_2
    move-exception v2

    .line 2817
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2812
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    .line 2814
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2818
    :cond_3
    :goto_4
    throw v6

    .line 2815
    :catch_3
    move-exception v2

    .line 2817
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 2812
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v5    # "fw":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_3

    .line 2809
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "byteread":I
    .restart local v5    # "fw":Ljava/io/FileReader;
    :cond_4
    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private dumpToFile()V
    .locals 6

    .prologue
    .line 2774
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/alarm_shutdown_recoder.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2775
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2776
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2778
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2790
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 2781
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 2782
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2783
    .local v3, "pw":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/AlarmManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 2786
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2787
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 2788
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 1120
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1121
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1122
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1123
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return-object v1

    .line 1121
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBlackListFromDb()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "into getBlackListFromDb, mPwsavEnable="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3217
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-nez v1, :cond_0

    .line 3218
    const-string v1, "Error!!! mPwsavEnable=false"

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    move v1, v11

    .line 3261
    :goto_0
    return v1

    .line 3222
    :cond_0
    iget-object v13, p0, Lcom/android/server/AlarmManagerService;->mBlackListLock:Ljava/lang/Object;

    monitor-enter v13

    .line 3225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/AlarmManagerService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3226
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 3227
    const-string v1, "cursor == null, need to create first!"

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3229
    monitor-exit v13

    move v1, v11

    goto :goto_0

    .line 3231
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3232
    const-string v1, "DB is empty, need to create first!"

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3235
    monitor-exit v13

    move v1, v11

    goto :goto_0

    .line 3237
    :cond_2
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3238
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3240
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3241
    const-string v1, "appname"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3242
    .local v2, "name":Ljava/lang/String;
    const-string v1, "default_enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3243
    .local v7, "defaultEnable":Ljava/lang/Integer;
    const-string v1, "pwsav_level"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3245
    .local v9, "level":Ljava/lang/Integer;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3247
    .local v10, "userEnable":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3248
    .local v3, "psl":I
    new-instance v0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$PowerSavingConfig;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;III)V

    .line 3249
    .local v0, "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add config: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3250
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3260
    .end local v0    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "psl":I
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "defaultEnable":Ljava/lang/Integer;
    .end local v9    # "level":Ljava/lang/Integer;
    .end local v10    # "userEnable":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3252
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3254
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_POWERSAVING:Z

    if-eqz v1, :cond_5

    .line 3255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAllDbConfigs.size()="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3256
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 3257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAllDbConfigs["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "], "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3256
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3260
    .end local v8    # "i":I
    :cond_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v12

    .line 3261
    goto/16 :goto_0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2255
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 2256
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2257
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 2258
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    .line 2259
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    :cond_0
    return-object v0
.end method

.method private handleAlarmsDueToScreenOff()V
    .locals 2

    .prologue
    .line 3088
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-nez v0, :cond_1

    .line 3094
    :cond_0
    :goto_0
    return-void

    .line 3089
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    if-eqz v0, :cond_0

    .line 3091
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3092
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3093
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleAlarmsDueToScreenOn()V
    .locals 13

    .prologue
    .line 3044
    iget-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-nez v9, :cond_1

    .line 3085
    :cond_0
    :goto_0
    return-void

    .line 3045
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    if-eqz v9, :cond_0

    .line 3047
    const/4 v3, 0x0

    .line 3048
    .local v3, "didTrigger":Z
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3049
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 3050
    .local v7, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3051
    .local v5, "nowELAPSED":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleAlarmsDueToScreenOn, Checking for alarms... rtc="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", elapsed="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3053
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->printAllBatchs()V

    .line 3055
    const/4 v2, 0x0

    .local v2, "batchIndex":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 3056
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3057
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 3058
    invoke-virtual {v1, v4}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v0

    .line 3059
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->bPwSav:Z

    if-eqz v9, :cond_3

    .line 3060
    iget-wide v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v9, v11, v5

    if-gtz v9, :cond_3

    .line 3062
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screen on, nowELAPSED="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", delayed="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    sub-long v11, v5, v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", trigger "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3065
    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/AlarmManagerService;->triggerAlarmPwsav(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 3066
    invoke-virtual {v1, v4}, Lcom/android/server/AlarmManagerService$Batch;->removeAlarm(I)Z

    .line 3067
    add-int/lit8 v4, v4, -0x1

    .line 3068
    const/4 v3, 0x1

    .line 3069
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 3070
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3071
    add-int/lit8 v2, v2, -0x1

    .line 3055
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3057
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3079
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "i":I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleAlarmsDueToScreenOn, didTrigger="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3080
    if-eqz v3, :cond_5

    .line 3081
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3082
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3084
    :cond_5
    monitor-exit v10

    goto/16 :goto_0

    .end local v2    # "batchIndex":I
    .end local v5    # "nowELAPSED":J
    .end local v7    # "nowRTC":J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private native init()I
.end method

.method private initBlackListConfig()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3109
    iget-boolean v12, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-nez v12, :cond_0

    .line 3110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error!!! initBlackListConfig but mPwsavEnable="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3212
    :goto_0
    return v10

    .line 3114
    :cond_0
    const-string v12, "initBlackListConfig enter"

    invoke-static {v12}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3115
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-nez v12, :cond_1

    .line 3116
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 3119
    :cond_1
    const/4 v3, 0x0

    .line 3120
    .local v3, "idxInstalled":I
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 3122
    .local v9, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mBlackListLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3123
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3124
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "idxInstalled":I
    .local v4, "idxInstalled":I
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 3127
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 3128
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3129
    .local v8, "name":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/AlarmManagerService;->requestInternetPerm(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 3131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestInternetPerm false, continue, name="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    move v3, v4

    .line 3126
    .end local v4    # "idxInstalled":I
    .restart local v3    # "idxInstalled":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "idxInstalled":I
    .restart local v4    # "idxInstalled":I
    goto :goto_1

    .line 3135
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/AlarmManagerService;->isPkgNameInDb(Ljava/lang/String;)I

    move-result v5

    .line 3136
    .local v5, "index":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isPkgNameInDb return "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", name="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3137
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3146
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    .line 3156
    .local v7, "isApp":Z
    if-ltz v5, :cond_5

    .line 3158
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$PowerSavingConfig;

    .line 3159
    .local v1, "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "installPkgName.contain uid="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", info.applicationInfo.uid="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", isApp="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3161
    iget v10, v1, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPwsavLevel:I

    if-nez v10, :cond_3

    move v3, v4

    .line 3162
    .end local v4    # "idxInstalled":I
    .restart local v3    # "idxInstalled":I
    goto :goto_2

    .line 3176
    .end local v3    # "idxInstalled":I
    .restart local v4    # "idxInstalled":I
    :cond_3
    if-eqz v7, :cond_4

    .line 3178
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 3182
    :cond_4
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idxInstalled":I
    .restart local v3    # "idxInstalled":I
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3209
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    .end local v2    # "i":I
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "isApp":Z
    .end local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_3
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 3188
    .end local v3    # "idxInstalled":I
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i":I
    .restart local v4    # "idxInstalled":I
    .restart local v5    # "index":I
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    .restart local v7    # "isApp":Z
    .restart local v8    # "name":Ljava/lang/String;
    :cond_5
    :try_start_3
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_9

    .line 3190
    new-instance v1, Lcom/android/server/AlarmManagerService$PowerSavingConfig;

    invoke-direct {v1, p0, v8}, Lcom/android/server/AlarmManagerService$PowerSavingConfig;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)V

    .line 3191
    .restart local v1    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    if-eqz v7, :cond_6

    .line 3193
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 3195
    :cond_6
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3196
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idxInstalled":I
    .restart local v3    # "idxInstalled":I
    :try_start_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 3202
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    .end local v3    # "idxInstalled":I
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "isApp":Z
    .end local v8    # "name":Ljava/lang/String;
    .restart local v4    # "idxInstalled":I
    :cond_7
    :try_start_5
    sget-boolean v10, Lcom/android/server/AlarmManagerService;->DEBUG_POWERSAVING:Z

    if-eqz v10, :cond_8

    .line 3203
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mInstalledConfigs.size()="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3204
    const/4 v2, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 3205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mInstalledConfigs["

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "], "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 3204
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3208
    :cond_8
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    .line 3209
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3210
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 3211
    const-string v10, "initBlackListConfig exit"

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    move v10, v11

    .line 3212
    goto/16 :goto_0

    .line 3209
    :catchall_1
    move-exception v10

    move v3, v4

    .end local v4    # "idxInstalled":I
    .restart local v3    # "idxInstalled":I
    goto/16 :goto_3

    .end local v3    # "idxInstalled":I
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "idxInstalled":I
    .restart local v5    # "index":I
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    .restart local v7    # "isApp":Z
    .restart local v8    # "name":Ljava/lang/String;
    :cond_9
    move v3, v4

    .end local v4    # "idxInstalled":I
    .restart local v3    # "idxInstalled":I
    goto/16 :goto_2
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .param p1, "fd"    # I

    .prologue
    .line 2524
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private isInBlackList(Ljava/lang/String;)I
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2962
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-nez v1, :cond_1

    .line 2986
    :cond_0
    :goto_0
    return v0

    .line 2965
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    if-eqz v1, :cond_0

    .line 2969
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2973
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBlackListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2974
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2975
    :cond_2
    const-string v1, "AlarmManager"

    const-string v3, "isInBlackList: mPwSavAppsMap is null or empty"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    monitor-exit v2

    goto :goto_0

    .line 2984
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2979
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2980
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2981
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is in the installed list, index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2982
    monitor-exit v2

    goto :goto_0

    .line 2984
    .end local v0    # "index":I
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isInBlackListDb(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2942
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter isInBlackListDb, appname is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2958
    :cond_0
    :goto_0
    return v0

    .line 2946
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlackListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2947
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2948
    :cond_2
    const-string v2, "AlarmManager"

    const-string v3, "isInBlackListDb: mAllDbConfigs is null or empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    monitor-exit v1

    goto :goto_0

    .line 2956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2952
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2953
    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in the black list DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 2956
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isPkgNameInDb(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3098
    const/4 v0, 0x0

    .line 3099
    .local v0, "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3100
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    check-cast v0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;

    .line 3101
    .restart local v0    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3105
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 3099
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3105
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1544
    packed-switch p0, :pswitch_data_0

    .line 1558
    const-string v0, "--unknown--"

    :goto_0
    return-object v0

    .line 1545
    :pswitch_0
    const-string v0, "RTC"

    goto :goto_0

    .line 1546
    :pswitch_1
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1547
    :pswitch_2
    const-string v0, "ELAPSED"

    goto :goto_0

    .line 1548
    :pswitch_3
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_0

    .line 1552
    :pswitch_4
    const-string v0, "RTC_BOOT_WAKEUP"

    goto :goto_0

    .line 1553
    :pswitch_5
    const-string v0, "RTC_BOOT"

    goto :goto_0

    .line 1544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private logBatchesLocked()V
    .locals 11

    .prologue
    .line 1085
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v8, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1086
    .local v8, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1087
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1088
    .local v5, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1089
    .local v3, "nowELAPSED":J
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1090
    .local v7, "NZ":I
    const/4 v10, 0x0

    .local v10, "iz":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Batch;

    .line 1092
    .local v9, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v1, "Batch "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1093
    iget-object v1, v9, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v2, "  "

    invoke-static/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    .line 1094
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1095
    const-string v1, "AlarmManager"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1090
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1098
    .end local v9    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 525
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    sub-long v0, p2, p0

    .line 528
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 529
    const-wide/16 v0, 0x0

    .line 531
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 525
    goto :goto_0
.end method

.method private packageName2Label(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2897
    if-nez p1, :cond_1

    .line 2908
    :cond_0
    :goto_0
    return-object v2

    .line 2900
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPkgManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2901
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 2902
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2904
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 2905
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private printAllBatchs()V
    .locals 4

    .prologue
    .line 2887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printAllBatchs, mAlarmBatches.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2888
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2889
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2890
    .local v0, "batch":Lcom/android/server/AlarmManagerService$Batch;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  batch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->printAllAlarms()V

    .line 2888
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2893
    .end local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method private removePoweroffAlarmLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2593
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 2594
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2607
    :cond_0
    return-void

    .line 2599
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2601
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2602
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2603
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2604
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private requestInternetPerm(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2913
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2937
    :cond_0
    :goto_0
    return v5

    .line 2916
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->packageName2Label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2919
    .local v2, "label":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPkgManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2926
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 2927
    .local v3, "permList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2930
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 2931
    const-string v6, "android.permission.INTERNET"

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " request internet permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2934
    const/4 v5, 0x1

    goto :goto_0

    .line 2921
    .end local v1    # "i":I
    .end local v3    # "permList":[Ljava/lang/String;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 2922
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    goto :goto_0

    .line 2930
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "i":I
    .restart local v3    # "permList":[Ljava/lang/String;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private rescheduleKernelAlarmsLocked()V
    .locals 6

    .prologue
    .line 1133
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1136
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1137
    const-string v2, "AlarmManager"

    const-string v3, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 1143
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1144
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1145
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1146
    const/4 v2, 0x2

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1148
    :cond_2
    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1149
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 1150
    const/4 v2, 0x3

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    goto :goto_0
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2465
    .local p1, "DmResendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2466
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2467
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2469
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_1

    .line 2470
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2477
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_2

    .line 2478
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 2479
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2481
    :cond_2
    new-instance v10, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-direct {v10, p0, v0, v1}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 2483
    .local v10, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2484
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2485
    iget-object v7, v10, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2486
    .local v7, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2487
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v0, :cond_4

    .line 2488
    const/4 v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2493
    :goto_1
    iget-object v9, v10, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2494
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2495
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v0, :cond_5

    .line 2496
    const/4 v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2501
    :goto_2
    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_0

    .line 2503
    :cond_3
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2504
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2505
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2508
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v8

    .line 2509
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2512
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2491
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v10    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    :try_start_1
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2514
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v10    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v8

    .line 2515
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v0, "AlarmManager"

    const-string v1, "Failure sending alarm."

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2499
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v10    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    :try_start_2
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2518
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_6
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 12
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v2, 0x7

    const-wide/16 v10, 0x3e8

    .line 2615
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    .line 2616
    .local v9, "setPackageName":Ljava/lang/String;
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2623
    .local v7, "latestTime":J
    const-string v0, "com.android.alarmclock"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2625
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x6

    div-long v3, v7, v10

    rem-long v5, v7, v10

    mul-long/2addr v5, v10

    mul-long/2addr v5, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 2650
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset power off alarm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const-string v0, "sys.power_off_alarm"

    div-long v1, v7, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    return-void

    .line 2633
    :cond_0
    const-string v0, "com.android.settings"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2635
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " set Prop 2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    div-long v3, v7, v10

    rem-long v5, v7, v10

    mul-long/2addr v5, v10

    mul-long/2addr v5, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    .line 2640
    :cond_1
    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2641
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " set Prop 2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    div-long v3, v7, v10

    rem-long v5, v7, v10

    mul-long/2addr v5, v10

    mul-long/2addr v5, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto/16 :goto_0

    .line 2646
    :cond_2
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to set power off alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private native set(IIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Z)V
    .locals 21
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "isStandalone"    # Z
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "bootDevice"    # Z

    .prologue
    .line 1000
    new-instance v5, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-object/from16 v17, p12

    move-object/from16 v18, p15

    invoke-direct/range {v5 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1006
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move/from16 v0, p16

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Alarm;->setBootDevice(Z)V

    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1047
    if-eqz p13, :cond_3

    const/16 v20, -0x1

    .line 1048
    .local v20, "whichBatch":I
    :goto_0
    if-gez v20, :cond_4

    .line 1049
    new-instance v19, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1050
    .local v19, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move/from16 v0, p13

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1065
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    invoke-virtual {v6, v5}, Lcom/android/server/BootAlarmService;->addBootAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1066
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/BootAlarmService;->rescheduleBootAlarmsLocked(Z)Z

    .line 1070
    :cond_1
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v6, :cond_2

    .line 1071
    if-eqz p14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1072
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tipping-point operation: type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " when="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " when(hex)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " whenElapsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " maxWhen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p10

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " op="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " standalone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1081
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1082
    return-void

    .line 1047
    .end local v19    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v20    # "whichBatch":I
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v20

    goto/16 :goto_0

    .line 1053
    .restart local v20    # "whichBatch":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AlarmManagerService$Batch;

    .line 1054
    .restart local v19    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1057
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1058
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto/16 :goto_1
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v8, 0x3e8

    .line 1282
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1287
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 1288
    const-wide/16 v3, 0x0

    .line 1289
    .local v3, "alarmSeconds":J
    const-wide/16 v5, 0x0

    .line 1294
    .local v5, "alarmNanoseconds":J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set to RTC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 1305
    .end local v3    # "alarmSeconds":J
    .end local v5    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 1291
    :cond_0
    div-long v3, p2, v8

    .line 1292
    .restart local v3    # "alarmSeconds":J
    rem-long v0, p2, v8

    mul-long/2addr v0, v8

    mul-long v5, v0, v8

    .restart local v5    # "alarmNanoseconds":J
    goto :goto_0

    .line 1299
    .end local v3    # "alarmSeconds":J
    .end local v5    # "alarmNanoseconds":J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 1300
    .local v7, "msg":Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 1302
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v7, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 21

    .prologue
    .line 2699
    const-string v1, "AlarmManager"

    const-string v2, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    const/16 v18, 0x0

    .line 2702
    .local v18, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2703
    .local v16, "nowTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2704
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2705
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2706
    .local v15, "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2707
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2708
    .local v11, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v13, v11, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2709
    .local v13, "latestTime":J
    iget-object v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v18

    .line 2711
    const-wide/16 v1, 0x7530

    sub-long v1, v13, v1

    cmp-long v1, v1, v16

    if-gtz v1, :cond_0

    .line 2712
    const-string v1, "AlarmManager"

    const-string v2, "get target latestTime < 30S!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2722
    .end local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v13    # "latestTime":J
    .end local v15    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v1

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2716
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v15    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 2717
    .local v19, "tempIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2718
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2719
    .restart local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v13, v11, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2720
    .restart local v13    # "latestTime":J
    iget v2, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide/32 v3, 0xea60

    add-long/2addr v3, v13

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    goto :goto_1

    .line 2722
    .end local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "latestTime":J
    :cond_2
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2723
    const-string v1, "AlarmManager"

    const-string v2, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    return-void
.end method

.method private triggerAlarmPwsav(Lcom/android/server/AlarmManagerService$Alarm;J)V
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowELAPSED"    # J

    .prologue
    .line 2994
    :try_start_0
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 3000
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_0

    .line 3001
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 3002
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3004
    :cond_0
    new-instance v9, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-direct {v9, p0, v0, v1}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 3006
    .local v9, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3009
    iget-object v6, v9, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3010
    .local v6, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3011
    iget v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v0, :cond_3

    .line 3012
    const/4 v0, 0x1

    iput v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3013
    iput-wide p2, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3017
    :goto_0
    iget-object v8, v9, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3018
    .local v8, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3019
    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v0, :cond_4

    .line 3020
    const/4 v0, 0x1

    iput v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3021
    iput-wide p2, v8, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3025
    :goto_1
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_2

    .line 3027
    :cond_1
    iget v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3028
    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 3029
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 3041
    .end local v6    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v8    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v9    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_2
    :goto_2
    return-void

    .line 3015
    .restart local v6    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_3
    iget v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3032
    .end local v6    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v7

    .line 3033
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3036
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 3023
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v6    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v9    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    :try_start_1
    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3038
    .end local v6    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v8    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v9    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v7

    .line 3039
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure sending alarm. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    .locals 30
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1588
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v29, 0x0

    .line 1593
    .local v29, "rescheduleBootTime":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerService$Batch;

    .line 1595
    .local v25, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v25

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 1659
    .end local v25    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return-void

    .line 1602
    .restart local v25    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1604
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v23

    .line 1605
    .local v23, "N":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 1606
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v24

    .line 1607
    .local v24, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1608
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v2, :cond_3

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    iget-object v2, v2, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v29

    .line 1619
    :cond_3
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 1622
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v6, p2, v6

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, v24

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1625
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v26, v2, v6

    .line 1626
    .local v26, "delta":J
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v4, v2, v26

    .line 1628
    .local v4, "nextElapsed":J
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.cts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1629
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    .line 1639
    .local v14, "maxElapsed":J
    :goto_2
    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v8, v2, v26

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    move/from16 v22, v0

    move-object/from16 v6, p0

    move-wide v10, v4

    invoke-direct/range {v6 .. v22}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Z)V

    .line 1605
    .end local v4    # "nextElapsed":J
    .end local v14    # "maxElapsed":J
    .end local v26    # "delta":J
    :cond_4
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 1631
    .restart local v4    # "nextElapsed":J
    .restart local v26    # "delta":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    if-eqz v2, :cond_6

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v10}, Lcom/mediatek/common/amplus/IAlarmMangerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;)J

    move-result-wide v14

    .restart local v14    # "maxElapsed":J
    goto :goto_2

    .line 1636
    .end local v14    # "maxElapsed":J
    :cond_6
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    .restart local v14    # "maxElapsed":J
    goto :goto_2

    .line 1654
    .end local v4    # "nextElapsed":J
    .end local v14    # "maxElapsed":J
    .end local v24    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v26    # "delta":J
    :cond_7
    if-eqz v29, :cond_0

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/BootAlarmService;->rescheduleBootAlarmsLocked(Z)Z

    goto/16 :goto_0
.end method

.method private tryGetProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 2830
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryGetProp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2831
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2832
    .local v1, "ret":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryGetProp got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2834
    const-string v2, "not initialized yet, default to 0"

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2835
    const-string v2, "persist.sys.powersaving"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->trySetProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 2839
    :catch_0
    move-exception v0

    .line 2840
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryGetProp Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2841
    const-string v1, ""

    goto :goto_0
.end method

.method private trySetProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2847
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetProp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2848
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2852
    :goto_0
    return-void

    .line 2849
    :catch_0
    move-exception v0

    .line 2850
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetProp Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePoweroffAlarm(J)V
    .locals 6
    .param p1, "nowRTC"    # J

    .prologue
    .line 2532
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2534
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2536
    monitor-exit v3

    .line 2563
    :goto_0
    return-void

    .line 2539
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    .line 2541
    monitor-exit v3

    goto :goto_0

    .line 2562
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2544
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2546
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2548
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2550
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 2559
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2560
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2562
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 2554
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    const-string v2, "AlarmManager"

    const-string v4, "power off alarm update deleted"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private validateConsistencyLocked()Z
    .locals 8

    .prologue
    .line 1101
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v5, :cond_1

    .line 1102
    const-wide/high16 v3, -0x8000000000000000L

    .line 1103
    .local v3, "lastTime":J
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1104
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1105
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1106
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 1108
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1110
    :cond_0
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is out of order"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->logBatchesLocked()V

    .line 1112
    const/4 v5, 0x0

    .line 1116
    .end local v0    # "N":I
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    .end local v3    # "lastTime":J
    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 4
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 549
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 547
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 824
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 826
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 825
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2660
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2663
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 2666
    const-string v0, "persist.sys.bootpackage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2667
    .local v7, "bootReason":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2673
    const-string v0, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.alarmclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2675
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 2676
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2690
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2692
    :cond_1
    monitor-exit v8

    .line 2693
    return-void

    .line 2682
    :cond_2
    const-string v0, "2"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2685
    :cond_3
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 2686
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2692
    .end local v7    # "bootReason":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1310
    array-length v0, p2

    if-lt p3, v0, :cond_0

    .line 1311
    const-string v0, "  Invalid argument!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    :goto_0
    return-void

    .line 1313
    :cond_0
    const-string v0, "on"

    aget-object v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    sput-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1315
    sput-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1316
    sput-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1317
    :cond_1
    const-string v0, "off"

    aget-object v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1318
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1319
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1320
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1322
    :cond_2
    const-string v0, "  Invalid argument!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 40
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    :goto_0
    return-void

    .line 1337
    :cond_0
    if-eqz p3, :cond_4

    .line 1338
    const/16 v34, 0x0

    .line 1339
    .local v34, "opti":I
    :goto_1
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v34

    if-ge v0, v4, :cond_1

    .line 1340
    aget-object v33, p3, v34

    .line 1341
    .local v33, "opt":Ljava/lang/String;
    if-eqz v33, :cond_1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2

    .line 1357
    .end local v33    # "opt":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v34

    if-ge v0, v4, :cond_4

    .line 1358
    aget-object v20, p3, v34

    .line 1359
    .local v20, "cmd":Ljava/lang/String;
    add-int/lit8 v34, v34, 0x1

    .line 1360
    const-string v4, "log"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1361
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1344
    .end local v20    # "cmd":Ljava/lang/String;
    .restart local v33    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v34, v34, 0x1

    .line 1345
    const-string v4, "-h"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1346
    const-string v4, "alarm manager dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    const-string v4, "  log  [on/off]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    const-string v4, "  Example:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    const-string v4, "  $adb shell dumpsys alarm log on"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    const-string v4, "  $adb shell dumpsys alarm log off"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1367
    .end local v33    # "opt":Ljava/lang/String;
    .end local v34    # "opti":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 1368
    :try_start_0
    const-string v4, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1370
    .local v9, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1371
    .local v7, "nowELAPSED":J
    new-instance v36, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v36, "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "nowRTC="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 1374
    const-string v4, "="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1375
    const-string v4, " nowELAPSED="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 1377
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v11, v9, v7

    add-long v31, v4, v11

    .line 1378
    .local v31, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v11, v9, v7

    add-long v29, v4, v11

    .line 1379
    .local v29, "nextNonWakeupRTC":J
    const-string v4, "Next alarm: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1380
    const-string v4, " = "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v29

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    const-string v4, "Next wakeup: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1382
    const-string v4, " = "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v31

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1385
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1386
    const-string v4, "Pending alarm batches: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerService$Batch;

    .line 1389
    .local v17, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v4, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 1390
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v6, "  "

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    goto :goto_2

    .line 1530
    .end local v7    # "nowELAPSED":J
    .end local v9    # "nowRTC":J
    .end local v17    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v29    # "nextNonWakeupRTC":J
    .end local v31    # "nextWakeupRTC":J
    .end local v36    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v4

    monitor-exit v39
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1394
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "nowRTC":J
    .restart local v29    # "nextNonWakeupRTC":J
    .restart local v31    # "nextWakeupRTC":J
    .restart local v36    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1395
    const-string v4, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1396
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v5, "  Recent problems"

    const-string v6, "    "

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1399
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1402
    :cond_6
    const/16 v4, 0xa

    new-array v0, v4, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v38, v0

    .line 1403
    .local v38, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v21, Lcom/android/server/AlarmManagerService$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1414
    .local v21, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v28, 0x0

    .line 1415
    .local v28, "len":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 1416
    .local v18, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1418
    .local v19, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1419
    .local v23, "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1420
    .local v24, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v28, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v28

    move-object/from16 v2, v24

    move-object/from16 v3, v21

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v35

    .line 1422
    .local v35, "pos":I
    :goto_4
    if-gez v35, :cond_9

    .line 1423
    move/from16 v0, v35

    neg-int v4, v0

    add-int/lit8 v35, v4, -0x1

    .line 1425
    :cond_9
    move-object/from16 v0, v38

    array-length v4, v0

    move/from16 v0, v35

    if-ge v0, v4, :cond_8

    .line 1426
    move-object/from16 v0, v38

    array-length v4, v0

    sub-int v4, v4, v35

    add-int/lit8 v22, v4, -0x1

    .line 1427
    .local v22, "copylen":I
    if-lez v22, :cond_a

    .line 1428
    add-int/lit8 v4, v35, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v35

    move-object/from16 v2, v38

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1430
    :cond_a
    aput-object v24, v38, v35

    .line 1431
    move-object/from16 v0, v38

    array-length v4, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_8

    .line 1432
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 1420
    .end local v22    # "copylen":I
    .end local v35    # "pos":I
    :cond_b
    const/16 v35, 0x0

    goto :goto_4

    .line 1437
    .end local v18    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v19    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v23    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "i$":Ljava/util/Iterator;
    :cond_c
    if-lez v28, :cond_10

    .line 1438
    const-string v4, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    .line 1440
    aget-object v24, v38, v25

    .line 1441
    .restart local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v4, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v4, :cond_d

    const-string v4, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1443
    :cond_d
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1444
    const-string v4, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1445
    const-string v4, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1446
    const-string v4, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1448
    const-string v4, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 1450
    const-string v4, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    :cond_e
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 1453
    const-string v4, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1439
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 1459
    .end local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v25    # "i":I
    :cond_10
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    const-string v4, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v37, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_11
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 1463
    .restart local v18    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1464
    .restart local v19    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v4, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v4, :cond_12

    const-string v4, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1466
    :cond_12
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1468
    const-string v4, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1469
    const-string v4, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 1472
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1473
    .restart local v23    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1475
    .end local v23    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_13
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1476
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_7
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_11

    .line 1477
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1478
    .restart local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v4, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v4, :cond_14

    const-string v4, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    :cond_14
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1481
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1482
    const-string v4, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1483
    const-string v4, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_15

    .line 1485
    const-string v4, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    :cond_15
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_16

    .line 1488
    const-string v4, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1476
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_7

    .line 1514
    .end local v18    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v19    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v25    # "i":I
    .end local v27    # "i$":Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 1515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1516
    .local v15, "now":J
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    const-string v4, "  power off alarms dump (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1518
    new-instance v4, Ljava/util/Date;

    move-wide v0, v15

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "PoweroffAlarms"

    move-object/from16 v11, p2

    invoke-static/range {v11 .. v16}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1530
    .end local v15    # "now":J
    :cond_18
    monitor-exit v39
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableDm()I
    .locals 2

    .prologue
    .line 2351
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2352
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 2366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2369
    :cond_0
    monitor-exit v1

    .line 2370
    const/4 v0, -0x1

    return v0

    .line 2369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 839
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    .line 843
    return-void

    .line 841
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public getPwsavEnable()Z
    .locals 2

    .prologue
    .line 2881
    const-string v0, "persist.sys.powersaving"

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->tryGetProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    .line 2882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPwsavEnable: mPwsavEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2883
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    return v0

    .line 2881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookForPackageFromAms(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2742
    if-nez p1, :cond_0

    .line 2743
    const/4 v0, 0x0

    .line 2746
    :goto_0
    return v0

    .line 2745
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2746
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2747
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1272
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1273
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    const/4 v2, 0x1

    .line 1277
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return v2

    .line 1271
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 560
    monitor-exit v1

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 32
    .param p1, "doValidate"    # Z

    .prologue
    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 565
    .local v31, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    iget-object v2, v2, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/AlarmManagerService$Injector;->clearBootWakeupAlarms(Ljava/util/ArrayList;)V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService$Injector;->access$200(Ljava/util/ArrayList;)V

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 574
    .local v28, "nowElapsed":J
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 575
    .local v30, "oldBatches":I
    const/16 v26, 0x0

    .local v26, "batchNum":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 576
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerService$Batch;

    .line 577
    .local v25, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v23

    .line 578
    .local v23, "N":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 579
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v24

    .line 580
    .local v24, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2, v3, v6}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v4

    .line 593
    .local v4, "whenElapsed":J
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 595
    move-wide v14, v4

    .line 610
    .local v14, "maxElapsed":J
    :goto_2
    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    move/from16 v22, v0

    move-object/from16 v6, p0

    move-wide v10, v4

    move/from16 v20, p1

    invoke-direct/range {v6 .. v22}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Z)V

    .line 578
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 600
    .end local v14    # "maxElapsed":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    if-eqz v2, :cond_1

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v10}, Lcom/mediatek/common/amplus/IAlarmMangerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;)J

    move-result-wide v14

    .restart local v14    # "maxElapsed":J
    goto :goto_2

    .line 605
    .end local v14    # "maxElapsed":J
    :cond_1
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v14, v4, v2

    .restart local v14    # "maxElapsed":J
    :goto_3
    goto :goto_2

    .end local v14    # "maxElapsed":J
    :cond_2
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, v28

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    goto :goto_3

    .line 575
    .end local v4    # "whenElapsed":J
    .end local v24    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 624
    .end local v23    # "N":I
    .end local v25    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v27    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mBootAlarmService:Lcom/android/server/BootAlarmService;

    invoke-virtual {v2}, Lcom/android/server/BootAlarmService;->initBootAlarmsLocked()Z

    .line 626
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 12
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1836
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1837
    .local v11, "numBatches":I
    const/4 v9, 0x0

    .local v9, "nextBatch":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 1838
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 1839
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_1

    .line 1852
    .end local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 1843
    .restart local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1844
    .local v10, "numAlarms":I
    const/4 v8, 0x0

    .local v8, "nextAlarm":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 1845
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1846
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V

    .line 1849
    .local v0, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1844
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1837
    .end local v0    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1205
    if-nez p1, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1209
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1210
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromAms(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2730
    if-nez p1, :cond_0

    .line 2736
    :goto_0
    return-void

    .line 2733
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2734
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2735
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1214
    const/4 v1, 0x0

    .line 1215
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1216
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1217
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1218
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1219
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1215
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1223
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1224
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_2

    .line 1225
    const-string v3, "AlarmManager"

    const-string v4, "remove(operation) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1228
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1230
    :cond_3
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1235
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1236
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1237
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1238
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1234
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1242
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1243
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_2

    .line 1244
    const-string v3, "AlarmManager"

    const-string v4, "remove(package) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1247
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1249
    :cond_3
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1252
    const/4 v1, 0x0

    .line 1253
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1254
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1255
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1256
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1257
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1253
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1261
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1262
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_2

    .line 1263
    const-string v3, "AlarmManager"

    const-string v4, "remove(user) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1266
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1268
    :cond_3
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 848
    if-eqz p9, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "AlarmManager.set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_0
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    .line 855
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V
    .locals 39
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 859
    if-nez p8, :cond_0

    .line 860
    const-string v4, "AlarmManager"

    const-string v11, "set/setRepeating ignored because there is no intent"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_0
    return-void

    .line 865
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v11, -0x1

    if-ne v4, v11, :cond_1

    .line 866
    const-string v4, "AlarmManager"

    const-string v11, "IPO Shutdown so drop the alarm"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_1
    const-wide/32 v11, 0x2932e00

    cmp-long v4, p4, v11

    if-lez v4, :cond_2

    .line 874
    const-string v4, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Window length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-wide/32 p4, 0x36ee80

    .line 879
    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v4, p2, v11

    if-gez v4, :cond_3

    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    .line 881
    .local v36, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 882
    .local v34, "what":J
    const-string v4, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid alarm trigger time! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v34

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-wide/16 p2, 0x0

    .line 890
    .end local v34    # "what":J
    .end local v36    # "who":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    # invokes: Lcom/android/server/AlarmManagerService$Injector;->checkoutBootAlarm(ILandroid/content/Context;)I
    invoke-static {v0, v4}, Lcom/android/server/AlarmManagerService$Injector;->access$400(ILandroid/content/Context;)I

    move-result v33

    .line 891
    .local v33, "t":I
    const/4 v4, -0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_5

    .line 893
    const-wide/16 p4, 0x0

    .line 894
    const-wide/16 p6, 0x0

    .line 902
    :goto_1
    const/4 v4, 0x7

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 903
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v11, -0x1

    if-ne v4, v11, :cond_6

    .line 904
    const-string v4, "AlarmManager"

    const-string v11, "alarm driver not open ,return!"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 896
    :cond_5
    move/from16 p1, v33

    goto :goto_1

    .line 908
    :cond_6
    const-string v4, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alarm set type 7 8, package name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v31

    .line 911
    .local v31, "packageName":Ljava/lang/String;
    const/16 v32, 0x0

    .line 912
    .local v32, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 913
    .local v29, "nowTime":J
    cmp-long v4, p2, v29

    if-gez v4, :cond_7

    .line 914
    const-string v4, "AlarmManager"

    const-string v11, "power off alarm set time is wrong!"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 923
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 929
    const/4 v3, 0x0

    .line 930
    .local v3, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v4, "com.android.alarmclock"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 931
    move-wide/from16 v5, p2

    .line 932
    .local v5, "poweroffAlarmTriggerTime":J
    const-wide/16 v11, 0x0

    cmp-long v4, v5, v11

    if-gtz v4, :cond_b

    .line 933
    const-wide/16 v5, 0x0

    .line 939
    :goto_2
    new-instance v3, Lcom/android/server/AlarmManagerService$Alarm;

    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move/from16 v4, p1

    move-wide/from16 v13, p6

    move-object/from16 v15, p8

    move-object/from16 v16, p10

    invoke-direct/range {v3 .. v16}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 944
    .end local v5    # "poweroffAlarmTriggerTime":J
    .restart local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v28

    .line 945
    .local v28, "index":I
    if-nez v28, :cond_8

    .line 946
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 948
    :cond_8
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    const/16 p1, 0x0

    .line 954
    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v28    # "index":I
    .end local v29    # "nowTime":J
    .end local v31    # "packageName":Ljava/lang/String;
    .end local v32    # "setPackageName":Ljava/lang/String;
    :cond_9
    if-ltz p1, :cond_a

    const/4 v4, 0x3

    move/from16 v0, p1

    if-le v0, v4, :cond_e

    .line 955
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid alarm type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 934
    .restart local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v5    # "poweroffAlarmTriggerTime":J
    .restart local v29    # "nowTime":J
    .restart local v31    # "packageName":Ljava/lang/String;
    .restart local v32    # "setPackageName":Ljava/lang/String;
    :cond_b
    const-wide/32 v11, 0xea60

    sub-long v11, v5, v11

    cmp-long v4, v29, v11

    if-lez v4, :cond_c

    .line 935
    const-wide/32 v11, 0xea60

    add-long v5, v29, v11

    goto :goto_2

    .line 937
    :cond_c
    const-wide/32 v11, 0xea60

    sub-long/2addr v5, v11

    goto :goto_2

    .line 941
    .end local v5    # "poweroffAlarmTriggerTime":J
    :cond_d
    :try_start_1
    new-instance v3, Lcom/android/server/AlarmManagerService$Alarm;

    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v7, v3

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v17, p6

    move-object/from16 v19, p8

    move-object/from16 v20, p10

    invoke-direct/range {v7 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .restart local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_3

    .line 948
    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :catchall_0
    move-exception v4

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 958
    .end local v29    # "nowTime":J
    .end local v31    # "packageName":Ljava/lang/String;
    .end local v32    # "setPackageName":Ljava/lang/String;
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 959
    .local v7, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v9

    .line 962
    .local v9, "triggerElapsed":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    if-eqz v4, :cond_10

    .line 964
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/common/amplus/IAlarmMangerPlus;

    .end local v7    # "nowElapsed":J
    move/from16 v8, p1

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-object/from16 v15, p8

    invoke-interface/range {v7 .. v15}, Lcom/mediatek/common/amplus/IAlarmMangerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;)J

    move-result-wide v19

    .line 973
    .local v19, "maxElapsed":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v38, v0

    monitor-enter v38

    .line 974
    :try_start_2
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v4, :cond_f

    .line 975
    const-string v4, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " triggerAtTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " maxElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " interval="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " standalone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_f
    const/16 v25, 0x1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_13

    const/16 v27, 0x1

    :goto_5
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide v15, v9

    move-wide/from16 v17, p4

    move-wide/from16 v21, p6

    move-object/from16 v23, p8

    move/from16 v24, p9

    move-object/from16 v26, p10

    invoke-direct/range {v11 .. v27}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Z)V

    .line 988
    monitor-exit v38

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v38
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 965
    .end local v19    # "maxElapsed":J
    .restart local v7    # "nowElapsed":J
    :cond_10
    const-wide/16 v11, 0x0

    cmp-long v4, p4, v11

    if-nez v4, :cond_11

    .line 966
    move-wide/from16 v19, v9

    .restart local v19    # "maxElapsed":J
    goto/16 :goto_4

    .line 967
    .end local v19    # "maxElapsed":J
    :cond_11
    const-wide/16 v11, 0x0

    cmp-long v4, p4, v11

    if-gez v4, :cond_12

    move-wide/from16 v11, p6

    .line 968
    invoke-static/range {v7 .. v12}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v19

    .restart local v19    # "maxElapsed":J
    goto/16 :goto_4

    .line 970
    .end local v19    # "maxElapsed":J
    :cond_12
    add-long v19, v9, p4

    .restart local v19    # "maxElapsed":J
    goto/16 :goto_4

    .line 980
    .end local v7    # "nowElapsed":J
    :cond_13
    const/16 v27, 0x0

    goto :goto_5
.end method

.method public setPwsavEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPwsavEnable: mPwsavEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2857
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-ne v0, p1, :cond_1

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 2860
    :cond_1
    const-string v1, "persist.sys.powersaving"

    if-eqz p1, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->trySetProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPwsavEnable: mPwsavEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlackListInited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V

    .line 2866
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z

    if-eqz v0, :cond_4

    .line 2867
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mBlackListInited:Z

    if-nez v0, :cond_3

    .line 2869
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->getBlackListFromDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initBlackListConfig()Z

    goto :goto_0

    .line 2860
    :cond_2
    const-string v0, "0"

    goto :goto_1

    .line 2873
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    goto :goto_0

    .line 2876
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    goto :goto_0
.end method

.method protected native setRTCInternal(IJ)I
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1161
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 10
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1164
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SET_TIME_ZONE"

    const-string v9, "setTimeZone"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1170
    .local v3, "oldId":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 1200
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    :goto_0
    return-void

    .line 1171
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1174
    .local v6, "zone":Ljava/util/TimeZone;
    const/4 v5, 0x0

    .line 1175
    .local v5, "timeZoneWasChanged":Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1176
    :try_start_2
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1178
    :cond_1
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 1179
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timezone changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_2
    const/4 v5, 0x1

    .line 1182
    const-string v7, "persist.sys.timezone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1188
    .local v1, "gmtOffset":I
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v8, 0xea60

    div-int v8, v1, v8

    neg-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 1189
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1191
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1193
    if-eqz v5, :cond_4

    .line 1194
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1196
    const-string v7, "time-zone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1200
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1189
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "gmtOffset":I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1200
    .end local v5    # "timeZoneWasChanged":Z
    .end local v6    # "zone":Ljava/util/TimeZone;
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 2016
    if-eqz p2, :cond_0

    .line 2017
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2032
    :goto_0
    return-void

    .line 2021
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 2023
    .local v0, "uid":I
    if-ltz v0, :cond_1

    .line 2024
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2027
    .end local v0    # "uid":I
    :catch_0
    move-exception v1

    .line 2031
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0
.end method
