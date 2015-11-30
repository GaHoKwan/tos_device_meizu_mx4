.class Lcom/android/server/NotificationManagerService$10;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 3048
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    iget-boolean v0, v0, Lcom/android/server/NotificationManagerService;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 3052
    const-string v0, "NotiWakeupScreen"

    const-string v1, "mShowDisableProximityRunnable.run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->disableProximityLockLocked()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;)V

    .line 3056
    :cond_0
    return-void
.end method
