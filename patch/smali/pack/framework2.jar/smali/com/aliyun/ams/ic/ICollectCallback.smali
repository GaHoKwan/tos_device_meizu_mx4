.class public interface abstract Lcom/aliyun/ams/ic/ICollectCallback;
.super Ljava/lang/Object;
.source "ICollectCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ams/ic/ICollectCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract dump()V
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
