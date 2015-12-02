.class public interface abstract Lcom/aliyun/ams/ic/IInfoCollect;
.super Ljava/lang/Object;
.source "IInfoCollect.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ams/ic/IInfoCollect$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCollectCallback(Lcom/aliyun/ams/ic/ICollectCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEnableStateCallback(Lcom/aliyun/ams/ic/ICollectEnableCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendInfo(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
