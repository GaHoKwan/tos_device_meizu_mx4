.class public interface abstract Landroid/view/WindowManager$MoveWinListener;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "liuyongjie@Shell.Move Window.Feature add move window api"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MoveWinListener"
.end annotation


# virtual methods
.method public abstract movedWinHasBeenReset()V
.end method

.method public abstract toResetMovedWin()V
.end method
