.class Lcom/android/server/NotificationManagerService$12;
.super Landroid/hardware/input/ILidSwitchCallback$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->registerLidCallback()V
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
    .line 3099
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$12;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/hardware/input/ILidSwitchCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidSwitchChanged(Z)V
    .locals 3
    .param p1, "lidopen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3102
    const-string v0, "NotiWakeupScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLidSwitchChanged(), lidopen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$12;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mIsLidOpened:Z
    invoke-static {v0, p1}, Lcom/android/server/NotificationManagerService;->access$4302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3105
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$12;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    .line 3106
    return-void
.end method
