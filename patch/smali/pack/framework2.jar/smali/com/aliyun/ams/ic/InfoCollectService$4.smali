.class Lcom/aliyun/ams/ic/InfoCollectService$4;
.super Ljava/lang/Object;
.source "InfoCollectService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/ams/ic/InfoCollectService;->registerEnableStateCallback(Lcom/aliyun/ams/ic/ICollectEnableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/ic/InfoCollectService;

.field final synthetic val$callback:Lcom/aliyun/ams/ic/ICollectEnableCallback;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/ic/InfoCollectService;Lcom/aliyun/ams/ic/ICollectEnableCallback;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService$4;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iput-object p2, p0, Lcom/aliyun/ams/ic/InfoCollectService$4;->val$callback:Lcom/aliyun/ams/ic/ICollectEnableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService$4;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iget-object v1, v0, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService$4;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    iget-object v0, v0, Lcom/aliyun/ams/ic/InfoCollectService;->enableChangedCallbacks:Ljava/util/List;

    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService$4;->val$callback:Lcom/aliyun/ams/ic/ICollectEnableCallback;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
