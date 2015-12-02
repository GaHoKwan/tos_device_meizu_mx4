.class public abstract Lcom/aliyun/ams/ic/IInfoCollectManager;
.super Ljava/lang/Object;
.source "IInfoCollectManager.java"


# static fields
.field private static final INFO_CELLECTION_ALLOWED:I = 0x1

.field public static final INFO_CELLECTION_ENABLE:Ljava/lang/String; = "meizu_data_collection"

.field private static final INFO_CELLECTION_UNALLOWED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/aliyun/ams/ic/IInfoCollectManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/aliyun/ams/ic/InfoCollectManager;->getInstance(Landroid/content/Context;)Lcom/aliyun/ams/ic/InfoCollectManager;

    move-result-object v0

    return-object v0
.end method

.method public static isICOpenBySettings(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "isOpen":Z
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "meizu_data_collection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_0
.end method


# virtual methods
.method public abstract collectActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isICEnable()Z
.end method

.method public abstract registerCollectCallback(Lcom/aliyun/ams/ic/ICollectCallback;)I
.end method

.method public abstract sendICInfo(Landroid/content/Context;Lcom/aliyun/ams/ic/ICInfo;J)V
.end method
