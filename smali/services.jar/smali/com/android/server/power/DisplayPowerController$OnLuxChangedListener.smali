.class public interface abstract Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLuxChangedListener"
.end annotation


# virtual methods
.method public abstract onAnimationChanged(I)V
.end method

.method public abstract onBrightnessChanged(I)V
.end method

.method public abstract onLuxChanged()V
.end method

.method public abstract onScreenBrighten(I)V
.end method

.method public abstract onScreenDimEnd(I)V
.end method

.method public abstract onScreenDimStart(I)V
.end method
