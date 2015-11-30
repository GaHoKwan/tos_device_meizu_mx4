.class public interface abstract Landroid/widget/Gallery$DragShadowItem;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.Gallery.Feature interface used for darg"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragShadowItem"
.end annotation


# virtual methods
.method public abstract getDragView()Landroid/view/View;
.end method

.method public abstract getDragViewShowPosition()Landroid/graphics/Point;
.end method

.method public abstract needBackground()Z
.end method
