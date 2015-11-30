.class final Landroid/content/Context$1;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/net/Socket$INetworkCtrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmailDenied()Z
    .locals 2

    .prologue
    .line 3249
    const-string v0, "AliPermission"

    const-string v1, "Entering isEmailDenied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    # invokes: Landroid/content/Context;->isSendingEmailDenied()Z
    invoke-static {}, Landroid/content/Context;->access$300()Z

    move-result v0

    return v0
.end method

.method public isMMSDenied()Z
    .locals 2

    .prologue
    .line 3244
    const-string v0, "AliPermission"

    const-string v1, "Entering isMMSDenied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    # invokes: Landroid/content/Context;->isSendingMMSDenied()Z
    invoke-static {}, Landroid/content/Context;->access$200()Z

    move-result v0

    return v0
.end method

.method public isNetworkDenied()Z
    .locals 6

    .prologue
    .line 3232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3233
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3234
    .local v1, "key":Ljava/lang/String;
    # invokes: Landroid/content/Context;->getCache(Ljava/lang/String;)Landroid/content/Context$PermResult;
    invoke-static {v1}, Landroid/content/Context;->access$100(Ljava/lang/String;)Landroid/content/Context$PermResult;

    move-result-object v2

    .line 3235
    .local v2, "ret":Landroid/content/Context$PermResult;
    invoke-virtual {v2}, Landroid/content/Context$PermResult;->needUpdate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3236
    iget-boolean v0, v2, Landroid/content/Context$PermResult;->ret:Z

    .line 3240
    :goto_0
    return v0

    .line 3238
    :cond_0
    invoke-static {}, Landroid/content/Context;->isAskNetworkDenied()Z

    move-result v0

    .line 3239
    .local v0, "isDenied":Z
    iput-boolean v0, v2, Landroid/content/Context$PermResult;->ret:Z

    goto :goto_0
.end method
