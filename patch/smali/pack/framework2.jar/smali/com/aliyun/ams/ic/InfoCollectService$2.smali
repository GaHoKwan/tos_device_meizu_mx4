.class Lcom/aliyun/ams/ic/InfoCollectService$2;
.super Ljava/lang/Object;
.source "InfoCollectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/ams/ic/InfoCollectService;->sendInfoToClient(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/ic/InfoCollectService;

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$infoFlags:J


# direct methods
.method constructor <init>(Lcom/aliyun/ams/ic/InfoCollectService;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iput-object p2, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->val$info:Ljava/lang/String;

    iput-wide p3, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->val$infoFlags:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 170
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # operator++ for: Lcom/aliyun/ams/ic/InfoCollectService;->mMessageCount:I
    invoke-static {v3}, Lcom/aliyun/ams/ic/InfoCollectService;->access$408(Lcom/aliyun/ams/ic/InfoCollectService;)I

    .line 171
    iget-object v4, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->val$info:Ljava/lang/String;

    monitor-enter v4

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/aliyun/ams/ic/InfoCollectService;->access$300(Lcom/aliyun/ams/ic/InfoCollectService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/ams/ic/ICollectCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .local v0, "callback":Lcom/aliyun/ams/ic/ICollectCallback;
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->val$info:Ljava/lang/String;

    iget-wide v5, p0, Lcom/aliyun/ams/ic/InfoCollectService$2;->val$infoFlags:J

    invoke-interface {v0, v3, v5, v6}, Lcom/aliyun/ams/ic/ICollectCallback;->sendInfo(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0    # "callback":Lcom/aliyun/ams/ic/ICollectCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 177
    .restart local v0    # "callback":Lcom/aliyun/ams/ic/ICollectCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0    # "callback":Lcom/aliyun/ams/ic/ICollectCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    return-void
.end method
