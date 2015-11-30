.class public Landroid/view/WindowManager$MoveWinClassListener;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/WindowManager$MoveWinListener;


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
    accessFlags = 0x9
    name = "MoveWinClassListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imeWillHide()V
    .locals 0

    .prologue
    .line 2420
    return-void
.end method

.method public imeWillShow(I)V
    .locals 0
    .param p1, "imeTop"    # I

    .prologue
    .line 2419
    return-void
.end method

.method public movedWinHasBeenReset()V
    .locals 0

    .prologue
    .line 2418
    return-void
.end method

.method public toResetMovedWin()V
    .locals 0

    .prologue
    .line 2417
    return-void
.end method
