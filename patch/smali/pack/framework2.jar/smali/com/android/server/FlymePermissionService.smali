.class public Lcom/android/server/FlymePermissionService;
.super Landroid/content/IFlymePermissionService$Stub;
.source "FlymePermissionService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionControl"


# instance fields
.field appOpsHandle:Lcom/android/server/AppOpsHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/IFlymePermissionService$Stub;-><init>()V

    .line 21
    const-string v0, "PermissionControl"

    const-string v1, "PermissionControlService construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/android/server/AppOpsHandle;

    invoke-direct {v0, p1}, Lcom/android/server/AppOpsHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/FlymePermissionService;->appOpsHandle:Lcom/android/server/AppOpsHandle;

    .line 24
    return-void
.end method


# virtual methods
.method checkComponentPermission(Ljava/lang/String;)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 54
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 56
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 57
    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    goto :goto_0
.end method

.method public forceKillProcess(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 36
    const-string v1, "android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {p0, v1}, Lcom/android/server/FlymePermissionService;->checkComponentPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: forceStopPackage() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "PermissionControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v1, "PermissionControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force kill process pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by AMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 47
    return-void
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "PermissionControl"

    const-string v1, "noteOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/server/FlymePermissionService;->appOpsHandle:Lcom/android/server/AppOpsHandle;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/AppOpsHandle;->handleOperationCTA(IILjava/lang/String;Lcom/android/server/FlymePermissionService;)I

    move-result v0

    return v0
.end method
