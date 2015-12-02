.class Lcom/aliyun/ams/ic/InfoCollectService$1;
.super Ljava/lang/Object;
.source "InfoCollectService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/ams/ic/InfoCollectService;->registerCollectCallback(Lcom/aliyun/ams/ic/ICollectCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/ic/InfoCollectService;

.field final synthetic val$callback:Lcom/aliyun/ams/ic/ICollectCallback;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/ic/InfoCollectService;Lcom/aliyun/ams/ic/ICollectCallback;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService$1;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iput-object p2, p0, Lcom/aliyun/ams/ic/InfoCollectService$1;->val$callback:Lcom/aliyun/ams/ic/ICollectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService$1;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/aliyun/ams/ic/InfoCollectService;->access$300(Lcom/aliyun/ams/ic/InfoCollectService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService$1;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->mCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/aliyun/ams/ic/InfoCollectService;->access$300(Lcom/aliyun/ams/ic/InfoCollectService;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService$1;->val$callback:Lcom/aliyun/ams/ic/ICollectCallback;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
