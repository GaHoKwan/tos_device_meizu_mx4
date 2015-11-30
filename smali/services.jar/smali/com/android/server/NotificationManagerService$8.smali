.class Lcom/android/server/NotificationManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


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
    .line 2809
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setNotiLightFlashing()V
    .locals 6

    .prologue
    .line 2841
    const-string v1, "ro.adapt.has_notification_light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2846
    .local v0, "hasNotificationLight":Z
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    const/16 v4, 0x1f4

    const/16 v5, 0x157c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 2848
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2813
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2814
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.server.notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2815
    const-string v1, "LedTest"

    const-string v2, "breath light broadcast received!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    .line 2824
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2825
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2827
    const-string v1, "LedTest"

    const-string v2, "mCpuWakeLock.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$8;->setNotiLightFlashing()V

    .line 2833
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2834
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2835
    const-string v1, "LedTest"

    const-string v2, "mCpuWakeLock.release()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_1
    return-void
.end method
