.class public interface abstract Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAnimatorListener"
.end annotation


# virtual methods
.method public abstract onAnimationStart(II)V
.end method

.method public abstract onAnimatorBrightnessChanged(I)V
.end method

.method public abstract onAnimatorFinished(I)V
.end method

.method public abstract onAnimatorReachedThreshold(I)V
.end method

.method public abstract onAnimatorStopped(I)V
.end method
