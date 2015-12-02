.class public Lcom/android/server/AliSystemServiceHelper;
.super Ljava/lang/Object;
.source "AliSystemServiceHelper.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AliSystemServiceHelper"

.field private static mAliSystemServiceHelper:Lcom/android/server/AliSystemServiceHelper;


# instance fields
.field infoCollect:Lcom/aliyun/ams/ic/InfoCollectService;

.field public mTyidConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AliSystemServiceHelper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AliSystemServiceHelper;->infoCollect:Lcom/aliyun/ams/ic/InfoCollectService;

    .line 142
    new-instance v0, Lcom/android/server/AliSystemServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/AliSystemServiceHelper$1;-><init>(Lcom/android/server/AliSystemServiceHelper;)V

    iput-object v0, p0, Lcom/android/server/AliSystemServiceHelper;->mTyidConnection:Landroid/content/ServiceConnection;

    .line 47
    return-void
.end method

.method public static get()Lcom/android/server/AliSystemServiceHelper;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/android/server/AliSystemServiceHelper;->mAliSystemServiceHelper:Lcom/android/server/AliSystemServiceHelper;

    if-nez v0, :cond_1

    .line 55
    sget-boolean v0, Lcom/android/server/AliSystemServiceHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "AliSystemServiceHelper"

    const-string v1, "mAliSystemServiceHelper == null, create AliSystemServiceHelper."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    new-instance v0, Lcom/android/server/AliSystemServiceHelper;

    invoke-direct {v0}, Lcom/android/server/AliSystemServiceHelper;-><init>()V

    sput-object v0, Lcom/android/server/AliSystemServiceHelper;->mAliSystemServiceHelper:Lcom/android/server/AliSystemServiceHelper;

    .line 61
    :cond_1
    sget-object v0, Lcom/android/server/AliSystemServiceHelper;->mAliSystemServiceHelper:Lcom/android/server/AliSystemServiceHelper;

    return-object v0
.end method


# virtual methods
.method public addServices(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-boolean v3, Lcom/android/server/AliSystemServiceHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "AliSystemServiceHelper"

    const-string v4, "enter addServices()."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :try_start_0
    const-string v3, "AliSystemServiceHelper"

    const-string v4, "Info Collect Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Lcom/aliyun/ams/ic/InfoCollectService;

    invoke-direct {v3, p1}, Lcom/aliyun/ams/ic/InfoCollectService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/AliSystemServiceHelper;->infoCollect:Lcom/aliyun/ams/ic/InfoCollectService;

    .line 76
    const-string v3, "info_collect"

    iget-object v4, p0, Lcom/android/server/AliSystemServiceHelper;->infoCollect:Lcom/aliyun/ams/ic/InfoCollectService;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.aliyun.ams.tyid.service.ITYIDService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/AliSystemServiceHelper;->mTyidConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 87
    .local v2, "res":Z
    const-string v3, "Tyidservice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "res":Z
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.aliyun.ams.secure.service.ISecureService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    return-void

    .line 77
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "AliSystemServiceHelper"

    const-string v4, "Failure starting info collect service!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 89
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "AliSystemServiceHelper"

    const-string v4, "Tyid service not present"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemEnd(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 122
    sget-boolean v3, Lcom/android/server/AliSystemServiceHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 123
    const-string v3, "AliSystemServiceHelper"

    const-string v4, "enter systemEnd()."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 128
    .local v0, "deviceProvisioned":Z
    :cond_1
    if-nez v0, :cond_2

    .line 130
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.aliyun.FirstExperience.launch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "AliSystemServiceHelper"

    const-string v4, "FirstExperience is not found."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/server/AliSystemServiceHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "AliSystemServiceHelper"

    const-string v1, "enter systemReady()."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AliSystemServiceHelper;->infoCollect:Lcom/aliyun/ams/ic/InfoCollectService;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/server/AliSystemServiceHelper;->infoCollect:Lcom/aliyun/ams/ic/InfoCollectService;

    invoke-virtual {v0}, Lcom/aliyun/ams/ic/InfoCollectService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
