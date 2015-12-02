.class public Lcom/aliyun/ams/ic/InfoCollectService;
.super Lcom/aliyun/ams/ic/IInfoCollect$Stub;
.source "InfoCollectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final INFO_COLLECT_CLASSNAME:Ljava/lang/String; = "com.aliyun.ic/com.aliyun.ic.WorkService"

.field public static final TAG:Ljava/lang/String; = "IC"


# instance fields
.field enableChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aliyun/ams/ic/ICollectEnableCallback;",
            ">;"
        }
    .end annotation
.end field

.field private isEnable:Z

.field private mBinder:Landroid/os/IBinder;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aliyun/ams/ic/ICollectCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMessageCount:I

.field mSystemReadyRunable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/aliyun/ams/ic/InfoCollectService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/aliyun/ams/ic/IInfoCollect$Stub;-><init>()V

    .line 75
    iput v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mMessageCount:I

    .line 78
    iput-boolean v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;

    .line 195
    new-instance v1, Lcom/aliyun/ams/ic/InfoCollectService$3;

    invoke-direct {v1, p0}, Lcom/aliyun/ams/ic/InfoCollectService$3;-><init>(Lcom/aliyun/ams/ic/InfoCollectService;)V

    iput-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mSystemReadyRunable:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    .line 96
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "InfoCollectService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mThread:Landroid/os/HandlerThread;

    .line 97
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mHandler:Landroid/os/Handler;

    .line 99
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aliyun/ams/ic/IInfoCollectManager;->isICOpenBySettings(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    .line 100
    const-string v1, "IC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "meizu_data_collection"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;

    iget-object v4, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;-><init>(Lcom/aliyun/ams/ic/InfoCollectService;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/ams/ic/InfoCollectService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectService;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/aliyun/ams/ic/InfoCollectService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectService;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/aliyun/ams/ic/InfoCollectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/aliyun/ams/ic/InfoCollectService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/aliyun/ams/ic/InfoCollectService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$408(Lcom/aliyun/ams/ic/InfoCollectService;)I
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectService;

    .prologue
    .line 70
    iget v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mMessageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mMessageCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/aliyun/ams/ic/InfoCollectService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/ams/ic/InfoCollectService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method private sendInfoToClient(Ljava/lang/String;J)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p1

    .line 163
    .local v0, "info":Ljava/lang/String;
    move-wide v1, p2

    .line 164
    .local v1, "infoFlags":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/aliyun/ams/ic/InfoCollectService$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/aliyun/ams/ic/InfoCollectService$2;-><init>(Lcom/aliyun/ams/ic/InfoCollectService;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump assetredirection from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/aliyun/ams/ic/IInfoCollect$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 247
    const-string v2, "---- IC ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Setting.Secure.INFO_CELLECTION_ENABLE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/aliyun/ams/ic/IInfoCollectManager;->isICOpenBySettings(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    MessageCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mMessageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v2, "    Callback :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/ams/ic/ICollectCallback;

    .line 254
    .local v0, "callback":Lcom/aliyun/ams/ic/ICollectCallback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    :try_start_0
    invoke-interface {v0}, Lcom/aliyun/ams/ic/ICollectCallback;->dump()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 257
    :catch_0
    move-exception v2

    goto :goto_1

    .line 260
    .end local v0    # "callback":Lcom/aliyun/ams/ic/ICollectCallback;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    const-string v2, "    enableChangedCallbacks"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/ams/ic/ICollectEnableCallback;

    .line 263
    .local v0, "callback":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 265
    .end local v0    # "callback":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0
.end method

.method public registerCollectCallback(Lcom/aliyun/ams/ic/ICollectCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/aliyun/ams/ic/ICollectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;

    const-string v1, "com.aliyun.ams.ic.IC"

    const-string v2, "registerCollectCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1}, Lcom/aliyun/ams/ic/ICollectCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/aliyun/ams/ic/InfoCollectService$1;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/ams/ic/InfoCollectService$1;-><init>(Lcom/aliyun/ams/ic/InfoCollectService;Lcom/aliyun/ams/ic/ICollectCallback;)V

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 154
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 158
    :cond_0
    return v3

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerEnableStateCallback(Lcom/aliyun/ams/ic/ICollectEnableCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/aliyun/ams/ic/ICollectEnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    if-eqz p1, :cond_1

    .line 219
    invoke-interface {p1}, Lcom/aliyun/ams/ic/ICollectEnableCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/aliyun/ams/ic/InfoCollectService$4;

    invoke-direct {v2, p0, p1}, Lcom/aliyun/ams/ic/InfoCollectService$4;-><init>(Lcom/aliyun/ams/ic/InfoCollectService;Lcom/aliyun/ams/ic/ICollectEnableCallback;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 228
    :try_start_0
    iget-boolean v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1, v0}, Lcom/aliyun/ams/ic/ICollectEnableCallback;->onEnableStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    monitor-exit v1

    .line 235
    :cond_1
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendInfo(Ljava/lang/String;J)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/ams/ic/InfoCollectService;->sendInfoToClient(Ljava/lang/String;J)V

    .line 141
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mSystemReadyRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectService;->mSystemReadyRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_0
    return-void
.end method
