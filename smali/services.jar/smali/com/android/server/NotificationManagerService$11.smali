.class Lcom/android/server/NotificationManagerService$11;
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
    .line 3059
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$11;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$11;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->wakeUpScreen()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;)V

    .line 3063
    const-string v0, "NotiWakeupScreen"

    const-string v1, "mWakeUpScreenRunnable called!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    return-void
.end method
