.class public Lcom/aliyun/ams/secure/SecureManager;
.super Ljava/lang/Object;
.source "SecureManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecureService"

.field public static final TAOYUN_SECURE_SERVICE:Ljava/lang/String; = "SecureService"

.field public static final TAOYUN_SECURE_SERVICE_INTENT:Ljava/lang/String; = "com.aliyun.ams.secure.service.ISecureService"

.field private static mSecureManager:Lcom/aliyun/ams/secure/SecureManager;

.field private static mSecureServiceConnection:Landroid/content/ServiceConnection;


# instance fields
.field private mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/ams/secure/SecureManager;->mSecureManager:Lcom/aliyun/ams/secure/SecureManager;

    .line 90
    new-instance v0, Lcom/aliyun/ams/secure/SecureManager$2;

    invoke-direct {v0}, Lcom/aliyun/ams/secure/SecureManager$2;-><init>()V

    sput-object v0, Lcom/aliyun/ams/secure/SecureManager;->mSecureServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 36
    const-string v0, "SecureService"

    const-string v1, "Create SecureManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    return-void
.end method

.method private addBlackTwo(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2, p3}, Lcom/aliyun/ams/secure/service/ISecureService;->addBlack(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 637
    :goto_0
    return v1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 635
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 637
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static bindService(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v3, "SecureService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 114
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.aliyun.ams.secure.service.ISecureService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aliyun/ams/secure/SecureManager;->getSecureServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "Secure Service not present!"

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private blockCallTwo(ILjava/lang/String;)Z
    .locals 2
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->filterCall(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const/4 v1, 0x1

    .line 369
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 367
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private blockSmsTwo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "sender"    # Ljava/lang/String;

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x1

    .line 199
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private blockSmsTwo(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSmsFromPkg(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 238
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static debug_log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "SecureService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method private filterIntentTwo(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "action"    # Landroid/app/PendingIntent;

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->filterIntent(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const/4 v1, 0x1

    .line 438
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 436
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private filterProviderTwo(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->filterProvider(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const/4 v1, 0x1

    .line 475
    :goto_0
    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 473
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/aliyun/ams/secure/SecureManager;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aliyun/ams/secure/SecureManager;->get(Landroid/content/Context;)Lcom/aliyun/ams/secure/SecureManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/aliyun/ams/secure/SecureManager;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 45
    const-class v4, Lcom/aliyun/ams/secure/SecureManager;

    monitor-enter v4

    .line 46
    :try_start_0
    const-string v5, "SecureService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 48
    :cond_0
    if-eqz p0, :cond_5

    .line 49
    const-string v3, "Start SecureService"

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/aliyun/ams/secure/SecureManager;->startSecureServiceInNewThread(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 60
    const-wide/16 v5, 0xc8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_1
    :try_start_2
    const-string v3, "SecureService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 69
    :cond_1
    const/4 v3, 0x0

    sput-object v3, Lcom/aliyun/ams/secure/SecureManager;->mSecureManager:Lcom/aliyun/ams/secure/SecureManager;

    .line 74
    .end local v2    # "i":I
    :cond_2
    sget-object v3, Lcom/aliyun/ams/secure/SecureManager;->mSecureManager:Lcom/aliyun/ams/secure/SecureManager;

    if-nez v3, :cond_3

    .line 75
    new-instance v3, Lcom/aliyun/ams/secure/SecureManager;

    invoke-direct {v3}, Lcom/aliyun/ams/secure/SecureManager;-><init>()V

    sput-object v3, Lcom/aliyun/ams/secure/SecureManager;->mSecureManager:Lcom/aliyun/ams/secure/SecureManager;

    .line 77
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    sget-object v3, Lcom/aliyun/ams/secure/SecureManager;->mSecureManager:Lcom/aliyun/ams/secure/SecureManager;

    :goto_2
    return-object v3

    .line 61
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 58
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private getIService()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-nez v1, :cond_1

    .line 150
    const-string v1, "SecureService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/ams/secure/service/ISecureService;

    move-result-object v1

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 156
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_1
    return-void
.end method

.method public static getSecureServiceConnection()Landroid/content/ServiceConnection;
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/aliyun/ams/secure/SecureManager;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/aliyun/ams/secure/SecureManager;->mSecureServiceConnection:Landroid/content/ServiceConnection;

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isBlackTwo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->isBlack(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 603
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 601
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFraudTwo(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "isSms"    # Z

    .prologue
    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->isFraud(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 570
    :goto_0
    return v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 568
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reGetServiceBinder()V
    .locals 5

    .prologue
    .line 136
    const-class v3, Lcom/aliyun/ams/secure/SecureManager;

    monitor-enter v3

    .line 137
    :try_start_0
    const-string v2, "SecureService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reGetServiceBinder: binder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 139
    if-nez v0, :cond_0

    .line 140
    monitor-exit v3

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {v0}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aliyun/ams/secure/service/ISecureService;

    move-result-object v1

    .line 143
    .local v1, "service":Lcom/aliyun/ams/secure/service/ISecureService;
    if-eqz v1, :cond_1

    .line 144
    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 145
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "service":Lcom/aliyun/ams/secure/service/ISecureService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeBlackTwo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->removeBlack(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 670
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportCallTwo(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "time"    # J

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/aliyun/ams/secure/service/ISecureService;->reportCall(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v6

    .line 503
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 504
    const-string v0, "SecureService Binder is dead."

    invoke-static {v0}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportSmsTwo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/aliyun/ams/secure/service/ISecureService;->reportSms(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 536
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startSecureServiceInNewThread(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/aliyun/ams/secure/SecureManager$1;

    invoke-direct {v0, p0}, Lcom/aliyun/ams/secure/SecureManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/aliyun/ams/secure/SecureManager$1;->start()V

    .line 88
    return-void
.end method

.method private tipOneRingTwo(ILjava/lang/String;)V
    .locals 2
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->tipOneRing(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 399
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    goto :goto_0
.end method

.method public static unBindService(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 125
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v1, "SecureService"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/aliyun/ams/secure/SecureManager;->getSecureServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addBlack(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 608
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v2

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1, p2, p3}, Lcom/aliyun/ams/secure/service/ISecureService;->addBlack(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 618
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 619
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 620
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/ams/secure/SecureManager;->addBlackTwo(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 622
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 623
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in addBlack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public blockCall(ILjava/lang/String;)Z
    .locals 5
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v3, "Enter blockcall."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 339
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v2

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 343
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->filterCall(ILjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    const/4 v2, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 348
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 349
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/SecureManager;->blockCallTwo(ILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in blockCall"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public blockCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/aliyun/ams/secure/SecureManager;->blockCall(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blockSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v3, "Enter blockSms."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const/4 v2, 0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 179
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/ams/secure/SecureManager;->blockSmsTwo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in blockSms"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public blockSms(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 204
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSmsFromPkg(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const/4 v2, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 217
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 218
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/SecureManager;->blockSmsTwo(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 222
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in blockSms$send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public blockSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/aliyun/ams/secure/SecureManager;->blockSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public endSession()V
    .locals 4

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v2}, Lcom/aliyun/ams/secure/service/ISecureService;->endSession()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SecureService Binder is dead."

    invoke-static {v2}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 324
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 327
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SecureService"

    const-string v3, "Exception in endSession"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public filterIntent(Landroid/app/PendingIntent;)Z
    .locals 5
    .param p1, "action"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 404
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v2

    .line 408
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->filterIntent(Landroid/app/PendingIntent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    const/4 v2, 0x1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 416
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 417
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 418
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/SecureManager;->filterIntentTwo(Landroid/app/PendingIntent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 421
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in filterIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public filterProvider(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 442
    if-nez p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v2

    .line 446
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->filterProvider(Landroid/net/Uri;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    const/4 v2, 0x1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 454
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 455
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 456
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/SecureManager;->filterProviderTwo(Landroid/net/Uri;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 458
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 459
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in filterProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public filterSyncIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 243
    if-nez p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 245
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSyncIntent(Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const/4 v2, 0x1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 254
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 255
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 256
    invoke-virtual {p0, p1}, Lcom/aliyun/ams/secure/SecureManager;->filterSyncIntentTwo(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in filterSyncIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public filterSyncIntentTwo(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSyncIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x1

    .line 294
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecureService Binder is dead."

    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public filterSyncTask(ILandroid/content/Intent;)Z
    .locals 4
    .param p1, "task"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v2, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->filterSyncTask(ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x1

    .line 281
    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SecureService Binder is dead."

    invoke-static {v2}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 277
    :catch_1
    move-exception v1

    .line 278
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SecureService"

    const-string v3, "Exception in filterSyncTask"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isBlack(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 575
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v2

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->isBlack(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 583
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 584
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 585
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/SecureManager;->isBlackTwo(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 587
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 588
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in isBlack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFraud(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "isSms"    # Z

    .prologue
    const/4 v2, 0x0

    .line 542
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    :cond_0
    :goto_0
    return v2

    .line 543
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 546
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->isFraud(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 550
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 551
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/SecureManager;->isFraudTwo(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 554
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 555
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in isFraud"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeBlack(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 642
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v2

    .line 645
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 647
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_0

    .line 648
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->removeBlack(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SecureService Binder is dead."

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 653
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 654
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/SecureManager;->removeBlackTwo(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 656
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 657
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in removeBlack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportCall(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "time"    # J

    .prologue
    .line 480
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    :try_start_1
    iget-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/aliyun/ams/secure/service/ISecureService;->reportCall(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v6

    .line 487
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "SecureService Binder is dead."

    invoke-static {v0}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 489
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 490
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/ams/secure/SecureManager;->reportCallTwo(Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 492
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 493
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "SecureService"

    const-string v1, "Exception in reportCall"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSms(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 510
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 515
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/aliyun/ams/secure/service/ISecureService;->reportSms(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SecureService Binder is dead."

    invoke-static {v2}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 520
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 521
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 522
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/ams/secure/SecureManager;->reportSmsTwo(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 524
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 525
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SecureService"

    const-string v3, "Exception in reportSms"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public scanApkFile(Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "doCloudScan"    # Z

    .prologue
    const/4 v3, -0x2

    .line 705
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    const-string v4, "SecureService"

    const-string v5, "scanPackages: File path name is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    return v3

    .line 710
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 712
    const-string v4, "SecureService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanPackages: File does not exist, name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 731
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SecureService"

    const-string v4, "Exception in scanApkFile"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 716
    .restart local v2    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    :try_start_2
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v3, :cond_2

    .line 719
    iget-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v3, p1, p2, p3}, Lcom/aliyun/ams/secure/service/ISecureService;->scanApkFile(Ljava/lang/String;IZ)I

    move-result v3

    goto :goto_0

    .line 722
    :cond_2
    const-string v3, "SecureService"

    const-string v4, "scanApkFile: SecureService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 724
    :catch_1
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "SecureService"

    const-string v4, "scanApkFile: SecureService Binder is dead."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 727
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 728
    invoke-virtual {p0, p1, p2, p3}, Lcom/aliyun/ams/secure/SecureManager;->scanApkFileTwo(Ljava/lang/String;IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    goto :goto_0
.end method

.method public scanApkFileTwo(Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "doCloudScan"    # Z

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2, p3}, Lcom/aliyun/ams/secure/service/ISecureService;->scanApkFile(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 760
    const-string v1, "SecureService"

    const-string v2, "scanApkFileTwo: SecureService Binder is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v1, -0x2

    goto :goto_0

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scanPackages(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "doCloudScan"    # Z

    .prologue
    .line 677
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    const-string v2, "SecureService"

    const-string v3, "scanPackages: package name is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, -0x2

    .line 700
    :goto_0
    return v2

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v2, :cond_1

    .line 685
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v2, p1, p2, p3}, Lcom/aliyun/ams/secure/service/ISecureService;->scanPackages(Ljava/lang/String;IZ)I

    move-result v2

    goto :goto_0

    .line 688
    :cond_1
    const-string v2, "SecureService"

    const-string v3, "scanPackages: SecureService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 700
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SecureService"

    const-string v3, "scanPackages: SecureService Binder is dead."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 693
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 694
    invoke-virtual {p0, p1, p2, p3}, Lcom/aliyun/ams/secure/SecureManager;->scanPackagesTwo(Ljava/lang/String;IZ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 697
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SecureService"

    const-string v3, "Exception in scanPackages"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public scanPackagesTwo(Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "doCloudScan"    # Z

    .prologue
    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v1, p1, p2, p3}, Lcom/aliyun/ams/secure/service/ISecureService;->scanPackages(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 749
    :goto_0
    return v1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 745
    const-string v1, "SecureService"

    const-string v2, "scanPackagesTwo: SecureService Binder is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v1, -0x2

    goto :goto_0

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v2, p1}, Lcom/aliyun/ams/secure/service/ISecureService;->startSession(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SecureService Binder is dead."

    invoke-static {v2}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 306
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 307
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 310
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SecureService"

    const-string v3, "Exception in startSession"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tipOneRing(ILjava/lang/String;)V
    .locals 4
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 374
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->getIService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    invoke-interface {v2, p1, p2}, Lcom/aliyun/ams/secure/service/ISecureService;->tipOneRing(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SecureService Binder is dead."

    invoke-static {v2}, Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V

    .line 382
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aliyun/ams/secure/SecureManager;->mSecureService:Lcom/aliyun/ams/secure/service/ISecureService;

    .line 383
    invoke-direct {p0}, Lcom/aliyun/ams/secure/SecureManager;->reGetServiceBinder()V

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/SecureManager;->tipOneRingTwo(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 387
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SecureService"

    const-string v3, "Exception in tipOneRing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
