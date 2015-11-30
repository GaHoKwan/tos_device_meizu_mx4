.class public interface abstract Lcom/meizu/widget/ListDragShadowItem;
.super Ljava/lang/Object;
.source "ListDragShadowItem.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.ListDragShadowItem.Feature interface used by listview draging"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# virtual methods
.method public abstract getDragView()Landroid/view/View;
.end method

.method public abstract needBackground()Z
.end method
