.class Lcom/android/server/StatusBarManagerService$8;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->mzTopAppWindowChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$meizuFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;I)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$8;->this$0:Lcom/android/server/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/StatusBarManagerService$8;->val$meizuFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$8;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$8;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget v1, p0, Lcom/android/server/StatusBarManagerService$8;->val$meizuFlags:I

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->mzTopAppWindowChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    goto :goto_0
.end method
