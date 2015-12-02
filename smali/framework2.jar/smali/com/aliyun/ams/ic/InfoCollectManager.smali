.class public Lcom/aliyun/ams/ic/InfoCollectManager;
.super Lcom/aliyun/ams/ic/IInfoCollectManager;
.source "InfoCollectManager.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "ACTION"

.field private static final ACTIVITY_ID:Ljava/lang/String; = "ACTIVITY_ID"

.field private static final App_Package_Name:Ljava/lang/String; = "App_Package_Name"

.field private static final DEBUG:Z

.field private static final EVENT:Ljava/lang/String; = "EVENT"

.field private static final EVENT_TIME:Ljava/lang/String; = "EVENT_TIME"

.field public static final INFO_COLLECT_SERVICE:Ljava/lang/String; = "info_collect"

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static volatile sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;


# instance fields
.field private isICEnable:Z

.field private mService:Lcom/aliyun/ams/ic/IInfoCollect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/aliyun/ams/ic/InfoCollectManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/aliyun/ams/ic/IInfoCollectManager;-><init>()V

    .line 36
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->isICEnable:Z

    .line 39
    move-object v0, p1

    .line 41
    .local v0, "_context":Landroid/content/Context;
    const-string v3, "info_collect"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/ams/ic/IInfoCollect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/ams/ic/IInfoCollect;

    move-result-object v3

    iput-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    .line 42
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    if-eqz v3, :cond_0

    .line 43
    new-instance v1, Lcom/aliyun/ams/ic/InfoCollectManager$1;

    invoke-direct {v1, p0}, Lcom/aliyun/ams/ic/InfoCollectManager$1;-><init>(Lcom/aliyun/ams/ic/InfoCollectManager;)V

    .line 50
    .local v1, "callback":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    invoke-interface {v3, v1}, Lcom/aliyun/ams/ic/IInfoCollect;->registerEnableStateCallback(Lcom/aliyun/ams/ic/ICollectEnableCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "callback":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v1    # "callback":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/aliyun/ams/ic/InfoCollectManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 53
    const-string v3, "IC"

    const-string v4, "InfoCollectManager init failed "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/aliyun/ams/ic/InfoCollectManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectManager;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->isICEnable:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aliyun/ams/ic/InfoCollectManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/aliyun/ams/ic/InfoCollectManager;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/aliyun/ams/ic/InfoCollectManager;

    invoke-direct {v0, p0}, Lcom/aliyun/ams/ic/InfoCollectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSatisfiedCondition(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->isICEnable:Z

    if-nez v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collectActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-boolean v1, Lcom/aliyun/ams/ic/InfoCollectManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "IC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "into collectActivityInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " an:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    invoke-direct {p0, p1}, Lcom/aliyun/ams/ic/InfoCollectManager;->isSatisfiedCondition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v0, Lcom/aliyun/ams/ic/ICInfo;

    invoke-direct {v0}, Lcom/aliyun/ams/ic/ICInfo;-><init>()V

    .line 127
    .local v0, "info":Lcom/aliyun/ams/ic/ICInfo;
    const-string v1, "App_Package_Name"

    invoke-virtual {v0, v1, p2}, Lcom/aliyun/ams/ic/ICInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "TYPE"

    const-string v2, "activityInfo"

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/ams/ic/ICInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "ACTION"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/ams/ic/ICInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "EVENT"

    invoke-virtual {v0, v1, p4}, Lcom/aliyun/ams/ic/ICInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1, p3}, Lcom/aliyun/ams/ic/ICInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "EVENT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/ams/ic/ICInfo;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-wide/16 v1, 0x4

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/aliyun/ams/ic/InfoCollectManager;->sendICInfo(Landroid/content/Context;Lcom/aliyun/ams/ic/ICInfo;J)V

    goto :goto_0
.end method

.method public isICEnable()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->isICEnable:Z

    return v0
.end method

.method public registerCollectCallback(Lcom/aliyun/ams/ic/ICollectCallback;)I
    .locals 3
    .param p1, "callback"    # Lcom/aliyun/ams/ic/ICollectCallback;

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    if-nez v2, :cond_0

    .line 112
    :goto_0
    return v1

    .line 108
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    invoke-interface {v2, p1}, Lcom/aliyun/ams/ic/IInfoCollect;->registerCollectCallback(Lcom/aliyun/ams/ic/ICollectCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendICInfo(Landroid/content/Context;Lcom/aliyun/ams/ic/ICInfo;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/aliyun/ams/ic/ICInfo;
    .param p3, "flags"    # J

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/aliyun/ams/ic/InfoCollectManager;->isSatisfiedCondition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    invoke-virtual {p2}, Lcom/aliyun/ams/ic/ICInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4}, Lcom/aliyun/ams/ic/IInfoCollect;->sendInfo(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/DeadObjectException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectManager;->mService:Lcom/aliyun/ams/ic/IInfoCollect;

    .line 92
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
