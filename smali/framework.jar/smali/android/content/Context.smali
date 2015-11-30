.class public abstract Landroid/content/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Context$PermResult;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility"

.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "account"

.field public static final ACTIVITY_SERVICE:Ljava/lang/String; = "activity"

.field public static final ALARM_SERVICE:Ljava/lang/String; = "alarm"

.field public static final APPWIDGET_SERVICE:Ljava/lang/String; = "appwidget"

.field public static final APP_OPS_SERVICE:Ljava/lang/String; = "appops"

.field public static final AUDIOPROFILE_SERVICE:Ljava/lang/String; = "audioprofile"

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final BACKUP_SERVICE:Ljava/lang/String; = "backup"

.field public static final BIND_ABOVE_CLIENT:I = 0x8

.field public static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_ALLOW_OOM_MANAGEMENT:I = 0x10

.field public static final BIND_AUTO_CREATE:I = 0x1

.field public static final BIND_DEBUG_UNBIND:I = 0x2

.field public static final BIND_IMPORTANT:I = 0x40

.field public static final BIND_NOT_FOREGROUND:I = 0x4

.field public static final BIND_NOT_VISIBLE:I = 0x40000000

.field public static final BIND_SHOWING_UI:I = 0x20000000

.field public static final BIND_VISIBLE:I = 0x10000000

.field public static final BIND_WAIVE_PRIORITY:I = 0x20

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final CAMERA_SERVICE:Ljava/lang/String; = "camera"

.field public static final CAPTIONING_SERVICE:Ljava/lang/String; = "captioning"

.field public static final CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboard"

.field public static final CONNECTIVITY_SERVICE:Ljava/lang/String; = "connectivity"

.field public static final CONSUMER_IR_SERVICE:Ljava/lang/String; = "consumer_ir"

.field public static final CONTEXT_IGNORE_SECURITY:I = 0x2

.field public static final CONTEXT_INCLUDE_CODE:I = 0x1

.field public static final CONTEXT_RESTRICTED:I = 0x4

.field public static final COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field public static final DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static final DISPLAY_SERVICE:Ljava/lang/String; = "display"

.field public static final DOWNLOAD_SERVICE:Ljava/lang/String; = "download"

.field public static final DROPBOX_SERVICE:Ljava/lang/String; = "dropbox"

.field public static final IMS_SERVICE:Ljava/lang/String; = "ImsFrameworkService"

.field public static final INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method"

.field public static final INPUT_SERVICE:Ljava/lang/String; = "input"

.field public static final KEYGUARD_SERVICE:Ljava/lang/String; = "keyguard"

.field public static final LAYOUT_INFLATER_SERVICE:Ljava/lang/String; = "layout_inflater"

.field public static final LOCATION_SERVICE:Ljava/lang/String; = "location"

.field public static final MEDIA_ROUTER_SERVICE:Ljava/lang/String; = "media_router"

.field public static final MESSAGE_MONITOR_SERVICE:Ljava/lang/String; = "msgmonitorservice"

.field public static final MOBILE_SERVICE:Ljava/lang/String; = "mobile"

.field public static final MODE_APPEND:I = 0x8000

.field public static final MODE_ENABLE_WRITE_AHEAD_LOGGING:I = 0x8

.field public static final MODE_MULTI_PROCESS:I = 0x4

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MTK_AGPS_SERVICE:Ljava/lang/String; = "mtk-agps"

.field public static final MTK_HDMI_SERVICE:Ljava/lang/String; = "mtkhdmi"

.field public static final MTK_PASSPOINT_SERVICE:Ljava/lang/String; = "mtk-passpoint"

.field public static final MTK_PERF_SERVICE:Ljava/lang/String; = "mtk-perfservice"

.field public static final NETWORKMANAGEMENT_SERVICE:Ljava/lang/String; = "network_management"

.field public static final NETWORK_POLICY_SERVICE:Ljava/lang/String; = "netpolicy"

.field public static final NETWORK_STATS_SERVICE:Ljava/lang/String; = "netstats"

.field public static final NFC_SERVICE:Ljava/lang/String; = "nfc"

.field public static final NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final NSD_SERVICE:Ljava/lang/String; = "servicediscovery"

.field public static final PERMISSION_CONTROL_SERVICE:Ljava/lang/String; = "flyme_permission"

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"

.field public static final PPPOE_SERVICE:Ljava/lang/String; = "pppoe"

.field public static final PRINT_SERVICE:Ljava/lang/String; = "print"

.field public static final RECOVERY_SERVICE:Ljava/lang/String; = "recovery"

.field public static final SAMBA_CLIENT_SERVICE:Ljava/lang/String; = "samba_client"

.field public static final SAMBA_SERVER_SERVICE:Ljava/lang/String; = "samba_server"

.field public static final SEARCH_ENGINE_SERVICE:Ljava/lang/String; = "search_engine"

.field public static final SEARCH_SERVICE:Ljava/lang/String; = "search"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"

