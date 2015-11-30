.class Lcom/android/server/BatteryService$Injector;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onBatteryLow(IZ)V
    .locals 9
    .param p1, "levelCritical"    # I
    .param p2, "plugged"    # Z

    .prologue
    const/16 v8, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 965
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v6, v8, :cond_2

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSystemReady:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 970
    .local v2, "sendBatteryLowWarningDialog":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 971
    const/16 v3, 0x14

    .line 972
    .local v3, "warningLevel":I
    const/4 v0, 0x1

    .line 973
    .local v0, "isBatteryLow":Z
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v6, p1, :cond_3

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLow5:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 974
    move v3, p1

    .line 977
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow5:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 978
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1602(Lcom/android/server/BatteryService;Z)Z

    .line 979
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 991
    :goto_1
    if-eqz v0, :cond_0

    .line 992
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    .line 993
    move v1, v3

    .line 994
    .local v1, "runlevel":I
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/server/BatteryService$Injector$1;

    invoke-direct {v6, p0, v1}, Lcom/android/server/BatteryService$Injector$1;-><init>(Lcom/android/server/BatteryService$Injector;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    .end local v0    # "isBatteryLow":Z
    .end local v1    # "runlevel":I
    .end local v3    # "warningLevel":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 1008
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    .line 1009
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/server/BatteryService$Injector$2;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$Injector$2;-><init>(Lcom/android/server/BatteryService$Injector;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 1019
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1602(Lcom/android/server/BatteryService;Z)Z

    .line 1020
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow5:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 1022
    :cond_1
    return-void

    .end local v2    # "sendBatteryLowWarningDialog":Z
    :cond_2
    move v2, v5

    .line 965
    goto :goto_0

    .line 980
    .restart local v0    # "isBatteryLow":Z
    .restart local v2    # "sendBatteryLowWarningDialog":Z
    .restart local v3    # "warningLevel":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 981
    const/16 v3, 0xa

    .line 982
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1602(Lcom/android/server/BatteryService;Z)Z

    .line 983
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 984
    :cond_4
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-ge v6, v8, :cond_5

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 985
    const/16 v3, 0x14

    .line 986
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 988
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method writeMessageToFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1026
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v5, "root":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "close_message.txt"

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1028
    .local v4, "mFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_0

    .line 1030
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1031
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file created"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1038
    :cond_0
    :goto_0
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1039
    .local v7, "stream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss     "

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1042
    .local v1, "curDate":Ljava/util/Date;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1043
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1044
    .local v0, "buf":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1045
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1050
    .end local v0    # "buf":[B
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "mFile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1032
    .restart local v4    # "mFile":Ljava/io/File;
    .restart local v5    # "root":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1033
    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Could not create close_reboot_time.txt"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1046
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mFile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 1047
    .local v2, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error on writeFilToSD."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
