.class Lcom/android/server/wifi/WifiService$wifiOnPermissionCheckCallback;
.super Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "wifiOnPermissionCheckCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 2196
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionCheckResult(Ljava/lang/String;II)V
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "result"    # I

    .prologue
    .line 2199
    if-nez p3, :cond_0

    .line 2200
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled(PermissionCheckCallback): , uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/4 v0, 0x1

    .line 2202
    .local v0, "enable":Z
    if-eqz p3, :cond_1

    .line 2228
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    return-void

    .line 2214
    .restart local v0    # "enable":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2216
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, v3, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 2221
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2225
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    const v5, 0x26008

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiIpoOff:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$1900(Lcom/android/server/wifi/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wifi/WifiController;->obtainMessage(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
