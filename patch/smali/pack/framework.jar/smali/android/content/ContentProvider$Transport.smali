.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field mModifyPermission:Ljava/lang/String;

.field mQueryPermission:Ljava/lang/String;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 208
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 210
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 211
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mQueryPermission:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mModifyPermission:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 214
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 215
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private checkMoMSPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v3, :cond_0

    .line 646
    const-string/jumbo v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v3

    iput-object v3, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 649
    :cond_0
    if-eqz p1, :cond_1

    .line 651
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 652
    .local v2, "uid":I
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v3, p1, v2}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v1

    .line 653
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 654
    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoMS Denied "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    const/4 v3, 0x0

    .line 664
    .end local v1    # "result":I
    .end local v2    # "uid":I
    :goto_0
    return v3

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ContentProvider"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 607
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 608
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;)V

    .line 621
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getQueryPermission()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContentProvider$Transport;->checkMoMSPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 627
    :goto_0
    return v0

    .line 624
    :cond_0
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 625
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 627
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;)V

    .line 633
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getModifyPermission()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContentProvider$Transport;->checkMoMSPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    .line 636
    :cond_0
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 637
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 360
    const/4 v3, 0x0

    .line 362
    .local v3, "withOutInternal":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 363
    .local v1, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    new-instance v4, Landroid/content/OperationApplicationException;

    const-string v5, "App op not allowed"

    invoke-direct {v4, v5, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 370
    :cond_1
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v4, v5, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    const/4 v3, 0x1

    .line 379
    :cond_2
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v4, v5, v6}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    new-array v4, v7, [Landroid/content/ContentProviderResult;

    .line 425
    .end local v1    # "operation":Landroid/content/ContentProviderOperation;
    :goto_0
    return-object v4

    .line 386
    .restart local v1    # "operation":Landroid/content/ContentProviderOperation;
    :cond_3
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v4, v7}, Landroid/app/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 390
    new-instance v4, Landroid/content/OperationApplicationException;

    const-string v5, "App op not allowed"

    invoke-direct {v4, v5, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 394
    :cond_4
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 396
    new-instance v4, Landroid/content/OperationApplicationException;

    const-string v5, "App op not allowed"

    invoke-direct {v4, v5, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 400
    :cond_5
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v4, v5, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 401
    const/4 v3, 0x1

    .line 409
    :cond_6
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v4, v5, v7}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    new-array v4, v7, [Landroid/content/ContentProviderResult;

    goto :goto_0

    .line 417
    .end local v1    # "operation":Landroid/content/ContentProviderOperation;
    :cond_7
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "original":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 420
    :try_start_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p2}, Landroid/content/ContentProvider;->applyBatchWithoutInternalPerm(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 425
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_8
    :try_start_1
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 425
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v4
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-static {p1, p2, v1}, Landroid/app/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v2, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v2, p2, v1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 350
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 542
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 546
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 581
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 588
    :goto_0
    return-object v1

    .line 584
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 588
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 433
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Landroid/app/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v2, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v2, p2, v1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 459
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 281
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {p1, p2, v2}, Landroid/app/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 297
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v1, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v1, p2, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 311
    :cond_3
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 315
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v1, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->openAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 536
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object v1

    .line 533
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 536
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v1, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->openFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 516
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object v1

    .line 513
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 516
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 558
    const-string/jumbo v1, "r"

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v1, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 570
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object v1

    .line 567
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 570
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 10
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/app/FlymePermissionManager;->checkReadPrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 275
    :cond_0
    :goto_0
    return-object v9

    .line 241
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v0, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const/4 v1, 0x1

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v0, p2, v1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    :cond_4
    const-string p4, "\'A\' = \'B\'"

    .line 256
    :goto_1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 257
    .local v9, "ret":Landroid/database/Cursor;
    if-nez v9, :cond_6

    .line 258
    new-instance v9, Landroid/database/MatrixCursor;

    .end local v9    # "ret":Landroid/database/Cursor;
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v9    # "ret":Landroid/database/Cursor;
    goto :goto_0

    .line 254
    .end local v9    # "ret":Landroid/database/Cursor;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'A\' = \'B\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 259
    .restart local v9    # "ret":Landroid/database/Cursor;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "columnNames":[Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 262
    new-instance v9, Landroid/database/MatrixCursor;

    .end local v9    # "ret":Landroid/database/Cursor;
    invoke-direct {v9, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v9    # "ret":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 269
    .end local v7    # "columnNames":[Ljava/lang/String;
    .end local v9    # "ret":Landroid/database/Cursor;
    :cond_7
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 275
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v8}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 594
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x0

    .line 601
    :goto_0
    return-object v1

    .line 597
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 601
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-static {p1, p2, v1}, Landroid/app/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 477
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    invoke-static {v2, p2, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    invoke-static {v2, p2, v1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 495
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method
