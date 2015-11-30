.class public Lcom/aliyun/ams/secure/SecureManager;
.super Ljava/lang/Object;
.source "SecureManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/aliyun/ams/secure/SecureManager;
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aliyun/ams/secure/SecureManager;->get(Landroid/content/Context;)Lcom/aliyun/ams/secure/SecureManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/aliyun/ams/secure/SecureManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blockCall(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blockCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blockSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "simid"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "sender"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blockSms(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blockSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public filterSyncIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public filterSyncTask(ILandroid/content/Intent;)Z
    .locals 1
    .param p1, "task"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public scanApkFile(Ljava/lang/String;IZ)I
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "doCloudScan"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
