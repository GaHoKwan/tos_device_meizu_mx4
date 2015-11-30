.class Lcom/android/server/NotificationManagerService$NMSInjector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NMSInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static NotiWakeupScreen(Lcom/android/server/NotificationManagerService$NotificationRecord;Landroid/content/Context;ZZLcom/android/server/NotificationManagerService;)V
    .locals 0
    .param p0, "r"    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isScreenOn"    # Z
    .param p3, "isInCall"    # Z
    .param p4, "nms"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 2917
    return-void
.end method

.method static shouldNotificationWakeupScreen(Lcom/android/server/NotificationManagerService$NotificationRecord;Landroid/content/Context;)Z
    .locals 4
    .param p0, "r"    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2921
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v3, v3, Landroid/app/NotificationExt;->internalApp:I

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 2925
    .local v0, "isInternalApp":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2934
    :goto_1
    return v1

    .end local v0    # "isInternalApp":Z
    :cond_0
    move v0, v1

    .line 2921
    goto :goto_0

    .restart local v0    # "isInternalApp":Z
    :cond_1
    move v1, v2

    .line 2934
    goto :goto_1
.end method
