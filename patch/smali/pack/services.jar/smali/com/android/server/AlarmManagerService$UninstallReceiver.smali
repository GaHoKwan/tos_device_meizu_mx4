.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2133
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2134
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2135
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2136
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2137
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2140
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2141
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2142
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2143
    return-void
.end method


# virtual methods
.method public tos_org_onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2148
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2149
    .local v3, "action":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2150
    .local v16, "pkgList":[Ljava/lang/String;
    const-string v18, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2151
    const-string v18, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2152
    move-object/from16 v6, v16

    .local v6, "arr$":[Ljava/lang/String;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v14, v6, v11

    .line 2153
    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2155
    const-string v18, "android"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 2157
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2158
    monitor-exit v19

    .line 2251
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2152
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2164
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v19

    goto :goto_1

    .line 2250
    .end local v3    # "action":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v16    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 2165
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v16    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2166
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2239
    :cond_3
    :goto_2
    if-eqz v16, :cond_f

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_f

    .line 2240
    move-object/from16 v6, v16

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_3
    if-ge v11, v12, :cond_f

    aget-object v15, v6, v11

    .line 2242
    .local v15, "pkg":Ljava/lang/String;
    const-string v18, "android"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2240
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2167
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_4
    const-string v18, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2168
    const-string v18, "android.intent.extra.user_handle"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2169
    .local v17, "userHandle":I
    if-ltz v17, :cond_3

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 2176
    .end local v17    # "userHandle":I
    :cond_5
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2178
    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2179
    monitor-exit v19

    goto :goto_1

    .line 2181
    :cond_6
    const-string v18, "ACTION_PACKAGE_ADDED && !EXTRA_REPLACING"

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 2183
    .local v8, "data":Landroid/net/Uri;
    if-eqz v8, :cond_3

    .line 2184
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_PACKAGE_ADDED, uri data="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 2186
    .restart local v15    # "pkg":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v15, v4, v18

    .line 2187
    .local v4, "addPkgs":[Ljava/lang/String;
    move-object v6, v4

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_5
    if-ge v11, v12, :cond_3

    aget-object v13, v6, v11

    .line 2188
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/AlarmManagerService;->requestInternetPerm(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/AlarmManagerService;->isInBlackList(Ljava/lang/String;)I
    invoke-static {v0, v13}, Lcom/android/server/AlarmManagerService;->access$2800(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_9

    .line 2190
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_PACKAGE_ADDED, "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " isInBlackList true"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 2218
    :cond_7
    :goto_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_PACKAGE_ADDED: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 2187
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2191
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/AlarmManagerService;->isInBlackListDb(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2193
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_PACKAGE_ADDED, "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " isInBlackListDb true"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 2195
    const/4 v7, 0x0

    .line 2196
    .local v7, "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAllDbConfigs:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    check-cast v7, Lcom/android/server/AlarmManagerService$PowerSavingConfig;

    .line 2198
    .restart local v7    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    iget-object v0, v7, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2205
    .end local v7    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    .end local v10    # "i":I
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_PACKAGE_ADDED, "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " wanghao other false"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2207
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mPkgManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2208
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_7

    .line 2210
    new-instance v7, Lcom/android/server/AlarmManagerService$PowerSavingConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0, v13}, Lcom/android/server/AlarmManagerService$PowerSavingConfig;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)V

    .line 2211
    .restart local v7    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mPwSavAppsMap:Ljava/util/Map;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mInstalledConfigs:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 2214
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "config":Lcom/android/server/AlarmManagerService$PowerSavingConfig;
    :catch_0
    move-exception v9

    .line 2215
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 2226
    .end local v4    # "addPkgs":[Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_c
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2229
    monitor-exit v19

    goto/16 :goto_1

    .line 2231
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 2232
    .restart local v8    # "data":Landroid/net/Uri;
    if-eqz v8, :cond_3

    .line 2233
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 2234
    .restart local v15    # "pkg":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 2235
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "pkgList":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v15, v16, v18

    .restart local v16    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 2246
    .end local v8    # "data":Landroid/net/Uri;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 2250
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_f
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: powersave part::parkerxu::2015-09-15"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1470
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1471
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1472
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1473
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1474
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 1475
    const-string v1, "com.android.server.AlarmManagerService$UninstallReceiver#onReceive"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1476
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1481
    :goto_0
    return-void

    .line 1480
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->tos_org_onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
