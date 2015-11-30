.class Lcom/android/server/LockSettingsService$MzFlymeInjector$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService$MzFlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$MzFlymeInjector;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$MzFlymeInjector;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector$1;->this$1:Lcom/android/server/LockSettingsService$MzFlymeInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector$1;->this$1:Lcom/android/server/LockSettingsService$MzFlymeInjector;

    iget-object v3, v2, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 712
    :try_start_0
    const-string v2, "LockSettingsService"

    const-string v4, "onServiceConnected-------------"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {p2}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 715
    .local v1, "findPhoneService":Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_start_1
    const-string v2, "LockSettingsService"

    const-string v4, "try findPhoneService.lockPhone();"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-interface {v1}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->lockPhone()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector$1;->this$1:Lcom/android/server/LockSettingsService$MzFlymeInjector;

    iget-object v2, v2, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector$1;->this$1:Lcom/android/server/LockSettingsService$MzFlymeInjector;

    iget-object v4, v4, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 721
    monitor-exit v3

    .line 723
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 721
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "findPhoneService":Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 727
    const-string v0, "LockSettingsService"

    const-string v1, "onServiceDisconnected-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method
