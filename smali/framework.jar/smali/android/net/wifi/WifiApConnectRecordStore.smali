.class Landroid/net/wifi/WifiApConnectRecordStore;
.super Ljava/lang/Object;
.source "WifiApConnectRecordStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    }
.end annotation


# static fields
.field private static final CTIMES_KEY:Ljava/lang/String; = "connectTimes"

.field private static final DBG:Z = true

.field private static final DBG_WRITE_TEST_CONF:Z = false

.field private static final EOF_KEY:Ljava/lang/String; = "ENDOFFILE"

.field private static final EOL_KEY:Ljava/lang/String; = "ENDOFLINE"

.field private static final HighestScoreCount:I = 0x14

.field private static final KEYMGMT_KEY:Ljava/lang/String; = "keyMgmt"

.field private static final LASTCD_KEY:Ljava/lang/String; = "lastConnectDate"

.field private static final LASTUPDATEDATE_KEY:Ljava/lang/String; = "lastupdatedate"

.field private static final MaxSaveNode:I = 0x32

.field private static final MostConnectTimesCount:I = 0xf

.field private static final NewestLastConnectDateCount:I = 0xf

.field private static final SCORE_KEY:Ljava/lang/String; = "score"

.field private static final SSID_KEY:Ljava/lang/String; = "ssid"

.field private static final STARTDATE_KEY:Ljava/lang/String; = "startDate"

.field private static final TAG:Ljava/lang/String; = "WifiApConnectRecordStore"

.field public static TesterEnvUtils_loop_index:I

.field public static TesterEnvUtils_path:Ljava/lang/String;

.field private static final UNIT_TESTING:Z


# instance fields
.field private AP_CONN_RECORD_FILE:Ljava/lang/String;

.field private ConnectDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field

.field private ConnectTimesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field

.field private TEST_AP_CONN_RECORD_FILE:Ljava/lang/String;

.field private mLastUpdateDate:Ljava/util/Date;

.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field

.field private mStartRecordDate:Ljava/util/Date;

.field private sDateFormat:Ljava/text/SimpleDateFormat;

.field private scoreComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    sput v0, Landroid/net/wifi/WifiApConnectRecordStore;->TesterEnvUtils_loop_index:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 424
    new-instance v0, Landroid/net/wifi/WifiApConnectRecordStore$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConnectRecordStore$1;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->ConnectDateComparator:Ljava/util/Comparator;

    .line 434
    new-instance v0, Landroid/net/wifi/WifiApConnectRecordStore$2;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConnectRecordStore$2;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->ConnectTimesComparator:Ljava/util/Comparator;

    .line 440
    new-instance v0, Landroid/net/wifi/WifiApConnectRecordStore$3;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConnectRecordStore$3;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->scoreComparator:Ljava/util/Comparator;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ApConnectRecord.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Landroid/net/wifi/WifiApConnectRecordStore;->loadRecordFile()V

    .line 135
    return-void
.end method

