.class public Landroid/content/res/flymetheme/FlymeThemeResourceManager;
.super Ljava/lang/Object;
.source "FlymeThemeResourceManager.java"


# static fields
.field private static sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;


# instance fields
.field private mFlymeThemeResourceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/flymetheme/FlymeThemeResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->mFlymeThemeResourceList:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/content/res/flymetheme/FlymeThemeResourceManager;
    .locals 2

    .prologue
    .line 12
    const-class v1, Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    invoke-direct {v0}, Landroid/content/res/flymetheme/FlymeThemeResourceManager;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    .line 15
    :cond_0
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getFlymeThemeResource(Ljava/lang/String;)Landroid/content/res/flymetheme/FlymeThemeResource;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->mFlymeThemeResourceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/flymetheme/FlymeThemeResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFlymeThemeResource(Ljava/lang/String;Landroid/content/res/flymetheme/FlymeThemeResource;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ftr"    # Landroid/content/res/flymetheme/FlymeThemeResource;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->mFlymeThemeResourceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
