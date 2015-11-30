.class public interface abstract Landroid/widget/AbsListView$OnItemDragListener;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.AbsListView.Feature the callback when drag view to the actionBar"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemDragListener"
.end annotation


# virtual methods
.method public abstract getActionItemType(Landroid/view/MenuItem;)I
.end method

.method public abstract onActionItemDragEnd(IJ)V
.end method

.method public abstract onActionItemDragStart(IJ)I
.end method

.method public abstract onActionItemDrop(Landroid/view/MenuItem;IJ)V
.end method
