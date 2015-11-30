.class public Landroid/os/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "dzh@SHELL.FindPhone.Feature add interfaces for remote find-phone"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DeviceStateManager$RemoteHandle;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mService:Landroid/os/IDeviceStateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceStateService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IDeviceStateService;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/os/DeviceStateManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    .line 28
    return-void
.end method


# virtual methods
.method public doCheckState(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    invoke-interface {v1, p1}, Landroid/os/IDeviceStateService;->doCheckState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public doCommand(I[B)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "rsaData"    # [B

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceStateService;->doCommand(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public doGetInitNo(I[B)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "inData"    # [B

    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceStateService;->doGetInitNo(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    :goto_0
    return v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public getActivateStats()I
    .locals 2

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    invoke-interface {v1}, Landroid/os/IDeviceStateService;->getActivateStats()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockRecoveryUnchecked()I
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    invoke-interface {v1}, Landroid/os/IDeviceStateService;->lockRecoveryUnchecked()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public setActivateStats(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/os/DeviceStateManager;->mService:Landroid/os/IDeviceStateService;

    invoke-interface {v1, p1}, Landroid/os/IDeviceStateService;->setActivateStats(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method
