.class public interface abstract Landroid/content/IFlymePermissionService;
.super Ljava/lang/Object;
.source "IFlymePermissionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IFlymePermissionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract forceKillProcess(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteOperation(IILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
