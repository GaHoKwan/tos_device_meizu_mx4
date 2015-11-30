.class public abstract Lcom/aliyun/ams/ic/IInfoCollectManager;
.super Ljava/lang/Object;
.source "IInfoCollectManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/aliyun/ams/ic/IInfoCollectManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/aliyun/ams/ic/InfoCollectManager;->getInstance(Landroid/content/Context;)Lcom/aliyun/ams/ic/InfoCollectManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract collectActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
