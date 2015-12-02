.class public Lcom/aliyun/ams/ic/ICHelper;
.super Ljava/lang/Object;
.source "ICHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wDangerous(Landroid/content/Context;Lcom/aliyun/ams/ic/ICInfo;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/aliyun/ams/ic/ICInfo;
    .param p2, "flags"    # J

    .prologue
    .line 19
    invoke-static {p0}, Lcom/aliyun/ams/ic/IInfoCollectManager;->get(Landroid/content/Context;)Lcom/aliyun/ams/ic/IInfoCollectManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/aliyun/ams/ic/IInfoCollectManager;->sendICInfo(Landroid/content/Context;Lcom/aliyun/ams/ic/ICInfo;J)V

    .line 20
    return-void
.end method
