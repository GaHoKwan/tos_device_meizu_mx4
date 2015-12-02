.class Lcom/aliyun/ams/ic/InfoCollectService$3$1;
.super Ljava/lang/Object;
.source "InfoCollectService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/ams/ic/InfoCollectService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aliyun/ams/ic/InfoCollectService$3;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/ic/InfoCollectService$3;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService$3$1;->this$1:Lcom/aliyun/ams/ic/InfoCollectService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 207
    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->DEBUG:Z
    invoke-static {}, Lcom/aliyun/ams/ic/InfoCollectService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "IC"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/aliyun/ams/ic/InfoCollectService$3$1;->this$1:Lcom/aliyun/ams/ic/InfoCollectService$3;

    iget-object v0, v0, Lcom/aliyun/ams/ic/InfoCollectService$3;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # setter for: Lcom/aliyun/ams/ic/InfoCollectService;->mBinder:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/aliyun/ams/ic/InfoCollectService;->access$502(Lcom/aliyun/ams/ic/InfoCollectService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 210
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->DEBUG:Z
    invoke-static {}, Lcom/aliyun/ams/ic/InfoCollectService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "IC"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method
