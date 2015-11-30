.class Lcom/android/server/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final MZ_DO_NOT_DISTURB_IS_WORKING_URI:Landroid/net/Uri;

.field private final MZ_DO_NOT_DISTURB_WAKEUP_BREATH_LIGHT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1325
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1310
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1313
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 1318
    const-string v0, "mz_do_not_disturb_is_working"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->MZ_DO_NOT_DISTURB_IS_WORKING_URI:Landroid/net/Uri;

    .line 1320
    const-string v0, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->MZ_DO_NOT_DISTURB_WAKEUP_BREATH_LIGHT_URI:Landroid/net/Uri;

    .line 1326
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1329
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1330
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1332
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1336
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->MZ_DO_NOT_DISTURB_IS_WORKING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1338
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->MZ_DO_NOT_DISTURB_WAKEUP_BREATH_LIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1341
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1342
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1345
    invoke-virtual {p0, p2}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1346
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1349
    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1350
    .local v4, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1351
    :cond_0
    const-string v7, "notification_light_pulse"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v3, v5

    .line 1353
    .local v3, "pulseEnabled":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v7}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)Z

    move-result v7

    if-eq v7, v3, :cond_1

    .line 1354
    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v7, v3}, Lcom/android/server/NotificationManagerService;->access$2202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1355
    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v7}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    .line 1358
    .end local v3    # "pulseEnabled":Z
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1359
    :cond_2
    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    .line 1364
    :cond_3
    if-eqz p1, :cond_4

    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->MZ_DO_NOT_DISTURB_IS_WORKING_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->MZ_DO_NOT_DISTURB_WAKEUP_BREATH_LIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1367
    :cond_4
    const-string v7, "mz_do_not_disturb_is_working"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_7

    move v2, v5

    .line 1369
    .local v2, "isDoNotDisturbWorking":Z
    :goto_1
    const-string v7, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_8

    move v1, v5

    .line 1372
    .local v1, "isDoNotDisturbWakeUpBreathLight":Z
    :goto_2
    if-eqz v2, :cond_9

    if-nez v1, :cond_9

    move v0, v5

    .line 1373
    .local v0, "disableBreathLightInDoNotDisturb":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisableBreathLightInDoNotDisturb:Z
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)Z

    move-result v5

    if-eq v5, v0, :cond_5

    .line 1374
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mDisableBreathLightInDoNotDisturb:Z
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1375
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    .line 1379
    .end local v0    # "disableBreathLightInDoNotDisturb":Z
    .end local v1    # "isDoNotDisturbWakeUpBreathLight":Z
    .end local v2    # "isDoNotDisturbWorking":Z
    :cond_5
    return-void

    :cond_6
    move v3, v6

    .line 1351
    goto :goto_0

    :cond_7
    move v2, v6

    .line 1367
    goto :goto_1

    .restart local v2    # "isDoNotDisturbWorking":Z
    :cond_8
    move v1, v6

    .line 1369
    goto :goto_2

    .restart local v1    # "isDoNotDisturbWakeUpBreathLight":Z
    :cond_9
    move v0, v6

    .line 1372
    goto :goto_3
.end method
