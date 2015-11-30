.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$ExternalVolumeState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$CDRomState;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field public static final ACTION_EXTERNAL_VOLUME_IDLE:Ljava/lang/String; = "action.external.volume.idle"

.field public static final ACTION_EXTERNAL_VOLUME_MOUNTED:Ljava/lang/String; = "action.external.volume.mounted"

.field public static final ACTION_EXTERNAL_VOLUME_REMOVED:Ljava/lang/String; = "action.external.volume.removed"

.field public static final ACTION_EXTERNAL_VOLUME_UNMOUNTING:Ljava/lang/String; = "action.external.volume.unmounting"

.field private static final AUTO_INSTALL_VERIFY:Ljava/lang/String; = "/data/app/autoVerify/"

.field private static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final EXTERNAL_OTG:Ljava/lang/String;

.field private static final EXTERNAL_SD1:Ljava/lang/String;

.field private static final EXTERNAL_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final FIRST_BOOT_MOUNTED:Ljava/lang/String; = "first_boot_mounted"

.field private static final FORMAT_WIPE:Z = true

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final LABEL_SD1:Ljava/lang/String; = "sdcard0"

.field private static final LABEL_SD2:Ljava/lang/String; = "sdcard1"

.field private static final LABLE_OTG:Ljava/lang/String; = "usbotg"

.field private static final LABLE_SD:Ljava/lang/String; = "sdcard"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_FILE_SIZE:J = 0xffffffffL

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final MEDIA_EJECT_SHUTDOWN_TIME:I = 0x1f4

.field private static final MEDIA_EJECT_TIME:I = 0x5dc

.field private static final MOUNT_UNMOUNT_ALL:Ljava/lang/String; = "mount_unmount_all"

.field private static final MTP_RESERVE_SPACE:I = 0xa

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final OMADM_SD_FORMAT:Ljava/lang/String; = "com.mediatek.dm.LAWMO_WIPE"

.field private static final OMADM_SYNC_LOCK:Ljava/lang/Object;

.field private static final OMADM_USB_DISABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field private static final OMADM_USB_ENABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final OTG_EVENT605_LENGTH:I = 0xd

.field private static final OTG_EVENT632_LENGTH:I = 0x7

.field private static final OTG_PATH_PREFIX:Ljava/lang/String; = "/data/system/scsi"

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PRIVACY_PROTECTION_LOCK:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_LOCK"

.field private static final PRIVACY_PROTECTION_UNLOCK:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_UNLOCK"

.field private static final PRIVACY_PROTECTION_WIPE:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

.field private static final PRIVACY_PROTECTION_WIPE_DONE:Ljava/lang/String; = "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

.field private static final PROP_SD_SWAP:Ljava/lang/String; = "vold_swap_state"

.field private static final PROP_SD_SWAP_FALSE:Ljava/lang/String; = "0"

.field private static final PROP_SD_SWAP_TRUE:Ljava/lang/String; = "1"

.field private static final PROP_SWAPPING:Ljava/lang/String; = "sys.sd.swapping"

.field private static final PROP_UNMOUNTING:Ljava/lang/String; = "sys.sd.unmounting"

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBootCompleted:Z

.field private final mBootIPOReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mDiskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private mExternalVolumeState:Ljava/lang/String;

.field private mFirstTimeSDSwapIntent:Z

.field private mFirstTime_SwapStateForSDSwapMountPoint:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAnyAllowUMS:Z

.field private mIsTurnOnOffUsb:Z

.field private mIsUsbConnected:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountAll:Z

.field private mMountSwap:Z

.field private final mOTGReceiver:Landroid/content/BroadcastReceiver;

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUserId:I

.field private mPendingAutoInstall:Z

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field mPower:Landroid/os/PowerManager;

.field private final mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private mSD1BootMounted:Z

.field private mSD2BootMounted:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mSetDefaultEnable:Z

.field private mShutdownCount:I

.field private mShutdownRet:I

.field private mShutdownSD:Z

.field private mSwapStateForSDSwapIntent:Z

.field private mSwapStateForSDSwapMountPoint:Z

.field private volatile mSystemReady:Z

.field private mUMSCount:I

.field private mUmountSdByUserSwitch:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private mUnmountPrimary:Z

.field private mUnmountSwap:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumePrimary:Landroid/os/storage/StorageVolume;

