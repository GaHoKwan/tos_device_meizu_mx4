.class Lcom/android/server/MountService$5;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, "action":Ljava/lang/String;
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v19

    const-string v21, "power"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/MountService;->mPower:Landroid/os/PowerManager;

    .line 1033
    :try_start_0
    const-string v15, "externalvolumeremoved"

    .line 1034
    .local v15, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v19

    const-string v20, "externalvolume"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "listdisks"

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v19

    const/16 v20, 0x6e

    invoke-static/range {v19 .. v20}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v17

    .line 1038
    .local v17, "vols":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1039
    .local v8, "label":Ljava/lang/String;
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v9, :cond_6

    aget-object v18, v3, v5

    .line 1040
    .local v18, "volstr":Ljava/lang/String;
    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1042
    .local v16, "tok":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v8, v16, v19

    .line 1043
    const/16 v19, 0x2

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1044
    .local v14, "st":I
    if-nez v14, :cond_1

    .line 1045
    const-string v15, "externalvolumeremoved"

    .line 1039
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1046
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_2

    .line 1047
    const-string v15, "externalvolumeunmounted"

    goto :goto_1

    .line 1048
    :cond_2
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v14, v0, :cond_4

    .line 1049
    const-string v15, "externalvolumemounted"

    .line 1050
    const-string v19, "MountService"

    const-string v20, "Media already mounted on daemon connection"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-eqz v15, :cond_0

    if-eqz v8, :cond_0

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v6, v19, 0x1

    .line 1054
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v19

    const v20, 0x10406ab

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1058
    .local v11, "name":Ljava/lang/String;
    new-instance v7, Landroid/os/storage/DiskInfo;

    invoke-direct {v7, v11, v8}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .local v7, "info":Landroid/os/storage/DiskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v11, v15}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1088
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "index":I
    .end local v7    # "info":Landroid/os/storage/DiskInfo;
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "st":I
    .end local v15    # "state":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    .end local v17    # "vols":[Ljava/lang/String;
    .end local v18    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1089
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "e = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 1063
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v8    # "label":Ljava/lang/String;
    .restart local v9    # "len$":I
    .restart local v14    # "st":I
    .restart local v15    # "state":Ljava/lang/String;
    .restart local v16    # "tok":[Ljava/lang/String;
    .restart local v17    # "vols":[Ljava/lang/String;
    .restart local v18    # "volstr":Ljava/lang/String;
    :cond_4
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v14, v0, :cond_5

    .line 1064
    :try_start_1
    const-string v15, "externalvolumeunmounting"

    goto/16 :goto_1

    .line 1066
    :cond_5
    new-instance v19, Ljava/lang/Exception;

    const-string v20, "Unexpected state %d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1071
    .end local v14    # "st":I
    .end local v16    # "tok":[Ljava/lang/String;
    .end local v18    # "volstr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v19

    const-string v20, "externalvolume"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "listpartitions"

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v19

    const/16 v20, 0x6e

    invoke-static/range {v19 .. v20}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v12

    .line 1075
    .local v12, "parts":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1076
    .local v10, "mountPoint":Ljava/lang/String;
    move-object v3, v12

    array-length v9, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_3

    aget-object v13, v3, v5

    .line 1077
    .local v13, "partstr":Ljava/lang/String;
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1079
    .restart local v16    # "tok":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v8, v16, v19

    .line 1080
    const/16 v19, 0x1

    aget-object v10, v16, v19

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I
    invoke-static {v0, v8}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 1082
    .restart local v6    # "index":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_7

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/os/storage/DiskInfo;->findPartition(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_7

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
