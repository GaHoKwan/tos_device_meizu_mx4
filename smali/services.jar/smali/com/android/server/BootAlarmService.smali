.class public Lcom/android/server/BootAlarmService;
.super Ljava/lang/Object;
.source "BootAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BootAlarmService$ShutDownReceiver;
    }
.end annotation


# static fields
.field private static final MEIZU_DEBUG:Z = true


# instance fields
.field private mAlarmService:Lcom/android/server/AlarmManagerService;

.field private mContext:Landroid/content/Context;

.field private mDescriptor:I

.field private mNextBootTime:J

.field private mNextBootTimeSetResult:I

.field final mRtcBootWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mShutDownReceiver:Lcom/android/server/BootAlarmService$ShutDownReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AlarmManagerService;
    .param p3, "descriptor"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTimeSetResult:I

    .line 63
    iput-object p1, p0, Lcom/android/server/BootAlarmService;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/BootAlarmService;->mAlarmService:Lcom/android/server/AlarmManagerService;

    .line 65
    iput p3, p0, Lcom/android/server/BootAlarmService;->mDescriptor:I

    .line 67
    new-instance v0, Lcom/android/server/BootAlarmService$ShutDownReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/BootAlarmService$ShutDownReceiver;-><init>(Lcom/android/server/BootAlarmService;)V

    iput-object v0, p0, Lcom/android/server/BootAlarmService;->mShutDownReceiver:Lcom/android/server/BootAlarmService$ShutDownReceiver;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootAlarmService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BootAlarmService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/BootAlarmService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BootAlarmService;)Lcom/android/server/AlarmManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BootAlarmService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/BootAlarmService;->mAlarmService:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BootAlarmService;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BootAlarmService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/BootAlarmService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/BootAlarmService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BootAlarmService;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    return-wide v0
.end method

