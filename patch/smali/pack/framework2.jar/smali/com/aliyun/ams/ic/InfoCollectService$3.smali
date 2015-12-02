.class Lcom/aliyun/ams/ic/InfoCollectService$3;
.super Ljava/lang/Object;
.source "InfoCollectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/ams/ic/InfoCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/ic/InfoCollectService;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/ic/InfoCollectService;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectService$3;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 197
    const-string v2, "com.aliyun.ic/com.aliyun.ic.WorkService"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 199
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    iget-object v2, p0, Lcom/aliyun/ams/ic/InfoCollectService$3;->this$0:Lcom/aliyun/ams/ic/InfoCollectService;

    # getter for: Lcom/aliyun/ams/ic/InfoCollectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/aliyun/ams/ic/InfoCollectService;->access$100(Lcom/aliyun/ams/ic/InfoCollectService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/aliyun/ams/ic/InfoCollectService$3$1;

    invoke-direct {v3, p0}, Lcom/aliyun/ams/ic/InfoCollectService$3$1;-><init>(Lcom/aliyun/ams/ic/InfoCollectService$3;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 212
    return-void
.end method
