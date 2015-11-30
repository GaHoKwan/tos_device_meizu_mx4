.class Lcom/android/server/BootAlarmService$ShutDownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutDownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootAlarmService;


# direct methods
.method public constructor <init>(Lcom/android/server/BootAlarmService;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    # getter for: Lcom/android/server/BootAlarmService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BootAlarmService;->access$000(Lcom/android/server/BootAlarmService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 46
    iget-object v1, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    # getter for: Lcom/android/server/BootAlarmService;->mAlarmService:Lcom/android/server/AlarmManagerService;
    invoke-static {v1}, Lcom/android/server/BootAlarmService;->access$100(Lcom/android/server/BootAlarmService;)Lcom/android/server/AlarmManagerService;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 47
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/BootAlarmService;->needPrintLog(Landroid/app/PendingIntent;)Z
    invoke-static {v1, v3}, Lcom/android/server/BootAlarmService;->access$200(Lcom/android/server/BootAlarmService;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLockedBootTime, before shutdown mNextBootTime is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    # getter for: Lcom/android/server/BootAlarmService;->mNextBootTime:J
    invoke-static {v4}, Lcom/android/server/BootAlarmService;->access$300(Lcom/android/server/BootAlarmService;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    # invokes: Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BootAlarmService;->access$400(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", now is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # invokes: Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BootAlarmService;->access$400(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/BootAlarmService;->rescheduleBootAlarmsLocked(Z)Z

    move-result v0

    .line 53
    .local v0, "reSetBootRtc":Z
    const-string v1, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLockedBootTime, after  shutdown mNextBootTime is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    # getter for: Lcom/android/server/BootAlarmService;->mNextBootTime:J
    invoke-static {v4}, Lcom/android/server/BootAlarmService;->access$300(Lcom/android/server/BootAlarmService;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    # invokes: Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BootAlarmService;->access$400(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reSetBootRtc is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/server/BootAlarmService$ShutDownReceiver;->this$0:Lcom/android/server/BootAlarmService;

    # invokes: Lcom/android/server/BootAlarmService;->dumpToFile()V
    invoke-static {v1}, Lcom/android/server/BootAlarmService;->access$500(Lcom/android/server/BootAlarmService;)V

    .line 58
    .end local v0    # "reSetBootRtc":Z
    :cond_1
    monitor-exit v2

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