.method static synthetic access$400(J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/BootAlarmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootAlarmService;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/BootAlarmService;->dumpToFile()V

    return-void
.end method

.method private final dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fileAndPath"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const/4 v4, 0x0

    .line 225
    .local v4, "fw":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v4    # "fw":Ljava/io/FileReader;
    .local v5, "fw":Ljava/io/FileReader;
    const/16 v6, 0xc8

    :try_start_1
    new-array v0, v6, [C

    .line 227
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 228
    .local v1, "byteread":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 229
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 232
    .end local v0    # "buffer":[C
    .end local v1    # "byteread":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 233
    .end local v5    # "fw":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fw":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    if-eqz v4, :cond_0

    .line 237
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fw":Ljava/io/FileReader;
    :cond_0
    :goto_2
    return-void

    .line 220
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 231
    .restart local v0    # "buffer":[C
    .restart local v1    # "byteread":I
    .restart local v5    # "fw":Ljava/io/FileReader;
    :cond_2
    :try_start_4
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    if-eqz v5, :cond_4

    .line 237
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 241
    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2

    .line 238
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v5    # "fw":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 240
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v4, v5

    .line 241
    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2

    .line 238
    .end local v0    # "buffer":[C
    .end local v1    # "byteread":I
    :catch_2
    move-exception v2

    .line 240
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 235
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    .line 237
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 241
    :cond_3
    :goto_4
    throw v6

    .line 238
    :catch_3
    move-exception v2

    .line 240
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 235
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v5    # "fw":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_3

    .line 232
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "byteread":I
    .restart local v5    # "fw":Ljava/io/FileReader;
    :cond_4
    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private final dumpToFile()V
    .locals 7

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/alarm_shutdown_recoder.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 199
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 200
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 201
    .local v3, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/BootAlarmService;->mAlarmService:Lcom/android/server/AlarmManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/AlarmManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 203
    sget-object v4, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    const-string v4, "/sys/class/rtc/rtc0/bootalarm"

    invoke-direct {p0, v3, v4}, Lcom/android/server/BootAlarmService;->dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 208
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 209
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :cond_3
    :try_start_1
    sget-object v4, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    const-string v4, "/sys/class/rtc/rtc0/alarm_time"

    invoke-direct {p0, v3, v4}, Lcom/android/server/BootAlarmService;->dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static getRTCTimeString(J)Ljava/lang/String;
    .locals 2
    .param p0, "rtcMillis"    # J

    .prologue
    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final needPrintLog(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "com.android.alarmclock"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private setBootTimeLocked(J)Z
    .locals 10
    .param p1, "triggerTime"    # J

    .prologue
    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x3e8

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v0, v4, v8

    .line 98
    .local v0, "nowRTC":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 99
    const-wide/32 v2, 0x3c26700

    .line 100
    .local v2, "twoYears":J
    add-long p1, v0, v2

    .line 106
    .end local v2    # "twoYears":J
    :goto_0
    iput-wide p1, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    .line 107
    iget-object v4, p0, Lcom/android/server/BootAlarmService;->mAlarmService:Lcom/android/server/AlarmManagerService;

    iget v5, p0, Lcom/android/server/BootAlarmService;->mDescriptor:I

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->setRTCInternal(IJ)I

    move-result v4

    iput v4, p0, Lcom/android/server/BootAlarmService;->mNextBootTimeSetResult:I

    .line 110
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBootTimeLocked(), mNextBootTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nowRTC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-long v6, v0, v8

    invoke-static {v6, v7}, Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", triggerTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-long v6, p1, v8

    invoke-static {v6, v7}, Lcom/android/server/BootAlarmService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNextBootTimeSetResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/BootAlarmService;->mNextBootTimeSetResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v4, 0x1

    return v4

    .line 101
    :cond_0
    sub-long v4, p1, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 102
    add-long p1, v0, v6

    goto :goto_0

    .line 104
    :cond_1
    sub-long/2addr p1, v6

    goto :goto_0
.end method


# virtual methods
.method addBootAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 4
    .param p1, "newAlarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 80
    const/4 v0, -0x1

    .line 81
    .local v0, "index":I
    iget-boolean v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 83
    if-gez v0, :cond_0

    .line 84
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBootAlarmLocked, index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", alarm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;JJ)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v0, "BOOT wakeup (now="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    const-string v2, "  "

    move-object v0, p1

    move-wide v3, p5

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    .line 180
    :cond_0
    const-string v0, "NextBoot = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    iget-wide v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    iget-wide v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 183
    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    const-string v0, " setResult = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTimeSetResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final initBootAlarmsLocked()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-wide v0, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0, v2, v3}, Lcom/android/server/BootAlarmService;->setBootTimeLocked(J)Z

    .line 76
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method rescheduleBootAlarmsLocked(Z)Z
    .locals 13
    .param p1, "shutDown"    # Z

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x3e8

    .line 122
    invoke-virtual {p0}, Lcom/android/server/BootAlarmService;->initBootAlarmsLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v10

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 126
    .local v2, "nowTime":J
    iget-object v4, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez p1, :cond_4

    .line 128
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 130
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 132
    iput-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    goto :goto_1

    .line 134
    :cond_2
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long/2addr v4, v8

    invoke-direct {p0, v4, v5}, Lcom/android/server/BootAlarmService;->setBootTimeLocked(J)Z

    .line 138
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    iget-object v4, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 139
    invoke-direct {p0, v11, v12}, Lcom/android/server/BootAlarmService;->setBootTimeLocked(J)Z

    goto :goto_0

    .line 142
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 144
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_5

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 146
    iput-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    goto :goto_2

    .line 147
    :cond_5
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/32 v6, 0x1d4c0

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_7

    .line 149
    div-long v4, v2, v8

    const-wide/16 v6, 0x3c

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    .line 150
    iget-object v4, p0, Lcom/android/server/BootAlarmService;->mAlarmService:Lcom/android/server/AlarmManagerService;

    iget v5, p0, Lcom/android/server/BootAlarmService;->mDescriptor:I

    iget-wide v6, p0, Lcom/android/server/BootAlarmService;->mNextBootTime:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->setRTCInternal(IJ)I

    move-result v4

    iput v4, p0, Lcom/android/server/BootAlarmService;->mNextBootTimeSetResult:I

    .line 157
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/server/BootAlarmService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-direct {p0, v11, v12}, Lcom/android/server/BootAlarmService;->setBootTimeLocked(J)Z

    goto/16 :goto_0

    .line 153
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long/2addr v4, v8

    invoke-direct {p0, v4, v5}, Lcom/android/server/BootAlarmService;->setBootTimeLocked(J)Z

    goto :goto_3
.end method
