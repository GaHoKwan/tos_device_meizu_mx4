.class Lcom/android/server/ServerThread$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->initAndLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$momF:Lcom/mediatek/common/mom/IMobileManagerService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;

.field final synthetic val$printManagerF:Lcom/android/server/print/PrintManagerService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryF3:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryF4:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryLteDcF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

.field final synthetic val$twilightF:Lcom/android/server/TwilightService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;Lcom/mediatek/common/mom/IMobileManagerService;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/mediatek/common/perfservice/IPerfServiceManager;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;Lcom/mediatek/common/recovery/IRecoveryManagerService;)V
    .locals 1

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    iput-object p2, p0, Lcom/android/server/ServerThread$2;->val$momF:Lcom/mediatek/common/mom/IMobileManagerService;

    iput-boolean p3, p0, Lcom/android/server/ServerThread$2;->val$headless:Z

    iput-object p4, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p6, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p7, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p8, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p9, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p10, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p11, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p12, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p13, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    iput-object p14, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF3:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF4:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryLteDcF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;

    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1451
    const-string v1, "SystemServer"

    const-string v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$momF:Lcom/mediatek/common/mom/IMobileManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$momF:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileManagerService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1465
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/ServerThread$2;->val$headless:Z

    if-nez v1, :cond_1

    .line 1466
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 1469
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v1}, Lcom/android/server/MountService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1474
    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1479
    :cond_3
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1484
    :cond_4
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1489
    :cond_5
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1494
    :cond_6
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1499
    :cond_7
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v1}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1504
    :cond_8
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1509
    :cond_9
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->systemReady()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1514
    :cond_a
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1519
    :cond_b
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v1}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1523
    :cond_c
    :goto_c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1529
    :try_start_d
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v2, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetService;->systemRunning(Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1534
    :cond_d
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1539
    :cond_e
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/StatusBarManagerService;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1544
    :cond_f
    :goto_f
    :try_start_10
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1549
    :cond_10
    :goto_10
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_11
    const/4 v1, 0x1

    :goto_11
    if-nez v1, :cond_12

    const-string v1, "persist.sys.anr_sys_key"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1551
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/ServerThread$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/ServerThread$2$1;-><init>(Lcom/android/server/ServerThread$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1559
    :cond_12
    :try_start_11
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1564
    :cond_13
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1569
    :cond_14
    :goto_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1574
    :cond_15
    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_16

    .line 1575
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1580
    :cond_16
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v1}, Lcom/android/server/dreams/DreamManagerService;->systemRunning()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1585
    :cond_17
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 1591
    :cond_18
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1597
    :cond_19
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V

    .line 1599
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V

    .line 1600
    :cond_1b
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF3:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF3:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V

    .line 1601
    :cond_1c
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF4:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF4:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    .line 1613
    :cond_1d
    :goto_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    if-eqz v1, :cond_1e

    .line 1614
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-virtual {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->systemReady()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_19

    .line 1623
    :cond_1e
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;

    if-eqz v1, :cond_1f

    .line 1624
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;

    invoke-interface {v1}, Lcom/mediatek/common/perfservice/IPerfServiceManager;->systemReady()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1632
    :cond_1f
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v1}, Lcom/android/server/print/PrintManagerService;->systemRuning()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1638
    :cond_20
    :goto_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1645
    :cond_21
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->systemReady()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1658
    :cond_22
    :goto_1e
    return-void

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making MobileManagerService ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1462
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1463
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "observing native crashes"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1470
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1471
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Mount Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1475
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 1476
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Battery Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1480
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 1481
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Managment Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1485
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    .line 1486
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Stats Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1490
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 1491
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Policy Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1495
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 1496
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Connectivity Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1500
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    .line 1501
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Dock Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1505
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 1506
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making USB Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1510
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 1511
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "makin Twilight Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1515
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .line 1516
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making UI Mode Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1520
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    .line 1521
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Recognition Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1530
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    .line 1531
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying AppWidgetService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1535
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    .line 1536
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying WallpaperService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1540
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    .line 1541
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying InputMethodService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1545
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    .line 1546
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying Location Service running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1549
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_11

    .line 1560
    :catch_11
    move-exception v0

    .line 1561
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying CountryDetectorService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1565
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v0

    .line 1566
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying NetworkTimeService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1570
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 1571
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying CommonTimeManagementService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 1576
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v0

    .line 1577
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying TextServicesManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1581
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v0

    .line 1582
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying DreamManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1586
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v0

    .line 1587
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying AssetAtlasService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1592
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 1593
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying InputManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1606
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v0

    .line 1607
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying TelephonyRegistry running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 1616
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v0

    .line 1617
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making MtkThermalSwitchManager ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 1626
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v0

    .line 1627
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making PerfServiceManager ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1633
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v0

    .line 1634
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying PrintManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1639
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v0

    .line 1640
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying MediaRouterService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1646
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v0

    .line 1647
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making RecoveryManagerService ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e
.end method