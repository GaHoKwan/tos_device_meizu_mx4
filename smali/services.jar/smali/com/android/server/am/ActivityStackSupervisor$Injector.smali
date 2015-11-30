.class Lcom/android/server/am/ActivityStackSupervisor$Injector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static interceptForAccessControl(Landroid/content/AccessControlManager;Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Landroid/content/Context;Landroid/content/pm/ActivityInfo;II)Landroid/content/pm/ActivityInfo;
    .locals 14
    .param p0, "acm"    # Landroid/content/AccessControlManager;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I

    .prologue
    .line 3135
    :try_start_0
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v11}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v3

    .line 3136
    .local v3, "flag":I
    and-int/lit8 v11, v3, 0x10

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    .line 3137
    .local v6, "isLockView":Z
    :goto_0
    and-int/lit8 v11, v3, 0x20

    if-eqz v11, :cond_3

    const/4 v5, 0x1

    .line 3138
    .local v5, "isFastStarting":Z
    :goto_1
    if-eqz p4, :cond_9

    if-eqz v6, :cond_0

    if-nez v5, :cond_9

    .line 3139
    :cond_0
    if-nez p0, :cond_1

    .line 3140
    const-string v11, "access_control"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/AccessControlManager;

    move-object p0, v0

    .line 3142
    :cond_1
    if-nez p1, :cond_4

    .line 3143
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "PackManager is null."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3144
    const/4 v11, 0x0

    .line 3174
    .end local v3    # "flag":I
    .end local v5    # "isFastStarting":Z
    .end local v6    # "isLockView":Z
    :goto_2
    return-object v11

    .line 3136
    .restart local v3    # "flag":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 3137
    .restart local v6    # "isLockView":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3146
    .restart local v5    # "isFastStarting":Z
    :cond_4
    const/4 v4, 0x0

    .line 3147
    .local v4, "hide":Z
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v8, v11, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 3148
    .local v8, "needAccessControl":Z
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v9, v11, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 3149
    .local v9, "needGuestControl":Z
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isGuestMode()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3150
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {p1, v11, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageGuestSetting(Ljava/lang/String;I)Z

    move-result v4

    .line 3152
    :cond_5
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroid/content/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v8, :cond_7

    :cond_6
    if-eqz v4, :cond_9

    if-nez v9, :cond_9

    .line 3153
    :cond_7
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->getAccessInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 3154
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3155
    .local v1, "activityLabel":Ljava/lang/CharSequence;
    if-nez v1, :cond_8

    .line 3156
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_a

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3160
    :cond_8
    :goto_3
    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3161
    .local v7, "mAccessPkg":Ljava/lang/String;
    if-eqz v10, :cond_b

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p4, v0

    .line 3162
    :goto_4
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-object v1, v11, Landroid/content/ActivityInfoExt;->mDisplaytitleString:Ljava/lang/CharSequence;

    .line 3163
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-object v7, v11, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    .line 3164
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iput-object v12, v11, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    .line 3165
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3167
    const-string v11, "AccessControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mAccessPkg :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   pak  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v13, v13, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "activityLabel":Ljava/lang/CharSequence;
    .end local v3    # "flag":I
    .end local v4    # "hide":Z
    .end local v5    # "isFastStarting":Z
    .end local v6    # "isLockView":Z
    .end local v7    # "mAccessPkg":Ljava/lang/String;
    .end local v8    # "needAccessControl":Z
    .end local v9    # "needGuestControl":Z
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    :goto_5
    move-object/from16 v11, p4

    .line 3174
    goto/16 :goto_2

    .line 3156
    .restart local v1    # "activityLabel":Ljava/lang/CharSequence;
    .restart local v3    # "flag":I
    .restart local v4    # "hide":Z
    .restart local v5    # "isFastStarting":Z
    .restart local v6    # "isLockView":Z
    .restart local v8    # "needAccessControl":Z
    .restart local v9    # "needGuestControl":Z
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 3161
    .restart local v7    # "mAccessPkg":Ljava/lang/String;
    :cond_b
    const/16 p4, 0x0

    goto :goto_4

    .line 3170
    .end local v1    # "activityLabel":Ljava/lang/CharSequence;
    .end local v3    # "flag":I
    .end local v4    # "hide":Z
    .end local v5    # "isFastStarting":Z
    .end local v6    # "isLockView":Z
    .end local v7    # "mAccessPkg":Ljava/lang/String;
    .end local v8    # "needAccessControl":Z
    .end local v9    # "needGuestControl":Z
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    .line 3171
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "AccessControl"

    const-string v12, "error"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method static isFlymePermissionGrantedFromPkg(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3182
    const/16 v0, 0x4c

    invoke-static {v0, p1, p0}, Landroid/app/FlymePermissionManager;->isFlymePermissionGrantedFromPkg(ILjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3183
    const/4 v0, 0x0

    .line 3186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
