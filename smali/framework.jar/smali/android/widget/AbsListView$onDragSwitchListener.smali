.class public interface abstract Landroid/widget/AbsListView$onDragSwitchListener;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.AbsListView.Feature for drag switch"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onDragSwitchListener"
.end annotation


# virtual methods
.method public abstract onDragSwitchEnd(IJ)V
.end method

.method public abstract onDragSwitchStart(IJ)V
.end method

.method public abstract swapElements(IIJJ)V
.end method