.method public static TesterEnvUtils_copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "phase"    # Ljava/lang/String;

    .prologue
    .line 524
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 526
    .local v4, "input":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 529
    .local v3, "inBuff":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/net/wifi/WifiApConnectRecordStore;->TesterEnvUtils_path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/files.log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 530
    .local v8, "output":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 532
    .local v7, "outBuff":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v1, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 533
    .local v1, "dt":Ljava/util/Date;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n==============   loop_index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/net/wifi/WifiApConnectRecordStore;->TesterEnvUtils_loop_index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=========\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 536
    const/16 v9, 0x1400

    new-array v0, v9, [B

    .line 538
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 539
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 549
    .end local v0    # "b":[B
    .end local v1    # "dt":Ljava/util/Date;
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 556
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 542
    .restart local v0    # "b":[B
    .restart local v1    # "dt":Ljava/util/Date;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 545
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 546
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 547
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 548
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 552
    .end local v0    # "b":[B
    .end local v1    # "dt":Ljava/util/Date;
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 554
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiApConnectRecordStore;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApConnectRecordStore;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private adjustForNewSystemTime()V
    .locals 9

    .prologue
    .line 448
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 451
    .local v0, "dt":Ljava/util/Date;
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    :goto_0
    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    .line 456
    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    .line 459
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 460
    iget-object v4, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 461
    .local v3, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    iput-object v0, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    .end local v2    # "i":I
    .end local v3    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/text/ParseException;
    const-string v4, "WifiApConnectRecordStore"

    const-string/jumbo v5, "sDateFormat.parse(sDateFormat.format(dateTime) ) ParseException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    .line 464
    return-void
.end method

.method private createRecordFileIfNeccessary(Z)Z
    .locals 11
    .param p1, "forece_recreate"    # Z

    .prologue
    .line 384
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_3

    .line 386
    :cond_0
    const-string v6, "WifiApConnectRecordStore"

    const-string/jumbo v7, "no Exist Record file , create it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 391
    .local v0, "dt":Ljava/util/Date;
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 395
    :goto_0
    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    .line 396
    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    .line 397
    const/4 v3, 0x0

    .line 399
    .local v3, "out":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "sdate":Ljava/lang/String;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starttime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string/jumbo v6, "startDate"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v6, "lastupdatedate"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 407
    const-string v6, "ENDOFFILE"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    if-eqz v4, :cond_4

    .line 413
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    .line 419
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local v5    # "sdate":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 421
    .end local v0    # "dt":Ljava/util/Date;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :goto_2
    return v6

    .line 392
    .restart local v0    # "dt":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/text/ParseException;
    const-string v6, "WifiApConnectRecordStore"

    const-string/jumbo v7, "sDateFormat.parse(sDateFormat.format(dateTime) ) ParseException "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "sdate":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 416
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "sdate":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 409
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing apConnectRecord configuration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 411
    if-eqz v3, :cond_1

    .line 413
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 414
    :catch_3
    move-exception v1

    .line 415
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 411
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_2

    .line 413
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 416
    :cond_2
    :goto_5
    throw v6

    .line 414
    :catch_4
    move-exception v1

    .line 415
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error close configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 421
    .end local v0    # "dt":Ljava/util/Date;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 411
    .restart local v0    # "dt":Ljava/util/Date;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 408
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "sdate":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_1
.end method

.method private loadRecordFile()V
    .locals 10

    .prologue
    .line 318
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiApConnectRecordStore;->createRecordFileIfNeccessary(Z)Z

    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    move-object v5, v4

    .line 329
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .local v5, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v6, "startDate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :goto_1
    move-object v5, v4

    .line 361
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_0

    .line 333
    :cond_0
    const-string/jumbo v6, "lastupdatedate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 335
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_1
    const-string/jumbo v6, "ssid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 337
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_2
    const-string/jumbo v6, "keyMgmt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 338
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 339
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_3
    const-string/jumbo v6, "lastConnectDate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 340
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 341
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_4
    const-string v6, "connectTimes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 343
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_5
    const-string/jumbo v6, "score"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 344
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 345
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_6
    const-string v6, "ENDOFLINE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 346
    invoke-virtual {v5}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->isInitAllFiled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 347
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto/16 :goto_1

    .line 351
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_7
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "node.isInitAllFiled is failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto/16 :goto_1

    .line 353
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_8
    const-string v6, "ENDOFFILE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 354
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "config file end of file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    if-eqz v2, :cond_e

    .line 370
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 377
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :cond_9
    :goto_2
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    if-nez v6, :cond_b

    .line 378
    :cond_a
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "Record file abnomal"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiApConnectRecordStore;->createRecordFileIfNeccessary(Z)Z

    .line 381
    :cond_b
    return-void

    .line 357
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_c
    :try_start_4
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore unknown key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "while reading"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v5

    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto/16 :goto_1

    .line 359
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore invalid address while reading"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 363
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 364
    .end local v2    # "in":Ljava/io/DataInputStream;
    .local v0, "e":Ljava/text/ParseException;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :goto_3
    :try_start_6
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 368
    if-eqz v1, :cond_9

    .line 370
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 371
    :catch_2
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_3
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 373
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_4
    move-exception v0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 368
    if-eqz v1, :cond_9

    .line 370
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 371
    :catch_5
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v1, :cond_d

    .line 370
    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 373
    :cond_d
    :goto_6
    throw v6

    .line 371
    :catch_6
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error close configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_5

    .line 365
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_4

    .line 363
    :catch_8
    move-exception v0

    goto/16 :goto_3

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_e
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2
.end method

.method private saveRecordFile()V
    .locals 12

    .prologue
    .line 467
    const/4 v4, 0x0

    .line 468
    .local v4, "out":Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 470
    .local v7, "testOut":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "startDate":Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "lastUpdateDate":Ljava/lang/String;
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveRecordFile startDate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string/jumbo v8, "startDate"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 482
    const-string/jumbo v8, "lastupdatedate"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 486
    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 488
    .local v3, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    const-string/jumbo v8, "ssid"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v8, "keyMgmt"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v8, "lastConnectDate"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 491
    const-string v8, "connectTimes"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v8, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 492
    const-string/jumbo v8, "score"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v8, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 493
    const-string v8, "ENDOFLINE"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 494
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "save node "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v3    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_0
    const-string v8, "ENDOFFILE"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    if-eqz v5, :cond_3

    .line 504
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 511
    .end local v1    # "i":I
    .end local v2    # "lastUpdateDate":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .end local v6    # "startDate":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 506
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "i":I
    .restart local v2    # "lastUpdateDate":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "startDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error close "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 508
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .line 499
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v2    # "lastUpdateDate":Ljava/lang/String;
    .end local v6    # "startDate":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 500
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    if-eqz v4, :cond_1

    .line 504
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 506
    :catch_2
    move-exception v0

    .line 507
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error close "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_2

    .line 504
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 508
    :cond_2
    :goto_4
    throw v8

    .line 506
    :catch_3
    move-exception v0

    .line 507
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "WifiApConnectRecordStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error close "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 499
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_2

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "i":I
    .restart local v2    # "lastUpdateDate":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "startDate":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method addConnectRecordNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "keyMgmt"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v2, 0x0

    .line 256
    .local v2, "exit":Z
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addConnectRecordNode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    .local v0, "dt":Ljava/util/Date;
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    if-nez v6, :cond_0

    .line 266
    const-string v6, "WifiApConnectRecordStore"

    const-string/jumbo v7, "mStartRecordDate is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    invoke-virtual {v6, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " the Phone System time have been adjust, we need to re-config our configure file lastUpdate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Landroid/net/wifi/WifiApConnectRecordStore;->adjustForNewSystemTime()V

    .line 273
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    .line 275
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 276
    .local v4, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    iget-object v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v6, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-nez v6, :cond_3

    .line 278
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore same day in node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "dt":Ljava/util/Date;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :goto_1
    return-void

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/text/ParseException;
    const-string v6, "WifiApConnectRecordStore"

    const-string/jumbo v7, "sDateFormat.parse(sDateFormat.format(dateTime) ) ParseException "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 282
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v0    # "dt":Ljava/util/Date;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_3
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update node lastConnectDat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 285
    iput-object v0, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 286
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v6, v6

    const v7, 0x5265c00

    div-int v5, v6, v7

    .line 287
    .local v5, "score":I
    if-gez v5, :cond_4

    .line 288
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got score "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v5, 0x0

    .line 291
    :cond_4
    iget v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 292
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 296
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .end local v5    # "score":I
    :cond_5
    if-nez v2, :cond_7

    .line 297
    new-instance v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V

    .line 298
    .restart local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    iput-object p1, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    .line 299
    iput-object p2, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    .line 300
    iput-object v0, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 301
    const/4 v6, 0x1

    iput v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 302
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 303
    iget v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    if-gez v6, :cond_6

    .line 304
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got score "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v6, 0x0

    iput v6, v4, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 308
    :cond_6
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add new node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v4    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_7
    invoke-direct {p0}, Landroid/net/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    goto/16 :goto_1
.end method

.method getAndRemoveRedundantList()[I
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x0

    .line 205
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x32

    if-gt v6, v7, :cond_1

    .line 206
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectRecordList.size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v5, 0x0

    .line 250
    :cond_0
    return-object v5

    .line 210
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v4, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;>;"
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 214
    .local v3, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v3    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 219
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->ConnectDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->ConnectTimesComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 222
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->ConnectDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_4

    .line 228
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->scoreComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    const/4 v0, 0x0

    :goto_3
    const/16 v6, 0x14

    if-ge v0, v6, :cond_5

    .line 234
    iget-object v6, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 238
    :cond_5
    const-string v6, "WifiApConnectRecordStore"

    const-string/jumbo v7, "save un-redundant node"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Landroid/net/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    .line 242
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 243
    .local v5, "redundantList":[I
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 244
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 246
    .restart local v3    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove redundant node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    aput v6, v5, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method syncWithSupplicantConf(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "configuredNetworks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v12, 0x0

    .line 138
    const/4 v5, 0x0

    .line 140
    .local v5, "needSave":Z
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configuredNetworks.size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 142
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 147
    .local v4, "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 148
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 149
    .local v6, "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    const/4 v1, 0x0

    .line 152
    .local v1, "contain":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 153
    .restart local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    const/4 v1, 0x1

    .line 158
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-nez v1, :cond_1

    .line 159
    const/4 v5, 0x1

    .line 160
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "since wpa_supplicant.conf have remove the node, so remove ConnectRecode node too"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 166
    .end local v1    # "contain":Z
    .end local v6    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 167
    .restart local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 168
    const/4 v1, 0x0

    .line 170
    .restart local v1    # "contain":Z
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 171
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 172
    .restart local v6    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 173
    const/4 v1, 0x1

    .line 178
    .end local v6    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_7
    if-nez v1, :cond_5

    .line 179
    const/4 v5, 0x1

    .line 181
    new-instance v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Landroid/net/wifi/WifiApConnectRecordStore;)V

    .line 182
    .restart local v6    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v7, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    .line 183
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    .line 185
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Landroid/net/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iput v12, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 192
    iput v12, v6, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 193
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "since wpa_supplicant.conf include the node, so we add it to ApConnectRecord.conf "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v7, p0, Landroid/net/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 186
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_2

    .line 198
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "contain":Z
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v6    # "node":Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_8
    if-eqz v5, :cond_9

    .line 199
    invoke-direct {p0}, Landroid/net/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    .line 202
    :cond_9
    return-void
.end method