.field public static final SERIAL_SERVICE:Ljava/lang/String; = "serial"

.field public static final SIP_SERVICE:Ljava/lang/String; = "sip"

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field public static final STORAGE_SERVICE:Ljava/lang/String; = "storage"

.field private static final TAG:Ljava/lang/String; = "AliPermission"

.field public static final TAOYUN_TYID_SERVICE:Ljava/lang/String; = "TyidService"

.field public static final TAOYUN_TYID_SERVICE_INTENT:Ljava/lang/String; = "com.aliyun.ams.tyid.service.ITYIDService"

.field public static final TELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final TELEPHONY_SERVICEEX:Ljava/lang/String; = "phoneEx"

.field public static final TEXT_SERVICES_MANAGER_SERVICE:Ljava/lang/String; = "textservices"

.field public static final UI_MODE_SERVICE:Ljava/lang/String; = "uimode"

.field public static final UPDATE_LOCK_SERVICE:Ljava/lang/String; = "updatelock"

.field public static final USB_SERVICE:Ljava/lang/String; = "usb"

.field public static final USER_SERVICE:Ljava/lang/String; = "user"

.field public static final VIBRATOR_SERVICE:Ljava/lang/String; = "vibrator"

.field public static final WALLPAPER_SERVICE:Ljava/lang/String; = "wallpaper"

.field public static final WIFI_P2P_SERVICE:Ljava/lang/String; = "wifip2p"

.field public static final WIFI_SERVICE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_SERVICE:Ljava/lang/String; = "window"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context$PermResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/Context;->sCache:Ljava/util/HashMap;

    .line 3230
    new-instance v0, Landroid/content/Context$1;

    invoke-direct {v0}, Landroid/content/Context$1;-><init>()V

    invoke-static {v0}, Ljava/net/Socket;->setNetworkCtrl(Ljava/net/Socket$INetworkCtrl;)V

    .line 3254
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3116
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/content/Context$PermResult;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/content/Context;->getCache(Ljava/lang/String;)Landroid/content/Context$PermResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Landroid/content/Context;->isSendingMMSDenied()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Landroid/content/Context;->isSendingEmailDenied()Z

    move-result v0

    return v0
.end method

