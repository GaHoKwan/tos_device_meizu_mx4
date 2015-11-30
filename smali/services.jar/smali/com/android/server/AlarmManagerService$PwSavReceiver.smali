.class Lcom/android/server/AlarmManagerService$PwSavReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PwSavReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 3284
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3286
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3287
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3288
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3289
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3290
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3294
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3295
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3296
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3297
    const-string v1, "ACTION_BOOT_COMPLETED"

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 3298
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getPwsavEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3299
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getBlackListFromDb()Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3300
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->initBlackListConfig()Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Z

    .line 3314
    :cond_0
    :goto_0
    monitor-exit v2

    .line 3315
    return-void

    .line 3303
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SCREEN_ON, mPwsavEnable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mBlackListInited="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlackListInited:Z
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 3306
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$3302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3307
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->handleAlarmsDueToScreenOn()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)V

    goto :goto_0

    .line 3314
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3308
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SCREEN_OFF, mPwsavEnable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mBlackListInited="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlackListInited:Z
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 3311
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$3302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3312
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PwSavReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->handleAlarmsDueToScreenOff()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
