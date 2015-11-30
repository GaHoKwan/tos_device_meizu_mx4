.class public Lcom/aliyun/ams/ic/InfoCollectManager;
.super Lcom/aliyun/ams/ic/IInfoCollectManager;
.source "InfoCollectManager.java"


# static fields
.field private static volatile sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/aliyun/ams/ic/IInfoCollectManager;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aliyun/ams/ic/InfoCollectManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/aliyun/ams/ic/InfoCollectManager;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/aliyun/ams/ic/InfoCollectManager;

    invoke-direct {v0, p0}, Lcom/aliyun/ams/ic/InfoCollectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/aliyun/ams/ic/InfoCollectManager;->sInstance:Lcom/aliyun/ams/ic/InfoCollectManager;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public collectActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method
