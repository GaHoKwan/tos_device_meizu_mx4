.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final CRITICAL_LOW_THRESHOLD_BYTES:I = 0x400000

.field private static final DATA_PATH:Ljava/io/File;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x3200000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEVICE_MEMORY_CRITICAL_LOW:I = 0x2

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final EMAIL_CHECK_SIZE:I = 0x3200000

.field private static final EXCEPTION_LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final FULL_THRESHOLD_BYTES:I = 0x500000

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mCacheSize:J

.field private mCheckAppSize:Z

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mCodeSize:J

.field private mConfigChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDataSize:J

.field private mDialog:Landroid/app/AlertDialog;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private mGetSize:Z

.field mHandler:Landroid/os/Handler;

.field private mIPOBootup:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCriticalLowLevel:I

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field private mMemLowThreshold:J

.field private mQueryDataFs:Landroid/os/StatFs;

.field private mResolver:Landroid/content/ContentResolver;

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mStrings:[Ljava/lang/String;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    .line 121
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    .line 122
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4000000

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 490
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 124
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 125
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 151
    iput-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    .line 156
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    .line 158
    iput-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 159
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    .line 160
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    .line 161
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 163
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    .line 164
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    .line 165
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    .line 166
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    .line 167
    iput-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    .line 168
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    .line 180
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 444
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 735
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 492
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 493
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    .line 495
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 496
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 497
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 498
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    .line 500
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 502
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 503
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 507
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 519
    const-wide/32 v1, 0x500000

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    .line 521
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 522
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 524
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 525
    invoke-direct {p0, v8}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 527
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 528
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 529
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    return-wide p1
.end method

.method private final cancelFullNotification()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 607
    return-void
.end method

.method private final cancelNotification()V
    .locals 4

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 586
    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 588
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 590
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 11
    .param p1, "checkCache"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 331
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v5, :cond_1

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v1, v5, v7

    .line 335
    .local v1, "diffTime":J
    const-wide/32 v5, 0x927c0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 336
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Thread that clears cache file seems to run for ever"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v1    # "diffTime":J
    :cond_0
    :goto_0
    const-wide/16 v5, 0x7530

    invoke-direct {p0, v10, v5, v6}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 441
    return-void

    .line 339
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 344
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-nez v5, :cond_2

    .line 346
    :try_start_0
    const-class v5, Lcom/mediatek/common/lowstorage/ILowStorageExt;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iput-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    .line 347
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-interface {v5, v6, v7, v8}, Lcom/mediatek/common/lowstorage/ILowStorageExt;->init(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-eqz v5, :cond_3

    .line 353
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-interface {v5, v6, v7}, Lcom/mediatek/common/lowstorage/ILowStorageExt;->checkStorage(J)V

    .line 357
    :cond_3
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_9

    .line 359
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    if-eqz v5, :cond_4

    .line 360
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 361
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 362
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.email"

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 364
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    if-eqz p1, :cond_8

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 381
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 382
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    .line 411
    :cond_5
    :goto_2
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_a

    .line 412
    const-string v5, "DeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running on storage full,freeStorage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v5, :cond_6

    .line 414
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    .line 415
    iput-boolean v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 425
    :cond_6
    :goto_3
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 426
    .local v0, "criticalLowLevel":I
    iget v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    if-ge v0, v5, :cond_7

    .line 427
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    mul-int/lit16 v7, v7, 0x400

    mul-int/lit16 v7, v7, 0x400

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    if-eqz v5, :cond_7

    .line 428
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    const-string v5, "DeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Show warning dialog, critical level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    .line 433
    :cond_7
    iget v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    if-ge v5, v0, :cond_0

    .line 434
    const/4 v5, 0x4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    goto/16 :goto_0

    .line 348
    .end local v0    # "criticalLowLevel":I
    :catch_0
    move-exception v3

    .line 349
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Failed to create LowStorageExt instance."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 389
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 390
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v5, :cond_5

    .line 393
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Running low on memory. Sending notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 395
    iput-boolean v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_2

    .line 402
    :cond_9
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 403
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v5, :cond_5

    .line 404
    iput-boolean v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 405
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    .line 406
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Memory available. Cancelling notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 408
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_2

    .line 418
    :cond_a
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v5, :cond_6

    .line 419
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 420
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto/16 :goto_3
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 312
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 314
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 317
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 322
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private getMemThreshold()J
    .locals 8

    .prologue
    .line 472
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_percentage"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 477
    .local v2, "value":J
    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x64

    div-long v2, v4, v6

    .line 478
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_max_bytes"

    const/high16 v6, 0x3200000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 483
    .local v0, "maxValue":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .end local v2    # "value":J
    :goto_0
    return-wide v2

    .restart local v2    # "value":J
    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 460
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 464
    return-void

    :cond_0
    move v0, v2

    .line 461
    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 20

    .prologue
    .line 259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 266
    :goto_0
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "debugFreeMem":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 268
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 271
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    .line 275
    .local v7, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 276
    .local v2, "currTime":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_2

    .line 278
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 279
    const-wide/16 v11, -0x1

    .local v11, "mFreeSystem":J
    const-wide/16 v9, -0x1

    .line 281
    .local v9, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    .line 288
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    .line 294
    :goto_2
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 298
    .end local v9    # "mFreeCache":J
    .end local v11    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 302
    .local v13, "threshold":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 303
    .local v5, "delta":J
    cmp-long v15, v5, v13

    if-gtz v15, :cond_3

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    .line 304
    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 305
    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 307
    :cond_4
    return-void

    .line 291
    .end local v5    # "delta":J
    .end local v13    # "threshold":J
    .restart local v9    # "mFreeCache":J
    .restart local v11    # "mFreeSystem":J
    :catch_0
    move-exception v15

    goto :goto_2

    .line 284
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 262
    .end local v2    # "currTime":J
    .end local v4    # "debugFreeMem":Ljava/lang/String;
    .end local v7    # "freeMemLogInterval":J
    .end local v9    # "mFreeCache":J
    .end local v11    # "mFreeSystem":J
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private final sendFullNotification()V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 598
    return-void
.end method

.method private final sendNotification()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 539
    const/16 v0, 0xab9

    iget-wide v12, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 547
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-direct {v6, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v6, "cName":Landroid/content/ComponentName;
    :goto_0
    invoke-static {v6}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 555
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string v0, "memory"

    iget-wide v12, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 557
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 560
    .local v9, "mNotificationMgr":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x205009f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 562
    .local v11, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403f1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 564
    .local v7, "details":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 566
    .local v8, "intent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 567
    .local v10, "notification":Landroid/app/Notification;
    const v0, 0x10806a8

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 568
    const-wide/16 v0, 0x0

    iput-wide v0, v10, Landroid/app/Notification;->when:J

    .line 569
    iput-object v11, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 570
    iget v0, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 571
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v11, v7, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 572
    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v0, v10, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 575
    return-void

    .line 551
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "cName":Landroid/content/ComponentName;
    .end local v7    # "details":Ljava/lang/CharSequence;
    .end local v8    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$StorageUseActivity"

    invoke-direct {v6, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "cName":Landroid/content/ComponentName;
    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void

    .line 683
    :cond_0
    const-string v0, "Current DeviceStorageMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    const-string v0, "  mFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    const-string v0, " mTotalMemory="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    const-string v0, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    const-string v0, "  mLastReportedFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    const-string v0, " mLastReportedFreeMemTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 693
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 694
    const-string v0, "  mLowMemFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 695
    const-string v0, " mMemFullFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 696
    const-string v0, "  mClearSucceeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 697
    const-string v0, " mClearingCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 698
    const-string v0, "  mMemLowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    const-string v0, " mMemFullThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    const-string v0, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    const-string v0, " mMemCacheTrimToThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 625
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryCriticalLow()Z
    .locals 7

    .prologue
    .line 715
    const-wide/16 v1, 0x0

    .line 717
    .local v1, "tempFreeMem":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    sget-object v4, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 718
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 725
    :goto_0
    const-wide/32 v3, 0xa00000

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 726
    const/4 v3, 0x1

    .line 728
    :goto_1
    return v3

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 723
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Failed to get current free storage size."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    .line 610
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 611
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 616
    :goto_0
    return-void

    .line 615
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
