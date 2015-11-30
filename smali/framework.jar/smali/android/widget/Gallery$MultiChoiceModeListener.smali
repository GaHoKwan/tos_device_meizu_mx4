.class public interface abstract Landroid/widget/Gallery$MultiChoiceModeListener;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.Gallery.Feature "
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiChoiceModeListener"
.end annotation


# virtual methods
.method public abstract onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
.end method
