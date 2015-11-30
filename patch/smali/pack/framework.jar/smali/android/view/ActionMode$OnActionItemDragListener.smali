.class public interface abstract Landroid/view/ActionMode$OnActionItemDragListener;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "cjy@SDK.Feature.add to listen drag event"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionItemDragListener"
.end annotation


# virtual methods
.method public abstract onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
.end method