.field private mVolumeSecondary:Landroid/os/storage/StorageVolume;

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 320
    const-string v0, "/storage/emulated/0"

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    .line 323
    sget-object v0, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    .line 489
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2773
    invoke-direct/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mPendingAutoInstall:Z

    .line 158
    new-instance v2, Lcom/android/server/MountService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    const-string v2, "externalvolumeremoved"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mExternalVolumeState:Ljava/lang/String;

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    .line 292
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 302
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    .line 305
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 316
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 317
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 318
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 333
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 340
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mShutdownRet:I

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 345
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 346
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    .line 347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 348
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 361
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 365
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 366
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 368
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 383
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mOldUserId:I

    .line 384
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mUserId:I

    .line 392
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 413
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 492
    new-instance v2, Lcom/android/server/MountService$DefaultContainerConnection;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 972
    new-instance v2, Lcom/android/server/MountService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1011
    new-instance v2, Lcom/android/server/MountService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 1023
    new-instance v2, Lcom/android/server/MountService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    .line 1096
    new-instance v2, Lcom/android/server/MountService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    .line 1118
    new-instance v2, Lcom/android/server/MountService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDMReceiver:Landroid/content/BroadcastReceiver;

    .line 1198
    new-instance v2, Lcom/android/server/MountService$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    .line 1322
    new-instance v2, Lcom/android/server/MountService$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$9;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    .line 2774
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 2776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2777
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 2778
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2781
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2783
    new-instance v14, Landroid/os/HandlerThread;

    const-string v2, "MountService"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2784
    .local v14, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 2785
    new-instance v2, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 2788
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    .line 2789
    .local v19, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2790
    const-string v2, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2793
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2797
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 2798
    .local v16, "otgFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2804
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 2805
    .local v12, "bootFilter":Landroid/content/IntentFilter;
    const-string v2, "meizu.intent.action.AUTO_INSTALL_SUCCESSFUL"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2806
    const-string v2, "meizu.intent.action.HOME_LAUNCHED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2813
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/storage/StorageVolume;

    .line 2814
    .local v20, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2820
    .end local v20    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2831
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 2832
    .local v17, "privacyProtectionFilter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.ppl.NOTIFY_LOCK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2833
    const-string v2, "com.mediatek.ppl.NOTIFY_UNLOCK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2834
    const-string v2, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2838
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 2839
    .local v13, "bootIPOFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2840
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v13, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2844
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2845
    .local v5, "idleMaintenanceFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2850
    new-instance v2, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 2857
    new-instance v6, Lcom/android/server/NativeDaemonConnector;

    const-string v8, "vold"

    const/16 v9, 0x1f4

    const-string v10, "VoldConnector"

    const/16 v11, 0x19

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2859
    new-instance v18, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "VoldConnector"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2860
    .local v18, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 2866
    return-void

    .line 2778
    .end local v5    # "idleMaintenanceFilter":Landroid/content/IntentFilter;
    .end local v12    # "bootFilter":Landroid/content/IntentFilter;
    .end local v13    # "bootIPOFilter":Landroid/content/IntentFilter;
    .end local v14    # "hthread":Landroid/os/HandlerThread;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "otgFilter":Landroid/content/IntentFilter;
    .end local v17    # "privacyProtectionFilter":Landroid/content/IntentFilter;
    .end local v18    # "thread":Ljava/lang/Thread;
    .end local v19    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2820
    .restart local v12    # "bootFilter":Landroid/content/IntentFilter;
    .restart local v14    # "hthread":Landroid/os/HandlerThread;
    .restart local v16    # "otgFilter":Landroid/content/IntentFilter;
    .restart local v19    # "userFilter":Landroid/content/IntentFilter;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static synthetic access$002(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/MountService;->mPendingAutoInstall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->startAutoInstall()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1210(Lcom/android/server/MountService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/MountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1610(Lcom/android/server/MountService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return p1
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/MountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/MountService;->mOldUserId:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/MountService;->mUserId:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/MountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/MountService;->mUserId:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$3500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->enableUSBFuction(Z)V

    return-void
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->enableDefaultPathDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetCDRomState()I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/storage/StorageVolume;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3964
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3965
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3967
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 3968
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3969
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3981
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3996
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    return-void

    .line 3971
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3972
    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3973
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3982
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 3987
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3988
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3989
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3993
    :cond_3
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 2740
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 2743
    .local v0, "existing":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 2744
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_0
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    .line 4426
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4467
    .end local p0    # "canonicalPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4430
    .restart local p0    # "canonicalPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4433
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4436
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 4438
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 4441
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4442
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4450
    :goto_1
    const-string v2, "Android/obb"

    .line 4451
    .local v2, "obbPath":Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4452
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4454
    if-eqz p2, :cond_3

    .line 4455
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4443
    .end local v2    # "obbPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4457
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4458
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4464
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_4
    if-eqz p2, :cond_5

    .line 4465
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4467
    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2720
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_0

    .line 2721
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2724
    :cond_0
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2725
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2726
    .local v0, "path":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 2727
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2728
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2730
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 2731
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2737
    :goto_0
    return-void

    .line 2734
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2448
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "wipe"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2460
    :goto_0
    return v2

    .line 2453
    :catch_0
    move-exception v1

    .line 2454
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2455
    .local v0, "code":I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    .line 2456
    const/4 v2, -0x2

    goto :goto_0

    .line 2457
    :cond_0
    const/16 v2, 0x193

    if-ne v0, v2, :cond_1

    .line 2458
    const/4 v2, -0x4

    goto :goto_0

    .line 2460
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private doGetCDRomState()I
    .locals 15

    .prologue
    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4587
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v11, "cd-rom"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "status"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4593
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v4

    .line 4594
    .local v4, "rawEvent":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4595
    .local v5, "tok":[Ljava/lang/String;
    array-length v10, v5

    if-ge v10, v9, :cond_0

    .line 4596
    const-string v7, "MountService"

    const-string v8, "Malformed response get CD rom ststus"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v4    # "rawEvent":Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :goto_0
    return v6

    .line 4588
    :catch_0
    move-exception v2

    .line 4589
    .local v2, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "Failed to get CD rom ststus!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4602
    .end local v2    # "ex":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v4    # "rawEvent":Ljava/lang/String;
    .restart local v5    # "tok":[Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 4607
    .local v0, "code":I
    const/16 v10, 0xd6

    if-ne v0, v10, :cond_5

    .line 4608
    const-string v10, "Shared"

    aget-object v11, v5, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v6, v7

    .line 4609
    goto :goto_0

    .line 4603
    .end local v0    # "code":I
    :catch_1
    move-exception v3

    .line 4604
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "MountService"

    const-string v10, "Error parsing code %s"

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v11, v5, v7

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4610
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    :cond_1
    const-string v7, "Unshared"

    aget-object v10, v5, v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v8

    .line 4611
    goto :goto_0

    .line 4612
    :cond_2
    const-string v7, "Sharing"

    aget-object v10, v5, v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v9

    .line 4613
    goto :goto_0

    .line 4614
    :cond_3
    const-string v7, "Unsharing"

    aget-object v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4615
    const/4 v6, 0x3

    goto :goto_0

    .line 4616
    :cond_4
    const-string v7, "Not_Exist"

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4617
    const/4 v6, 0x4

    goto :goto_0

    .line 4620
    :cond_5
    const-string v9, "MountService"

    const-string v10, "Unexpected response code %d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4623
    :cond_6
    const-string v7, "MountService"

    const-string v8, "Got an empty response"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2468
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2474
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_0

    .line 2475
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2477
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    return v2

    .line 2469
    :catch_0
    move-exception v1

    .line 2470
    .local v1, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2261
    const/4 v4, 0x0

    .line 2264
    .local v4, "rc":I
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2265
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 2266
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2268
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume: Mouting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :try_start_1
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2274
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume  cmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2316
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/MountService;->mPendingAutoInstall:Z

    if-eqz v6, :cond_1

    if-nez v4, :cond_1

    .line 2317
    invoke-direct {p0}, Lcom/android/server/MountService;->startAutoInstall()V

    .line 2318
    iput-boolean v10, p0, Lcom/android/server/MountService;->mPendingAutoInstall:Z

    .line 2321
    :cond_1
    return v4

    .line 2266
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2276
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v3

    .line 2280
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2281
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 2282
    .local v2, "code":I
    const/16 v6, 0x191

    if-ne v2, v6, :cond_2

    .line 2286
    const/4 v4, -0x2

    .line 2310
    :goto_1
    if-eqz v0, :cond_0

    .line 2311
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2287
    :cond_2
    const/16 v6, 0x192

    if-ne v2, v6, :cond_3

    .line 2288
    const-string v6, "MountService"

    const-string v7, " updating volume state :: media nofs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const-string v6, "nofs"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2293
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 2294
    const/4 v4, -0x3

    goto :goto_1

    .line 2295
    :cond_3
    const/16 v6, 0x193

    if-ne v2, v6, :cond_4

    .line 2296
    const-string v6, "MountService"

    const-string v7, "updating volume state media corrupt"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const-string v6, "unmountable"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2301
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 2302
    const/4 v4, -0x4

    goto :goto_1

    .line 2304
    :cond_4
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private doSDSwapVolumeUpdate()V
    .locals 2

    .prologue
    .line 4679
    const-string v0, "MountService"

    const-string v1, "doSDSwapVolumeUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    const-string v0, "MountService"

    const-string v1, "MTK_2SDCARD_SWAP not enable!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    return-void
.end method

.method private doShareSDVolumeUpdate()V
    .locals 0

    .prologue
    .line 4661
    return-void
.end method

.method private doShareUnshareCDRom(Z)V
    .locals 6
    .param p1, "share"    # Z

    .prologue
    .line 4573
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareCDRom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4575
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cd-rom"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string v1, "share"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4579
    :goto_1
    return-void

    .line 4575
    :cond_0
    const-string v1, "unshare"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4576
    :catch_0
    move-exception v0

    .line 4577
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare CD Rom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1423
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1428
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    const-string v1, "share"

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1432
    :goto_1
    return-void

    .line 1428
    :cond_1
    const-string v1, "unshare"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/16 v3, 0x194

    const/4 v4, 0x0

    .line 2336
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2387
    :goto_0
    return v3

    .line 2346
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2347
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2351
    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2352
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2356
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2357
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_2

    .line 2361
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2372
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 2374
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2375
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2376
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 2377
    goto :goto_0

    .line 2363
    :cond_2
    if-eqz p2, :cond_3

    .line 2367
    :try_start_2
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2378
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 2381
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2382
    .local v1, "code":I
    if-ne v1, v3, :cond_4

    .line 2383
    const/4 v3, -0x5

    goto :goto_0

    .line 2370
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_3
    :try_start_3
    const-string v5, "swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2376
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2384
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_4
    const/16 v3, 0x195

    if-ne v1, v3, :cond_5

    .line 2385
    const/4 v3, -0x7

    goto :goto_0

    .line 2387
    :cond_5
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private doUnmountVolumeForUserSwitch(Ljava/lang/String;ZZ)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2400
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2401
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2405
    sget-object v4, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2406
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2410
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2411
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_1

    .line 2415
    const-string v4, "force_and_revert"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2426
    :goto_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 2428
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2430
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2441
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    return v3

    .line 2417
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1
    if-eqz p2, :cond_2

    .line 2421
    :try_start_2
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2432
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 2435
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2436
    .local v1, "code":I
    const/16 v3, 0x194

    if-ne v1, v3, :cond_3

    .line 2437
    const/4 v3, -0x5

    goto :goto_1

    .line 2424
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_2
    :try_start_3
    const-string v4, "swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2430
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2438
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_3
    const/16 v3, 0x195

    if-ne v1, v3, :cond_4

    .line 2439
    const/4 v3, -0x7

    goto :goto_1

    .line 2441
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private enableDefaultPathDialog()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 4972
    const/4 v2, 0x0

    .line 4973
    .local v2, "mountCount":I
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4974
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4975
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4976
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4977
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4978
    .local v3, "state":Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableDefaultPathDialog state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4980
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4983
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 4984
    if-le v2, v4, :cond_2

    :goto_1
    return v4

    .line 4983
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4984
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableDefaultToast()Z
    .locals 5

    .prologue
    .line 4992
    const/4 v1, 0x0

    .line 4993
    .local v1, "internal":Z
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4994
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 4995
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4996
    const/4 v1, 0x1

    .line 5000
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v4

    .line 5001
    return v1

    .line 5000
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private enableUSBFuction(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 4560
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4562
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "USB"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const-string v2, "enable"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4567
    :goto_1
    return-void

    .line 4562
    :cond_0
    const-string v2, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4563
    :catch_0
    move-exception v1

    .line 4564
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 4565
    .local v0, "code":I
    const-string v2, "MountService"

    const-string v3, "enableUSBFunction failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private findDiskIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Meizu USB-OTG"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5157
    iget-object v3, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5158
    .local v2, "size":I
    const/4 v1, -0x1

    .line 5159
    .local v1, "removeIndex":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5160
    iget-object v3, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    iget-object v3, v3, Landroid/os/storage/DiskInfo;->mDiskLabel:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5161
    move v1, v0

    .line 5165
    :cond_0
    return v1

    .line 5159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4951
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4952
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0}, Lcom/mediatek/common/storage/IStorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .locals 4

    .prologue
    .line 2758
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2759
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 2760
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2761
    monitor-exit v3

    .line 2765
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    .line 2764
    :cond_1
    monitor-exit v3

    .line 2765
    const/4 v1, 0x0

    goto :goto_0

    .line 2764
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSwapState()Z
    .locals 3

    .prologue
    .line 4962
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4963
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0}, Lcom/mediatek/common/storage/IStorageManagerEx;->getSdSwapState()Z

    move-result v1

    return v1
