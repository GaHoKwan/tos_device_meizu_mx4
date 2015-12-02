.class Lcom/aliyun/ams/ic/InfoCollectManager$1;
.super Lcom/aliyun/ams/ic/ICollectEnableCallback$Stub;
.source "InfoCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/ams/ic/InfoCollectManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/ic/InfoCollectManager;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/ic/InfoCollectManager;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/aliyun/ams/ic/InfoCollectManager$1;->this$0:Lcom/aliyun/ams/ic/InfoCollectManager;

    invoke-direct {p0}, Lcom/aliyun/ams/ic/ICollectEnableCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableStateChanged(I)V
    .locals 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/aliyun/ams/ic/InfoCollectManager$1;->this$0:Lcom/aliyun/ams/ic/InfoCollectManager;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    # setter for: Lcom/aliyun/ams/ic/InfoCollectManager;->isICEnable:Z
    invoke-static {v1, v0}, Lcom/aliyun/ams/ic/InfoCollectManager;->access$002(Lcom/aliyun/ams/ic/InfoCollectManager;Z)Z

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
