.class Landroid/view/ViewRootImpl$Injector;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "dzh@Shell.WindowManager.Feature #76059"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static SetZOrderOnTopWhenTouchDown(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/IWindowSession;Landroid/view/ViewRootImpl$W;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p0, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p1, "windowSession"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/ViewRootImpl$W;
    .param p3, "windowAttributes"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 8525
    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 8526
    iget-object v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    .line 8527
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p3, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v2, v2, Landroid/view/MeizuLayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_0

    .line 8530
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, p2, v2}, Landroid/view/IWindowSession;->setZOrderOnTop(Landroid/view/IWindow;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8536
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 8531
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    :catch_0
    move-exception v0

    .line 8532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static needRefreshWhenStopped(Landroid/view/ViewRootImpl;)Z
    .locals 2
    .param p0, "vr"    # Landroid/view/ViewRootImpl;

    .prologue
    const/4 v0, 0x0

    .line 8541
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mForceLayoutByOrientation:Z

    if-eqz v1, :cond_0

    .line 8542
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceLayoutByOrientation:Z

    .line 8543
    const/4 v0, 0x1

    .line 8545
    :cond_0
    return v0
.end method