.end method

.method private getUMSPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4669
    const-string v0, "/storage/sdcard1"

    return-object v0
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 3009
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3010
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 3011
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSystemReady()V
    .locals 18

    .prologue
    .line 879
    const-string v13, "MountService"

    const-string v14, "handleSystemReady"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 882
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 883
    .local v9, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 893
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 894
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 895
    .local v1, "count":I
    new-array v13, v1, [Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 896
    .local v7, "rawPaths":[Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    .line 897
    .local v6, "paths":[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 904
    .local v11, "states":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 905
    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v2

    aget-object v13, v7, v13

    aput-object v13, v6, v2

    .line 906
    aget-object v13, v6, v2

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v2

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "paths":[Ljava/lang/String;
    .end local v7    # "rawPaths":[Ljava/lang/String;
    .end local v9    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "states":[Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 911
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "paths":[Ljava/lang/String;
    .restart local v7    # "rawPaths":[Ljava/lang/String;
    .restart local v9    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "states":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 912
    aget-object v5, v6, v2

    .line 913
    .local v5, "path":Ljava/lang/String;
    aget-object v10, v11, v2

    .line 915
    .local v10, "state":Ljava/lang/String;
    const-string v13, "unmounted"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 916
    sget-object v13, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 917
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 918
    const-string v13, "MountService"

    const-string v14, "mSD1BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v8

    .line 924
    .local v8, "rc":I
    if-eqz v8, :cond_2

    .line 925
    const-string v13, "MountService"

    const-string v14, "Boot-time mount failed (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 911
    .end local v8    # "rc":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 919
    :cond_4
    const-string v13, "/storage/sdcard1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 920
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 921
    const-string v13, "MountService"

    const-string v14, "mSD2BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 931
    :cond_5
    const-string v13, "shared"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 936
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14, v15}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 942
    .end local v5    # "path":Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 943
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 944
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 945
    const-string v13, "mounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_4

    .line 948
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 954
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v13, :cond_9

    .line 955
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 956
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 961
    :cond_9
    new-instance v13, Lcom/android/server/MountService$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v13}, Lcom/android/server/MountService$2;->start()V

    .line 967
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 968
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 969
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 970
    return-void
.end method

.method private handleUserSwitch()V
    .locals 0

    .prologue
    .line 5049
    return-void
.end method

.method private isExternalStorage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4839
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 4841
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4842
    if-nez v0, :cond_0

    .line 4843
    const-string v1, "MountService"

    const-string v2, "isExternalStorage error, invalid path!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    const/4 v1, 0x0

    .line 4846
    :goto_0
    return v1

    .line 4841
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4846
    .restart local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3619
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 3634
    :cond_0
    :goto_0
    return v1

    .line 3623
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 3624
    goto :goto_0

    .line 3627
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3634
    .local v0, "packageUid":I
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVolumeRegistered(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2022
    const/4 v1, 0x0

    .line 2023
    .local v1, "isVolumeRegistered":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2024
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2025
    const/4 v1, 0x1

    .line 2029
    :cond_0
    return v1

    .line 2023
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appPaths"    # [Ljava/io/File;
    .param p2, "voldPaths"    # [Ljava/io/File;

    .prologue
    .line 3925
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 3926
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Paths must be 1:1 mapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3929
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 3930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3931
    .local v0, "appPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3932
    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3934
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3940
    .end local v0    # "appPath":Ljava/lang/String;
    .end local p0    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p0

    .line 3929
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3940
    .end local v0    # "appPath":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private notifyShareAvailabilityChange(Z)V
    .locals 9
    .param p1, "avail"    # Z

    .prologue
    .line 2482
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2483
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 2484
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2485
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2487
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2484
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2488
    :catch_0
    move-exception v4

    .line 2489
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2495
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2491
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 2492
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2495
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2497
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2498
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 2503
    :goto_2
    if-nez p1, :cond_1

    .line 2507
    const/4 v3, 0x0

    .line 2508
    .local v3, "needTurnOff":Z
    iget-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-eqz v6, :cond_3

    .line 2509
    const/4 v3, 0x1

    .line 2524
    :goto_3
    if-eqz v3, :cond_1

    .line 2525
    new-instance v6, Lcom/android/server/MountService$12;

    const-string v7, "MountService#AvailabilityChange"

    invoke-direct {v6, p0, v7}, Lcom/android/server/MountService$12;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$12;->start()V

    .line 2535
    .end local v3    # "needTurnOff":Z
    :cond_1
    return-void

    .line 2500
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_2

    .line 2511
    .restart local v3    # "needTurnOff":Z
    :cond_3
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2512
    :try_start_4
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2513
    .local v5, "size":I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    .line 2514
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2515
    const/4 v3, 0x1

    .line 2519
    :cond_4
    monitor-exit v7

    goto :goto_3

    .end local v5    # "size":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 2513
    .restart local v5    # "size":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 2085
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:disk bad removal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2087
    :cond_0
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :goto_0
    return-void

    .line 2090
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 2091
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 2092
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:volumes is null... "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    monitor-exit v15

    goto :goto_0

    .line 2110
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2095
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2096
    .local v14, "size":I
    const/4 v13, 0x0

    .line 2097
    .local v13, "idx_incd":I
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v1, Landroid/os/storage/StorageVolume;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2099
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 2100
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 2101
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:remove volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2106
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v12}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2107
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2104
    .end local v12    # "i":I
    :cond_3
    monitor-exit v15

    goto/16 :goto_0

    .line 2110
    .restart local v12    # "i":I
    :cond_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 17
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I
    .param p5, "bValue"    # Z

    .prologue
    .line 2034
    const-string v3, "MountService"

    const-string v4, "otg patition state change"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2036
    :cond_0
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :goto_0
    return-void

    .line 2040
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 2041
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:oldState=newState,don\'t care"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2044
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2045
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 2046
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange: volumes is null... "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    monitor-exit v16

    goto :goto_0

    .line 2079
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2049
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2050
    .local v15, "size":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2052
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z

    move-result v13

    .line 2053
    .local v13, "bPathIncluded":Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    if-nez p3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 2055
    if-nez v13, :cond_4

    .line 2056
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removed"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    :cond_4
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2075
    :goto_1
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_9

    .line 2077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v14}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2076
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2064
    .end local v14    # "i":I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 2065
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 2067
    :cond_6
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 2068
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    invoke-direct/range {p0 .. p5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_1

    .line 2070
    :cond_7
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    .line 2071
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 2073
    :cond_8
    monitor-exit v16

    goto/16 :goto_0

    .line 2079
    .restart local v14    # "i":I
    :cond_9
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I

    .prologue
    .line 2114
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 2115
    return-void
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 12
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I
    .param p5, "bValue"    # Z

    .prologue
    .line 2125
    const-string v8, "/data/system/scsi"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2128
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2129
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 2134
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2135
    .local v6, "state":Ljava/lang/String;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyVolumeStateChange::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bValue::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const/4 v1, 0x0

    .line 2141
    .local v1, "action":Ljava/lang/String;
    const/4 v8, 0x7

    if-ne p3, v8, :cond_0

    move/from16 v0, p4

    if-eq v0, p3, :cond_0

    .line 2142
    const-string v8, "MountService"

    const-string v9, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const-string v8, "android.intent.action.MEDIA_UNSHARED"

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2146
    :cond_0
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_3

    .line 2223
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2224
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2258
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    :goto_1
    return-void

    .line 2135
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 2147
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v6    # "state":Ljava/lang/String;
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    if-eqz p4, :cond_1

    .line 2149
    const/4 v8, 0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_5

    .line 2153
    :try_start_2
    const-string v8, "MountService"

    const-string v9, "set prop sys.sd.unmounting = 0"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-string v8, "sys.sd.unmounting"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2163
    :goto_2
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get state again, before get state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2165
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2167
    const-string v8, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get state again, after get state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const-string v8, "bad_removal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "nofs"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "unmountable"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2172
    const-string v8, "MountService"

    const-string v10, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    const-string v8, "unmounted"

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 2176
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2177
    monitor-exit v9

    goto/16 :goto_1

    .line 2179
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 2155
    :catch_0
    move-exception v2

    .line 2156
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "MountService"

    const-string v9, "IllegalArgumentException when set sys.sd.unmounting:"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2179
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 2180
    :cond_5
    const/4 v8, 0x2

    move/from16 v0, p4

    if-eq v0, v8, :cond_1

    .line 2181
    const/4 v8, 0x3

    move/from16 v0, p4

    if-ne v0, v8, :cond_6

    .line 2182
    const-string v8, "MountService"

    const-string v9, "updating volume state checking"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const-string v8, "checking"

    invoke-direct {p0, v7, v8}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2184
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    goto/16 :goto_0

    .line 2185
    :cond_6
    const/4 v8, 0x4

    move/from16 v0, p4

    if-ne v0, v8, :cond_9

    .line 2186
    const-string v8, "MountService"

    const-string v9, "updating volume state mounted"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    if-eqz p5, :cond_8

    .line 2188
    const-string v8, "MountService"

    const-string v9, "the filesystem of the mounted storage is FAT32. update maxFileSize to 4G"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const-wide v8, 0xffffffffL

    invoke-virtual {v7, v8, v9}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    .line 2194
    :goto_3
    const-string v8, "mounted"

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-boolean v8, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v8, :cond_7

    .line 2196
    const-string v8, "MountService"

    const-string v9, "updateDefaultpath VolumeState.Mounted"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2199
    :cond_7
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_0

    .line 2191
    :cond_8
    const-string v8, "MountService"

    const-string v9, "the filesystem of the mounted storage is not FAT32. update maxFileSize to 0"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    goto :goto_3

    .line 2200
    :cond_9
    const/4 v8, 0x5

    move/from16 v0, p4

    if-eq v0, v8, :cond_1

    .line 2202
    const/4 v8, 0x6

    move/from16 v0, p4

    if-eq v0, v8, :cond_1

    .line 2203
    const/4 v8, 0x7

    move/from16 v0, p4

    if-ne v0, v8, :cond_a

    .line 2205
    const-string v8, "MountService"

    const-string v9, "Updating volume state media mounted"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    const-string v8, "unmounted"

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2211
    const-string v8, "MountService"

    const-string v9, "Updating media shared"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const-string v8, "shared"

    invoke-direct {p0, v7, v8}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2213
    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 2215
    const-string v8, "MountService"

    const-string v9, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2216
    :cond_a
    const/16 v8, 0x8

    move/from16 v0, p4

    if-ne v0, v8, :cond_b

    .line 2217
    const-string v8, "MountService"

    const-string v9, "Live shared mounts not supported yet!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2220
    :cond_b
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled VolumeState {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2229
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_c
    const/4 v3, 0x0

    .line 2230
    .local v3, "in":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I

    move-result v5

    .line 2232
    .local v5, "removeIndex":I
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyVolumeStateChange->label = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " newState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 2234
    iget-object v8, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/DiskInfo;

    .line 2235
    .local v4, "mTempInfo":Landroid/os/storage/DiskInfo;
    const/4 v8, 0x3

    move/from16 v0, p4

    if-ne v0, v8, :cond_e

    .line 2237
    iget-object v8, v4, Landroid/os/storage/DiskInfo;->mDiskName:Ljava/lang/String;

    const-string v9, "externalvolumechecking"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    :cond_d
    :goto_4
    if-eqz v3, :cond_2

    .line 2254
    iget-object v8, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2238
    :cond_e
    const/4 v8, 0x4

    move/from16 v0, p4

    if-ne v0, v8, :cond_f

    .line 2240
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "in":Landroid/content/Intent;
    const-string v8, "action.external.volume.mounted"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2241
    .restart local v3    # "in":Landroid/content/Intent;
    iget-object v8, v4, Landroid/os/storage/DiskInfo;->mDiskName:Ljava/lang/String;

    const-string v9, "externalvolumemounted"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2242
    :cond_f
    const/4 v8, 0x5

    move/from16 v0, p4

    if-ne v0, v8, :cond_10

    .line 2244
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "in":Landroid/content/Intent;
    const-string v8, "action.external.volume.unmounting"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2246
    .restart local v3    # "in":Landroid/content/Intent;
    iget-object v8, v4, Landroid/os/storage/DiskInfo;->mDiskName:Ljava/lang/String;

    const-string v9, "externalvolumeunmounting"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2247
    :cond_10
    const/4 v8, 0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_d

    .line 2249
    iget-object v8, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2250
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "in":Landroid/content/Intent;
    const-string v8, "action.external.volume.idle"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2251
    .restart local v3    # "in":Landroid/content/Intent;
    iget-object v8, v4, Landroid/os/storage/DiskInfo;->mDiskName:Ljava/lang/String;

    const-string v9, "externalvolumeidle"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private readStorageListLocked()V
    .locals 32

    .prologue
    .line 2588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 2594
    .local v24, "resources":Landroid/content/res/Resources;
    const v19, 0x10f0011

    .line 2595
    .local v19, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    .line 2596
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 2599
    .local v14, "attrs":Landroid/util/AttributeSet;
    :try_start_0
    const-string v3, "StorageList"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2601
    :cond_0
    :goto_0
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2603
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 2604
    .local v17, "element":Ljava/lang/String;
    if-nez v17, :cond_2

    .line 2705
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v20, 0x1

    .line 2706
    .local v20, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2707
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2708
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "index":I
    .local v21, "index":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21    # "index":I
    .restart local v20    # "index":I
    goto :goto_2

    .line 2606
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "index":I
    :cond_2
    :try_start_1
    const-string v3, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2607
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2610
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2612
    .local v23, "path":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 2614
    .local v4, "descriptionId":I
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2616
    .local v15, "description":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 2618
    .local v5, "primary":Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 2620
    .local v6, "removable":Z
    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 2626
    .local v7, "emulated":Z
    const/4 v8, 0x0

    .line 2627
    .local v8, "mtpReserve":I
    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 2630
    .local v9, "allowMassStorage":Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x400

    mul-long v28, v28, v30

    const-wide/16 v30, 0x400

    mul-long v10, v28, v30

    .line 2635
    .local v10, "maxFileSize":J
    if-eqz v5, :cond_3

    .line 2636
    const/16 v23, 0x0

    .line 2638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2639
    const/4 v5, 0x1

    .line 2640
    const/4 v6, 0x0

    .line 2641
    const/4 v7, 0x1

    .line 2642
    const/16 v8, 0xa

    .line 2645
    :cond_3
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "got storage path: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " description: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " primary: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " removable: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " emulated: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " mtpReserve: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " allowMassStorage: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " maxFileSize: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    if-eqz v7, :cond_7

    .line 2654
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 2657
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v27

    .line 2658
    .local v27, "userManager":Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 2659
    .local v26, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2698
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "path":Ljava/lang/String;
    .end local v26    # "user":Landroid/content/pm/UserInfo;
    .end local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_0
    move-exception v16

    .line 2699
    .local v16, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2705
    .end local v16    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v20, 0x1

    .line 2706
    .restart local v20    # "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2707
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2708
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "index":I
    .restart local v21    # "index":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21    # "index":I
    .restart local v20    # "index":I
    goto :goto_5

    .line 2662
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v20    # "index":I
    .restart local v4    # "descriptionId":I
    .restart local v8    # "mtpReserve":I
    .restart local v10    # "maxFileSize":J
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "description":Ljava/lang/CharSequence;
    .restart local v17    # "element":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    .restart local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_9

    .line 2663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 2664
    .local v25, "shareVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2665
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 2700
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "path":Ljava/lang/String;
    .end local v25    # "shareVolume":Landroid/os/storage/StorageVolume;
    .end local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_1
    move-exception v16

    .line 2701
    .local v16, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2671
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "description":Ljava/lang/CharSequence;
    .restart local v17    # "element":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v23, :cond_8

    if-nez v15, :cond_a

    .line 2672
    :cond_8
    :try_start_5
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    :cond_9
    :goto_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 2674
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v9    # "allowMassStorage":Z
    :cond_a
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2677
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v28, "unmounted"

    move-object/from16 v0, v28

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 2683
    if-eqz v9, :cond_b

    .line 2684
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 2687
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2688
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    goto :goto_7

    .line 2689
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_9

    const-string v3, "/storage/sdcard1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2690
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 2711
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "index":I
    :cond_d
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2705
    throw v3

    .line 2711
    .restart local v17    # "element":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2713
    return-void

    .line 2705
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "index":I
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_4

    .restart local v17    # "element":Ljava/lang/String;
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 4000
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4001
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4002
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 4003
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4004
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 4006
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4007
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4011
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4012
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 2751
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2753
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    return-void
.end method

.method private sendSDSwapIntent()V
    .locals 5

    .prologue
    .line 4818
    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v1

    .line 4819
    .local v1, "sdSwapStatus":Z
    iget-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    if-eq v1, v2, :cond_1

    .line 4820
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 4827
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.SD_SWAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4828
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "SD_EXIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4829
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4831
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 4832
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4823
    :cond_1
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent: already sent INTENT_SD_SWAP, Just skip this. status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2542
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2544
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    if-gtz v1, :cond_2

    :cond_0
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountAll:Z

    if-eq v1, v3, :cond_2

    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-ne v1, v3, :cond_2

    .line 2551
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2552
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2553
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 2554
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_4

    .line 2555
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2556
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD1BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :cond_4
    :goto_0
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2567
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2569
    return-void

    .line 2558
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2559
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 2560
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_4

    .line 2561
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2562
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD2BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .param p1, "c"    # Z

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2575
    return-void

    .line 2572
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4956
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4958
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0, p1}, Lcom/mediatek/common/storage/IStorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 4959
    return-void
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3015
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3016
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 3017
    monitor-exit v1

    .line 3018
    return-void

    .line 3017
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startAutoInstall()V
    .locals 4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Meizu ShopDemo"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5176
    sget-object v1, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5184
    :cond_0
    :goto_0
    return-void

    .line 5179
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/autoVerify/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5180
    .local v0, "verifyDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5181
    const-string v1, "MountService"

    const-string v2, "sendBroadcast: meizu.intent.action.AUTO_INSTALL_START"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "meizu.intent.action.AUTO_INSTALL_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateDefaultPathForSwap(ZLjava/lang/String;)V
    .locals 0
    .param p1, "mount"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4918
    return-void
.end method

.method private updateDefaultpath()V
    .locals 8

    .prologue
    .line 4536
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 4537
    .local v0, "defaultPath":Ljava/lang/String;
    move-object v4, v0

    .line 4538
    .local v4, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4539
    .local v3, "needChange":Z
    const-string v5, "mounted"

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4540
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v6

    .line 4541
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4542
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4543
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4544
    const-string v5, "mounted"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4545
    const/4 v3, 0x1

    .line 4549
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4550
    if-eqz v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4551
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 4555
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    return-void

    .line 4542
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4549
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Meizu USB-OTG"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5063
    if-nez p1, :cond_0

    .line 5086
    :goto_0
    return-void

    .line 5067
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mExternalVolumeState:Ljava/lang/String;

    .line 5068
    .local v3, "oldState":Ljava/lang/String;
    iput-object p2, p0, Lcom/android/server/MountService;->mExternalVolumeState:Ljava/lang/String;

    .line 5070
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 5071
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 5072
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5074
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    const-string v5, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bl.mListener.onStorageStateChanged(path, oldState, state) state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5071
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5078
    :catch_0
    move-exception v4

    .line 5079
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 5085
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 5081
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 5082
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5085
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 1
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 1435
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 1443
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1446
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1447
    .local v3, "oldState":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 1448
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1451
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :goto_0
    return-void

    .line 1448
    .end local v3    # "oldState":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1456
    .restart local v3    # "oldState":Ljava/lang/String;
    :cond_0
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSetDefaultEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsTurnOnOffUsb="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMountSwap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mMountSwap:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mUnmountSwap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v6, :cond_1

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v6, :cond_2

    .line 1464
    const-string v6, "MountService"

    const-string v7, "updateDefaultpath MEDIA_UNMOUNTED"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1483
    :cond_2
    sget-object v6, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1510
    :cond_3
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1511
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 1512
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1514
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1511
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1515
    :catch_0
    move-exception v5

    .line 1516
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1522
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1518
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 1519
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1522
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2579
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2581
    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 864
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    return-void

    .line 867
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 859
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    .prologue
    .line 3332
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 3333
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 3334
    const/4 v0, 0x0

    .line 3336
    .local v0, "mounted":Z
    :try_start_0
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3340
    :goto_0
    if-nez v0, :cond_0

    .line 3341
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    .end local v0    # "mounted":Z
    :cond_0
    return-void

    .line 3337
    .restart local v0    # "mounted":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3803
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3804
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3807
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3813
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3819
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3822
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3820
    :catch_0
    move-exception v0

    .line 3822
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 3369
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3370
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3371
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3373
    const/4 v1, 0x0

    .line 3375
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_1

    const-string v2, "1"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3381
    :goto_1
    if-nez v1, :cond_0

    .line 3382
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3383
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3384
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3386
    :cond_0
    return v1

    .line 3375
    :cond_1
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3377
    :catch_0
    move-exception v0

    .line 3378
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .line 3384
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3739
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3740
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3743
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3749
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3756
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3757
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 3760
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$14;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$14;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3774
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    :goto_0
    return v0

    .line 3772
    :catch_0
    move-exception v1

    .line 3774
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 3424
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3425
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3426
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3434
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3435
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3437
    const/4 v3, 0x0

    .line 3439
    .local v3, "rc":I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3440
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 3441
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3443
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3453
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 3454
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3455
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3456
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3458
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3461
    :cond_2
    return v3

    .line 3444
    :catch_0
    move-exception v2

    .line 3445
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3446
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 3447
    const/4 v3, -0x7

    goto :goto_0

    .line 3449
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 3458
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4473
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    const-string v12, "MountService"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4475
    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    const/16 v11, 0xa0

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4477
    .local v8, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 4478
    :try_start_0
    const-string v10, "mObbMounts:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4479
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4480
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4482
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4484
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4485
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4487
    .local v7, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/MountService$ObbState;

    .line 4488
    .local v6, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 4505
    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 4490
    .restart local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 4492
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4494
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4495
    const-string v10, "mObbPathToStateMap:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4496
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4497
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4498
    .local v5, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4499
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4500
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    const-string v10, " -> "

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4502
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 4504
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4505
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4507
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4508
    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4509
    const-string v10, "mVolumes:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4510
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4511
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 4512
    .local v9, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4513
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4514
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current state: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4515
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_3

    .line 4518
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 4517
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4518
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4520
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4521
    const-string v10, "mConnection:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4522
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4523
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p3

    invoke-virtual {v10, p1, v8, v0}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4524
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4525
    return-void
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3779
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3780
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3783
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3789
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3799
    :goto_0
    return v1

    .line 3794
    :catch_0
    move-exception v0

    .line 3796
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3390
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3391
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3393
    const/4 v1, 0x0

    .line 3395
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3403
    :goto_0
    return v1

    .line 3400
    :catch_0
    move-exception v0

    .line 3401
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3616
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 3407
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3408
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3410
    const/4 v1, 0x0

    .line 3412
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3420
    :goto_0
    return v1

    .line 3417
    :catch_0
    move-exception v0

    .line 3418
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3299
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3300
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3302
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDiskInfoList()Ljava/util/List;
    .locals 8
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Meizu USB-OTG"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5136
    iget-object v3, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5137
    .local v2, "size":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDiskInfoList size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    if-lez v2, :cond_0

    .line 5139
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    .line 5149
    :goto_0
    return-object v1

    .line 5143
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "externalvolume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "listdiskinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x6e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5149
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5145
    :catch_0
    move-exception v0

    .line 5146
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Failed to share/unshare"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 3717
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3724
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3725
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3733
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3726
    :catch_0
    move-exception v0

    .line 3728
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3730
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 3732
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3638
    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3641
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3644
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 3645
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3646
    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3647
    if-nez v3, :cond_1

    .line 3648
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_0
    :goto_0
    return-object v4

    .line 3646
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3654
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3655
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3656
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    .line 3657
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 3658
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3659
    .local v0, "code":I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_0

    .line 3662
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3594
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3595
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3596
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3600
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3601
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3602
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3607
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 3603
    :catch_0
    move-exception v1

    .line 3604
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3605
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 3606
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    const/4 v3, 0x0

    goto :goto_0

    .line 3609
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3347
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3348
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3349
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3355
    :goto_0
    return-object v1

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3573
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3574
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3575
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3579
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3580
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3581
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3586
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 3582
    :catch_0
    move-exception v1

    .line 3583
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3584
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 3585
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    const/4 v3, 0x0

    goto :goto_0

    .line 3588
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3306
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3307
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3309
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 3314
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 3315
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 3316
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 3318
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3319
    :catch_0
    move-exception v3

    .line 3320
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3327
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "r":[Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 3325
    :catch_1
    move-exception v1

    .line 3326
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3327
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3945
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3946
    .local v1, "callingUserId":I
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 3950
    .local v0, "accessAll":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3951
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3952
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 3953
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 3954
    .local v4, "owner":Landroid/os/UserHandle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4

    :cond_1
    move v5, v7

    .line 3955
    .local v5, "ownerMatch":Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v5, :cond_0

    .line 3956
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3960
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .end local v0    # "accessAll":Z
    :cond_3
    move v0, v8

    .line 3946
    goto :goto_0

    .restart local v0    # "accessAll":Z
    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "owner":Landroid/os/UserHandle;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    move v5, v8

    .line 3954
    goto :goto_2

    .line 3959
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 3161
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3163
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3164
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3166
    const-string v0, "removed"

    .line 3174
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 3169
    :cond_1
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ERROR!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    const-string v0, "unknown"

    goto :goto_0

    .line 3175
    .end local v0    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 3669
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 3671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3538
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3539
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3540
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3542
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 3543
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    .line 3021
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3023
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    const/4 v0, 0x1

    .line 3027
    :goto_0
    return v0

    .line 3026
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3027
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 3028
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 3132
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3138
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3139
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3140
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 3141
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3142
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3144
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3146
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3147
    aget-object v3, v2, v1

    const-string v4, "ums"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3148
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbMassStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    const/4 v3, 0x1

    .line 3154
    :goto_2
    return v3

    .line 3144
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3146
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "paths":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3153
    :cond_2
    const-string v3, "MountService"

    const-string v4, "isUsbMassStorageEnabled: false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3862
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3863
    .local v3, "userId":I
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3866
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3868
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3871
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 3877
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3883
    :cond_0
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3886
    .local v4, "voldPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3888
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3903
    .end local v4    # "voldPath":Ljava/lang/String;
    :goto_0
    return v5

    .line 3872
    :catch_0
    move-exception v1

    .line 3873
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    const/4 v5, -0x1

    goto :goto_0

    .line 3890
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "voldPath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3891
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_0

    .line 3895
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3898
    if-eqz v4, :cond_2

    .line 3900
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 3902
    :catch_2
    move-exception v1

    .line 3903
    .restart local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_0

    .line 3907
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 4529
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 4530
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4532
    :cond_0
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 3678
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3683
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3684
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 3685
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3689
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I

    .prologue
    .line 3465
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3466
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3467
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3469
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 3470
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3471
    const/4 v2, -0x6

    monitor-exit v4

    .line 3490
    :cond_0
    :goto_0
    return v2

    .line 3473
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3475
    const/4 v2, 0x0

    .line 3477
    .local v2, "rc":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3485
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 3486
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 3487
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3488
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3473
    .end local v2    # "rc":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 3478
    .restart local v2    # "rc":I
    :catch_0
    move-exception v1

    .line 3479
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3480
    .local v0, "code":I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_2

    .line 3481
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3184
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3186
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v0

    .line 3198
    .local v0, "isExternal":Z
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3199
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 3216
    .local v1, "ret":I
    return v1
.end method

.method public mountVolumeNotSwap(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4905
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4907
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4908
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 1533
    new-instance v0, Lcom/android/server/MountService$10;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$10;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$10;->start()V

    .line 1662
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 33
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1669
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    .local v11, "builder":Ljava/lang/StringBuilder;
    const-string v3, "onEvent::"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ") raw= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    if-eqz p3, :cond_1

    .line 1674
    const-string v3, " cooked = ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    move-object/from16 v10, p3

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v28, v10, v16

    .line 1676
    .local v28, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1678
    .end local v28    # "str":Ljava/lang/String;
    :cond_0
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v21    # "len$":I
    :cond_1
    const-string v3, "MountService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/16 v3, 0x27b

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 1685
    const-string v3, "MountService"

    const-string v4, "VoldResponseCode.ExternalVolumeDiskInserted"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I

    move-result v26

    .line 1688
    .local v26, "removeIndex":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_2

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v17, v3, 0x1

    .line 1690
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v4, 0x10406ab

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 1692
    .local v24, "name":Ljava/lang/String;
    new-instance v18, Landroid/os/storage/DiskInfo;

    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v3}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    .local v18, "info":Landroid/os/storage/DiskInfo;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare new mounted disk->name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    const-string v3, "externalvolumeinserted"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    .end local v17    # "index":I
    .end local v18    # "info":Landroid/os/storage/DiskInfo;
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "removeIndex":I
    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 1698
    :cond_3
    const/16 v3, 0x27c

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 1699
    const-string v3, "MountService"

    const-string v4, "VoldResponseCode.ExternalVolumeDiskRemoved"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I

    move-result v26

    .line 1701
    .restart local v26    # "removeIndex":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_4

    .line 1702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/DiskInfo;

    .line 1703
    .restart local v18    # "info":Landroid/os/storage/DiskInfo;
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/os/storage/DiskInfo;->mDiskName:Ljava/lang/String;

    const-string v4, "externalvolumeremoved"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    .end local v18    # "info":Landroid/os/storage/DiskInfo;
    :cond_4
    new-instance v19, Landroid/content/Intent;

    const-string v3, "action.external.volume.removed"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1708
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1709
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v26    # "removeIndex":I
    :cond_5
    const/16 v3, 0x27d

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 1710
    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I

    move-result v26

    .line 1711
    .restart local v26    # "removeIndex":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " removeIndex:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") label:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_2

    .line 1713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/DiskInfo;

    .line 1714
    .restart local v18    # "info":Landroid/os/storage/DiskInfo;
    const/4 v3, 0x2

    aget-object v3, p3, v3

    const/4 v4, 0x3

    aget-object v4, p3, v4

    const/4 v5, 0x7

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xa

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1718
    .end local v18    # "info":Landroid/os/storage/DiskInfo;
    .end local v26    # "removeIndex":I
    :cond_6
    const/16 v3, 0x27e

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 1719
    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I

    move-result v17

    .line 1720
    .restart local v17    # "index":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    if-ltz v17, :cond_2

    .line 1722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/DiskInfo;

    .line 1723
    .restart local v18    # "info":Landroid/os/storage/DiskInfo;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cooked[3] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/storage/DiskInfo;->findPartition(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v3, 0x3

    aget-object v3, p3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/storage/DiskInfo;->findPartition(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 1725
    const-string v3, "MountService"

    const-string v4, " info.add(cooked[3]);"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/4 v3, 0x3

    aget-object v3, p3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1730
    .end local v17    # "index":I
    .end local v18    # "info":Landroid/os/storage/DiskInfo;
    :cond_7
    const/16 v3, 0x25d

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 1737
    const/4 v8, 0x0

    .line 1738
    .local v8, "bValue":Z
    const/16 v3, 0xc

    aget-object v3, p3, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1739
    const/4 v8, 0x1

    .line 1752
    :cond_8
    const/4 v3, 0x2

    aget-object v4, p3, v3

    const/4 v3, 0x3

    aget-object v5, p3, v3

    const/4 v3, 0x7

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0xa

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_1

    .line 1756
    .end local v8    # "bValue":Z
    :cond_9
    const/16 v3, 0x265

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 1758
    const/4 v3, 0x2

    aget-object v25, p3, v3

    .line 1759
    .local v25, "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_a

    const/4 v3, 0x3

    aget-object v30, p3, v3

    .line 1761
    .local v30, "uuid":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/StorageVolume;

    .line 1762
    .local v31, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v31, :cond_2

    .line 1763
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1759
    .end local v30    # "uuid":Ljava/lang/String;
    .end local v31    # "vol":Landroid/os/storage/StorageVolume;
    :cond_a
    const/16 v30, 0x0

    goto :goto_3

    .line 1765
    .end local v25    # "path":Ljava/lang/String;
    :cond_b
    const/16 v3, 0x266

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 1767
    const/4 v3, 0x2

    aget-object v25, p3, v3

    .line 1768
    .restart local v25    # "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_c

    const/4 v3, 0x3

    aget-object v29, p3, v3

    .line 1770
    .local v29, "userLabel":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/StorageVolume;

    .line 1771
    .restart local v31    # "vol":Landroid/os/storage/StorageVolume;
    if-eqz v31, :cond_2

    .line 1772
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1768
    .end local v29    # "userLabel":Ljava/lang/String;
    .end local v31    # "vol":Landroid/os/storage/StorageVolume;
    :cond_c
    const/16 v29, 0x0

    goto :goto_4

    .line 1774
    .end local v25    # "path":Ljava/lang/String;
    :cond_d
    const/16 v3, 0x276

    move/from16 v0, p1

    if-eq v0, v3, :cond_e

    const/16 v3, 0x277

    move/from16 v0, p1

    if-eq v0, v3, :cond_e

    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_15

    .line 1780
    :cond_e
    const/4 v9, 0x0

    .line 1781
    .local v9, "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v20, p3, v3

    .line 1782
    .local v20, "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v25, p3, v3

    .line 1783
    .restart local v25    # "path":Ljava/lang/String;
    const/16 v22, -0x1

    .line 1784
    .local v22, "major":I
    const/16 v23, -0x1

    .line 1787
    .local v23, "minor":I
    const/4 v3, 0x6

    :try_start_0
    aget-object v3, p3, v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1788
    .local v13, "devComp":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1789
    .local v14, "devTok":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1790
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 1797
    .end local v13    # "devComp":Ljava/lang/String;
    .end local v14    # "devTok":[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1798
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/storage/StorageVolume;

    .line 1799
    .local v32, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1800
    .local v27, "state":Ljava/lang/String;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1802
    const/16 v3, 0x276

    move/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 1821
    new-instance v3, Lcom/android/server/MountService$11;

    const-string v4, "MountService#VolumeDiskInserted"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/MountService$11;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$11;->start()V

    .line 1871
    const-string v9, "android.intent.action.SD_INSERTED"

    .line 1960
    :cond_f
    :goto_6
    if-eqz v9, :cond_2

    .line 1961
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1791
    .end local v27    # "state":Ljava/lang/String;
    .end local v32    # "volume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v15

    .line 1792
    .local v15, "ex":Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to parse major/minor"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1800
    .end local v15    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1872
    .restart local v27    # "state":Ljava/lang/String;
    .restart local v32    # "volume":Landroid/os/storage/StorageVolume;
    :cond_10
    const/16 v3, 0x277

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 1884
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1885
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1887
    :cond_11
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1890
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v3, "unmounted"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1897
    const-string v3, "MountService"

    const-string v4, "Sending media removed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string v3, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1899
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    goto :goto_6

    .line 1910
    :cond_12
    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_13

    .line 1920
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1930
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1935
    const-string v3, "MountService"

    const-string v4, "Sending media bad removal"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-string v3, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1937
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 1948
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v12

    .line 1949
    .local v12, "defaultPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1951
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->enableDefaultToast()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x2050079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1954
    .end local v12    # "defaultPath":Ljava/lang/String;
    :cond_13
    const/16 v3, 0x2bc

    move/from16 v0, p1

    if-ne v0, v3, :cond_14

    .line 1955
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto/16 :goto_6

    .line 1957
    :cond_14
    const-string v3, "MountService"

    const-string v4, "Unknown code {%d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1963
    .end local v9    # "action":Ljava/lang/String;
    .end local v20    # "label":Ljava/lang/String;
    .end local v22    # "major":I
    .end local v23    # "minor":I
    .end local v25    # "path":Ljava/lang/String;
    .end local v27    # "state":Ljava/lang/String;
    .end local v32    # "volume":Landroid/os/storage/StorageVolume;
    :cond_15
    const/16 v3, 0x279

    move/from16 v0, p1

    if-ne v0, v3, :cond_16

    .line 1965
    const/4 v9, 0x0

    .line 1966
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v20, p3, v3

    .line 1967
    .restart local v20    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v25, p3, v3

    .line 1970
    .restart local v25    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1971
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/storage/StorageVolume;

    .line 1972
    .restart local v32    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1973
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeEjectBeforeSwap: send eject to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1972
    .end local v32    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1976
    .end local v9    # "action":Ljava/lang/String;
    .end local v20    # "label":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :cond_16
    const/16 v3, 0x27a

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    .line 1977
    const/4 v9, 0x0

    .line 1978
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v20, p3, v3

    .line 1979
    .restart local v20    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v25, p3, v3

    .line 1982
    .restart local v25    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1983
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/storage/StorageVolume;

    .line 1984
    .restart local v32    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1985
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeUnmountable: send MEDIA_UNMOUNTABLE to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-string v3, "unmountable"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1987
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1988
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1989
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1991
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1992
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1993
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1984
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v32    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 1995
    .end local v9    # "action":Ljava/lang/String;
    .end local v20    # "label":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :cond_17
    const/16 v3, 0x262

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    .line 1996
    const/4 v9, 0x0

    .line 1997
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v20, p3, v3

    .line 1998
    .restart local v20    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v25, p3, v3

    .line 2001
    .restart local v25    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2002
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/storage/StorageVolume;

    .line 2003
    .restart local v32    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2004
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeMountFailedBlank: send MEDIA_NOFS to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const-string v3, "nofs"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2006
    const-string v3, "android.intent.action.MEDIA_NOFS"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2007
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2008
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 2010
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2011
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2012
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2003
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v32    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 2015
    .end local v9    # "action":Ljava/lang/String;
    .end local v20    # "label":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 2878
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2879
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2882
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2886
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2887
    return-void

    .line 2883
    :catch_0
    move-exception v1

    .line 2884
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2886
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 3548
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3549
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3550
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3552
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3557
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3558
    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    .line 3569
    :goto_0
    return v1

    .line 3560
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3562
    const/4 v1, 0x0

    .line 3564
    .local v1, "rc":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3565
    :catch_0
    move-exception v0

    .line 3566
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .line 3560
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 18
    .param p1, "enable"    # Z

    .prologue
    .line 3032
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3033
    const-string v14, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3047
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 3048
    .local v5, "mState":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v14, "mounted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3052
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v15

    .line 3053
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3054
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 3055
    .local v2, "count":I
    new-array v14, v2, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 3056
    .local v8, "paths":[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 3057
    .local v11, "states":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3058
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v16, v8, v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v3

    .line 3057
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3060
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3062
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 3063
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_9

    .line 3064
    aget-object v7, v8, v3

    .line 3065
    .local v7, "path":Ljava/lang/String;
    aget-object v10, v11, v3

    .line 3066
    .local v10, "state":Ljava/lang/String;
    const-string v6, "ums"

    .line 3068
    .local v6, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3069
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 3070
    .local v13, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3071
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Emulated volume: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3063
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3060
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "paths":[Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "states":[Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 3075
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "paths":[Ljava/lang/String;
    .restart local v10    # "state":Ljava/lang/String;
    .restart local v11    # "states":[Ljava/lang/String;
    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v16, "/mnt/udisk/folder1"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3076
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ICUSB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    monitor-exit v15

    goto :goto_2

    .line 3079
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3081
    if-eqz p1, :cond_6

    const-string v14, "mounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3082
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 3083
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 3095
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 3096
    new-instance v12, Lcom/android/server/MountService$UmsEnableCallBack;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3097
    .local v12, "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3099
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 3106
    .end local v12    # "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_5
    :goto_3
    if-nez p1, :cond_2

    const-string v14, "removed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "bad_removal"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3108
    const/16 v9, 0xf

    .line 3109
    .local v9, "retry":I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    if-lez v14, :cond_7

    if-lez v9, :cond_7

    .line 3110
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 3111
    add-int/lit8 v9, v9, -0x1

    .line 3112
    const-string v14, "MountService"

    const-string v15, "Turn off UMS, wait for turn on UMS done!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3100
    .end local v9    # "retry":I
    :cond_6
    if-eqz p1, :cond_5

    const-string v14, "unmounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3101
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 3114
    .restart local v9    # "retry":I
    :cond_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 3115
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3116
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_8

    .line 3117
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to remount "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " after disabling share method "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    goto/16 :goto_2

    .line 3128
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "retry":I
    .end local v10    # "state":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 3129
    return-void
.end method

.method public shareCDRom(Z)V
    .locals 4
    .param p1, "share"    # Z

    .prologue
    .line 4855
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareCDRom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    move v0, p1

    .line 4857
    .local v0, "doShare":Z
    new-instance v1, Lcom/android/server/MountService$15;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MountService$15;-><init>(Lcom/android/server/MountService;Z)V

    invoke-virtual {v1}, Lcom/android/server/MountService$15;->start()V

    .line 4873
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 14
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 2902
    const-string v11, "android.permission.SHUTDOWN"

    invoke-direct {p0, v11}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2904
    const-string v11, "MountService"

    const-string v12, "Shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2906
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 2907
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 2909
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2910
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2911
    .local v7, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    sget-object v11, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2915
    .local v3, "mState":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2916
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 2917
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 2922
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2923
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2925
    .local v8, "state":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2935
    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v11, v12}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2957
    :cond_2
    :goto_2
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2965
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2966
    :try_start_1
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 2967
    .local v10, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2968
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2969
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2970
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    goto :goto_1

    .line 2911
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mState":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "state":Ljava/lang/String;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 2918
    .restart local v3    # "mState":Ljava/lang/String;
    .restart local v7    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v11, "shared"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2919
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    goto :goto_0

    .line 2936
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    :cond_4
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2942
    const/16 v5, 0x1e

    .line 2943
    .local v5, "retries":I
    :goto_3
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v5, -0x1

    .end local v5    # "retries":I
    .local v6, "retries":I
    if-ltz v5, :cond_9

    .line 2945
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2950
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v5, v6

    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_3

    .line 2946
    .end local v5    # "retries":I
    .restart local v6    # "retries":I
    :catch_0
    move-exception v2

    .line 2947
    .local v2, "iex":Ljava/lang/InterruptedException;
    const-string v11, "MountService"

    const-string v12, "Interrupted while waiting for media"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 2952
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    :cond_5
    :goto_4
    if-nez v5, :cond_2

    .line 2953
    const-string v11, "MountService"

    const-string v12, "Timed out waiting for media to check"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2967
    .end local v5    # "retries":I
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 2975
    .restart local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2977
    new-instance v9, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 2978
    .local v9, "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v11, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2981
    .end local v4    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_7
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    if-gtz v11, :cond_8

    if-eqz p1, :cond_8

    .line 2988
    const/4 v11, 0x0

    :try_start_5
    invoke-interface {p1, v11}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3006
    :cond_8
    :goto_5
    return-void

    .line 2989
    :catch_1
    move-exception v0

    .line 2990
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "MountService"

    const-string v12, "RemoteException when shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v6    # "retries":I
    .restart local v8    # "state":Ljava/lang/String;
    :cond_9
    move v5, v6

    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_4
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 2870
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2871
    return-void
.end method

.method public unmountExternalVolume(Ljava/lang/String;)I
    .locals 12
    .param p1, "label"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Meizu USB-OTG"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5093
    const-string v5, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unmountExternalVolume label = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5094
    if-nez p1, :cond_0

    move v5, v6

    .line 5124
    :goto_0
    return v5

    .line 5097
    :cond_0
    iget-object v5, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5098
    .local v4, "size":I
    const/4 v1, 0x0

    .line 5099
    .local v1, "device":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5100
    iget-object v5, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    iget-object v5, v5, Landroid/os/storage/DiskInfo;->mDiskName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5101
    iget-object v5, p0, Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    iget-object v1, v5, Landroid/os/storage/DiskInfo;->mDiskLabel:Ljava/lang/String;

    .line 5099
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5104
    :cond_2
    if-eqz v1, :cond_5

    .line 5106
    :try_start_0
    const-string v5, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unmountExternalVolume device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "externalvolume"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "unmount"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-virtual {v5, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 5110
    goto :goto_0

    .line 5111
    :catch_0
    move-exception v2

    .line 5114
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 5115
    .local v0, "code":I
    const/16 v5, 0x194

    if-ne v0, v5, :cond_3

    .line 5116
    const/4 v5, -0x5

    goto :goto_0

    .line 5117
    :cond_3
    const/16 v5, 0x195

    if-ne v0, v5, :cond_4

    .line 5118
    const/4 v5, -0x7

    goto :goto_0

    :cond_4
    move v5, v6

    .line 5120
    goto :goto_0

    .end local v0    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_5
    move v5, v6

    .line 5124
    goto :goto_0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 3693
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3696
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 3697
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 3698
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3700
    if-eqz v8, :cond_0

    .line 3702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3703
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3705
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 3706
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3713
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    .line 3698
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3711
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 3494
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3495
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3496
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3498
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3499
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3500
    const/4 v3, -0x5

    monitor-exit v5

    .line 3534
    :cond_0
    :goto_0
    return v3

    .line 3502
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3510
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3511
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3513
    const/4 v3, 0x0

    .line 3515
    .local v3, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3516
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 3517
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3519
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3529
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 3530
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3531
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3532
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3502
    .end local v3    # "rc":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 3520
    .restart local v3    # "rc":I
    :catch_0
    move-exception v2

    .line 3521
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3522
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 3523
    const/4 v3, -0x7

    goto :goto_1

    .line 3525
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 3220
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3221
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3223
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3225
    .local v2, "volState":Ljava/lang/String;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmounting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removeEncryption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "removed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3259
    :cond_0
    :goto_0
    return-void

    .line 3251
    :cond_1
    :try_start_0
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set prop sys.sd.unmounting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    const-string v3, "sys.sd.unmounting"

    invoke-static {v3, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    :goto_1
    new-instance v1, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 3258
    .local v1, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3253
    .end local v1    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :catch_0
    move-exception v0

    .line 3254
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MountService"

    const-string v4, "IllegalArgumentException when set sys.sd.unmounting:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unmountVolumeForUserSwitch(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3262
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3263
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3265
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3267
    .local v6, "volState":Ljava/lang/String;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Switch Unmounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removeEncryption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    const-string v1, "unmounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "removed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shared"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3296
    :cond_0
    :goto_0
    return-void

    .line 3285
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 3287
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3288
    const-string v1, "unmounted"

    invoke-direct {p0, v7, v1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 3289
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v1, :cond_2

    .line 3290
    const-string v1, "MountService"

    const-string v2, "updateDefaultpath Environment.MEDIA_UNMOUNTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 3293
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 3294
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZZ)V

    .line 3295
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3287
    .end local v0    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 4879
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4880
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4882
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4884
    .local v1, "volState":Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removeEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4899
    :cond_0
    :goto_0
    return-void

    .line 4897
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 4898
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 2890
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2891
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 2892
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 2893
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2894
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2895
    monitor-exit v3

    .line 2899
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 2898
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 3833
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3836
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3840
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3843
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3846
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3852
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3856
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3854
    :catch_0
    move-exception v0

    .line 3856
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method waitForAsecScan()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 855
    return-void
.end method
