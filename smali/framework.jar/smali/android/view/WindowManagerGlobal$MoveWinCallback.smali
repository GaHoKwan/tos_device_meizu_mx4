.class final Landroid/view/WindowManagerGlobal$MoveWinCallback;
.super Landroid/view/IMoveWinCallback$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "liuyongjie@Shell.Move Window.Feature add move window api"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoveWinCallback"
.end annotation


# instance fields
.field private l:Landroid/view/WindowManager$MoveWinListener;

.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Landroid/view/IMoveWinCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/WindowManagerGlobal;Landroid/view/WindowManagerGlobal$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/WindowManagerGlobal;
    .param p2, "x1"    # Landroid/view/WindowManagerGlobal$1;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Landroid/view/WindowManagerGlobal$MoveWinCallback;-><init>(Landroid/view/WindowManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public notifyClient(II)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "data"    # I

    .prologue
    .line 642
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    if-nez v1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 646
    :pswitch_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    invoke-interface {v1}, Landroid/view/WindowManager$MoveWinListener;->toResetMovedWin()V

    goto :goto_0

    .line 649
    :pswitch_1
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    invoke-interface {v1}, Landroid/view/WindowManager$MoveWinListener;->movedWinHasBeenReset()V

    goto :goto_0

    .line 652
    :pswitch_2
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    instance-of v1, v1, Landroid/view/WindowManager$MoveWinClassListener;

    if-eqz v1, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "lc":Landroid/view/WindowManager$MoveWinClassListener;
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    .end local v0    # "lc":Landroid/view/WindowManager$MoveWinClassListener;
    check-cast v0, Landroid/view/WindowManager$MoveWinClassListener;

    .line 655
    .restart local v0    # "lc":Landroid/view/WindowManager$MoveWinClassListener;
    invoke-virtual {v0, p2}, Landroid/view/WindowManager$MoveWinClassListener;->imeWillShow(I)V

    goto :goto_0

    .line 659
    .end local v0    # "lc":Landroid/view/WindowManager$MoveWinClassListener;
    :pswitch_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    instance-of v1, v1, Landroid/view/WindowManager$MoveWinClassListener;

    if-eqz v1, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 661
    .restart local v0    # "lc":Landroid/view/WindowManager$MoveWinClassListener;
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    .end local v0    # "lc":Landroid/view/WindowManager$MoveWinClassListener;
    check-cast v0, Landroid/view/WindowManager$MoveWinClassListener;

    .line 662
    .restart local v0    # "lc":Landroid/view/WindowManager$MoveWinClassListener;
    invoke-virtual {v0}, Landroid/view/WindowManager$MoveWinClassListener;->imeWillHide()V

    goto :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMoveWinListener(Landroid/view/WindowManager$MoveWinListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/WindowManager$MoveWinListener;

    .prologue
    .line 635
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$MoveWinCallback;->l:Landroid/view/WindowManager$MoveWinListener;

    .line 636
    return-void
.end method
