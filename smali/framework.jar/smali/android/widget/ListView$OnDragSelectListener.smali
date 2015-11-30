.class public interface abstract Landroid/widget/ListView$OnDragSelectListener;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "#zhangxin@SDK.ListView.Feature OnDragSelectListener"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDragSelectListener"
.end annotation


# virtual methods
.method public abstract onDragSelection(Landroid/view/View;IJ)Z
.end method
