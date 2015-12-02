.class public interface abstract Lcom/aliyun/ams/ic/ICollectEnableCallback;
.super Ljava/lang/Object;
.source "ICollectEnableCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ams/ic/ICollectEnableCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEnableStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