.method public static final checkAskPermission(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 3180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/content/Context;->checkAskPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final checkAskPermission(Ljava/lang/String;II)I
    .locals 8
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 3155
    if-nez p0, :cond_0

    .line 3156
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "permission is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3158
    :cond_0
    const-string v7, "Permission"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_2

    move v5, v6

    .line 3175
    :cond_1
    :goto_0
    return v5

    .line 3162
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3163
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/Context;->getCache(Ljava/lang/String;)Landroid/content/Context$PermResult;

    move-result-object v3

    .line 3164
    .local v3, "ret":Landroid/content/Context$PermResult;
    invoke-virtual {v3}, Landroid/content/Context$PermResult;->needUpdate()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3165
    iget-boolean v7, v3, Landroid/content/Context$PermResult;->ret:Z

    if-nez v7, :cond_1

    move v5, v6

    goto :goto_0

    .line 3168
    :cond_3
    :try_start_0
    const-string v7, "Permission"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/aliyun/permission/IPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/permission/IPermissionService;

    move-result-object v4

    .line 3170
    .local v4, "service":Lcom/aliyun/permission/IPermissionService;
    invoke-interface {v4, p2, p1, p0}, Lcom/aliyun/permission/IPermissionService;->isPermissionDenied(IILjava/lang/String;)Z

    move-result v1

    .line 3171
    .local v1, "isDenied":Z
    iput-boolean v1, v3, Landroid/content/Context$PermResult;->ret:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3173
    if-nez v1, :cond_1

    move v5, v6

    goto :goto_0

    .line 3174
    .end local v1    # "isDenied":Z
    .end local v4    # "service":Lcom/aliyun/permission/IPermissionService;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AliPermission"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final checkReceiveSMSGranted(II)I
    .locals 4
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 3143
    const-string v2, "Permission"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3150
    :cond_0
    :goto_0
    return v1

    .line 3147
    :cond_1
    :try_start_0
    const-string v2, "Permission"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/permission/IPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/permission/IPermissionService;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/aliyun/permission/IPermissionService;->isReceiveSMSGranted(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 3149
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AliPermission"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getCache(Ljava/lang/String;)Landroid/content/Context$PermResult;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 3218
    const/4 v1, 0x0

    .line 3219
    .local v1, "ret":Landroid/content/Context$PermResult;
    sget-object v4, Landroid/content/Context;->sCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 3220
    :try_start_0
    sget-object v3, Landroid/content/Context;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/Context$PermResult;

    move-object v1, v0

    .line 3221
    if-nez v1, :cond_0

    .line 3222
    new-instance v2, Landroid/content/Context$PermResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/Context$PermResult;-><init>(Landroid/content/Context$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3223
    .end local v1    # "ret":Landroid/content/Context$PermResult;
    .local v2, "ret":Landroid/content/Context$PermResult;
    :try_start_1
    sget-object v3, Landroid/content/Context;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 3225
    .end local v2    # "ret":Landroid/content/Context$PermResult;
    .restart local v1    # "ret":Landroid/content/Context$PermResult;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 3226
    return-object v1

    .line 3225
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "ret":Landroid/content/Context$PermResult;
    .restart local v2    # "ret":Landroid/content/Context$PermResult;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ret":Landroid/content/Context$PermResult;
    .restart local v1    # "ret":Landroid/content/Context$PermResult;
    goto :goto_0
.end method

.method private static getNetworkType()I
    .locals 4

    .prologue
    .line 3257
    const/4 v1, -0x1

    .line 3259
    .local v1, "netType":I
    :try_start_0
    const-string v2, "Permission"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/permission/IPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/permission/IPermissionService;

    move-result-object v2

    invoke-interface {v2}, Lcom/aliyun/permission/IPermissionService;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3262
    :goto_0
    return v1

    .line 3261
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AliPermission"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final isAskNetworkDenied()Z
    .locals 4

    .prologue
    .line 3190
    invoke-static {}, Landroid/content/Context;->getNetworkType()I

    move-result v2

    .line 3191
    .local v2, "type":I
    const/4 v0, 0x0

    .line 3192
    .local v0, "permission":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3193
    const-string/jumbo v0, "yunos.permission.MOBILE"

    .line 3200
    :goto_0
    invoke-static {v0}, Landroid/content/Context;->isAskPermissionDenied(Ljava/lang/String;)Z

    move-result v1

    .line 3201
    :goto_1
    return v1

    .line 3194
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3195
    const-string/jumbo v0, "yunos.permission.WIFI"

    goto :goto_0

    .line 3197
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final isAskPermissionDenied(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 3185
    invoke-static {p0}, Landroid/content/Context;->checkAskPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isSendingEmailDenied()Z
    .locals 4

    .prologue
    .line 3212
    const-string/jumbo v1, "yunos.permission.SEND_EMAIL"

    invoke-static {v1}, Landroid/content/Context;->isAskPermissionDenied(Ljava/lang/String;)Z

    move-result v0

    .line 3213
    .local v0, "ret":Z
    const-string v1, "AliPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSendingEmailDenied returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    return v0
.end method

.method private static final isSendingMMSDenied()Z
    .locals 4

    .prologue
    .line 3206
    const-string/jumbo v1, "yunos.permission.SEND_MMS"

    invoke-static {v1}, Landroid/content/Context;->isAskPermissionDenied(Ljava/lang/String;)Z

    move-result v0

    .line 3207
    .local v0, "ret":Z
    const-string v1, "AliPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSendingMMSDenied returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    return v0
.end method


# virtual methods
.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1877
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract checkCallingOrSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
.end method

.method public abstract checkCallingPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingUriPermission(Landroid/net/Uri;I)I
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public abstract clearWallpaper()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
.end method

.method public abstract createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
.end method

.method public abstract createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract databaseList()[Ljava/lang/String;
.end method

.method public abstract deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fileList()[Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getBasePackageName()Ljava/lang/String;
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getDatabasePath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDir(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
.end method

.method public abstract getExternalCacheDir()Ljava/io/File;
.end method

.method public abstract getExternalCacheDirs()[Ljava/io/File;
.end method

.method public abstract getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
.end method

.method public abstract getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilesDir()Ljava/io/File;
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public abstract getObbDir()Ljava/io/File;
.end method

.method public abstract getObbDirs()[Ljava/io/File;
.end method

.method public abstract getOpPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageCodePath()Ljava/lang/String;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageResourcePath()Ljava/lang/String;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getUserId()I
.end method

.method public abstract getWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumHeight()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumWidth()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public isDeviceDefaultTheme()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3098
    sget-object v1, Lcom/android/internal/R$styleable;->ThemeDeviceDefault:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3099
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 3089
    const/4 v0, 0x0

    return v0
.end method

.method public isThemeLight()Z
    .locals 3

    .prologue
    .line 3107
    sget-object v1, Lcom/android/internal/R$styleable;->ThemeDeviceDefault:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3108
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public needBlockLaunch(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 3132
    const-string v2, "Permission"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3139
    :goto_0
    return v1

    .line 3136
    :cond_0
    :try_start_0
    const-string v2, "Permission"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/permission/IPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/permission/IPermissionService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aliyun/permission/IPermissionService;->needBlockLaunch(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 3138
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AliPermission"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "attrs"    # [I

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract peekWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 335
    return-void
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract removeStickyBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract revokeUriPermission(Landroid/net/Uri;I)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendStickyBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setTheme(I)V
.end method

.method public abstract setWallpaper(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setWallpaper(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startActivities([Landroid/content/Intent;)V
.end method

.method public abstract startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # Landroid/os/UserHandle;

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract stopService(Landroid/content/Intent;)Z
.end method

.method public abstract stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
.end method

.method public abstract unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 343
    return-void
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
