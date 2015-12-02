.class public Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;
.super Landroid/database/ContentObserver;
.source "InfoCollectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/ams/ic/InfoCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/ic/InfoCollectService;


# direct methods
.method public constructor <init>(Lcom/aliyun/ams/ic/InfoCollectService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    .line 109
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 112
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iget-object v4, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/aliyun/ams/ic/InfoCollectService;->access$100(Lcom/aliyun/ams/ic/InfoCollectService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/ams/ic/IInfoCollectManager;->isICOpenBySettings(Landroid/content/Context;)Z

    move-result v4

    # setter for: Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z
    invoke-static {v3, v4}, Lcom/aliyun/ams/ic/InfoCollectService;->access$002(Lcom/aliyun/ams/ic/InfoCollectService;Z)Z

    .line 113
    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->DEBUG:Z
    invoke-static {}, Lcom/aliyun/ams/ic/InfoCollectService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const-string v3, "ic2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "now the value isEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z
    invoke-static {v5}, Lcom/aliyun/ams/ic/InfoCollectService;->access$000(Lcom/aliyun/ams/ic/InfoCollectService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selfChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    invoke-virtual {v3}, Lcom/aliyun/ams/ic/InfoCollectService;->systemReady()V

    .line 117
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iget-object v4, v3, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    monitor-enter v4

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iget-object v3, v3, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aliyun/ams/ic/ICollectEnableCallback;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/ams/ic/ICollectEnableCallback;

    .line 123
    .local v0, "callBack":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    if-eqz v0, :cond_1

    .line 124
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$SettingsChangedObserver;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->isEnable:Z
    invoke-static {v3}, Lcom/aliyun/ams/ic/InfoCollectService;->access$000(Lcom/aliyun/ams/ic/InfoCollectService;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Lcom/aliyun/ams/ic/ICollectEnableCallback;->onEnableStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "callBack":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 130
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aliyun/ams/ic/ICollectEnableCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 124
    .restart local v0    # "callBack":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aliyun/ams/ic/ICollectEnableCallback;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 130
    .end local v0    # "callBack":Lcom/aliyun/ams/ic/ICollectEnableCallback;
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    return-void
.end method
