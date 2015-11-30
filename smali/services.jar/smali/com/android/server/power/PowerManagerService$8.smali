.class Lcom/android/server/power/PowerManagerService$8;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->initProtectFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4181
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 4185
    const/4 v13, 0x1

    new-array v6, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "com.meizu.filemanager"

    aput-object v14, v6, v13

    .line 4199
    .local v6, "packagename":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4200
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 4245
    :cond_0
    :goto_0
    return-void

    .line 4202
    :cond_1
    const/4 v11, -0x1

    .line 4203
    .local v11, "uid":I
    const/4 v12, 0x0

    .line 4205
    .local v12, "uidlist":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    array-length v13, v6

    if-ge v4, v13, :cond_4

    .line 4206
    aget-object v13, v6, v4

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v11

    .line 4207
    if-lez v11, :cond_2

    .line 4208
    if-nez v12, :cond_3

    .line 4209
    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 4205
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4211
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_2

    .line 4215
    :catch_0
    move-exception v3

    .line 4216
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "sdcard"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Whoops granted uid failed for protected files. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz v12, :cond_0

    .line 4220
    const/4 v9, 0x0

    .line 4221
    .local v9, "try_count":I
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V

    .line 4222
    .local v8, "socket":Landroid/net/LocalSocket;
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v13, "sdcard"

    sget-object v14, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v13, v14}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v1, "address":Landroid/net/LocalSocketAddress;
    move v10, v9

    .line 4223
    .end local v9    # "try_count":I
    .local v10, "try_count":I
    :goto_3
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "try_count":I
    .restart local v9    # "try_count":I
    const/16 v13, 0xa

    if-ge v10, v13, :cond_5

    .line 4225
    :try_start_1
    invoke-virtual {v8, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4234
    :cond_5
    const/16 v13, 0xa

    if-ge v9, v13, :cond_6

    .line 4235
    const/16 v13, 0x1f4

    :try_start_2
    invoke-virtual {v8, v13}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 4236
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 4237
    .local v5, "out":Ljava/io/OutputStream;
    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 4238
    .local v2, "bytes":[B
    const-string v13, "sdcard"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PowermManagerService write uid is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 4240
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 4242
    .end local v2    # "bytes":[B
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_6
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 4243
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 4227
    :catch_2
    move-exception v13

    .line 4229
    const-wide/16 v13, 0x3e8

    :try_start_3
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    move v10, v9

    .line 4230
    .end local v9    # "try_count":I
    .restart local v10    # "try_count":I
    goto :goto_3

    .end local v10    # "try_count":I
    .restart local v9    # "try_count":I
    :catch_3
    move-exception v13

    move v10, v9

    .end local v9    # "try_count":I
    .restart local v10    # "try_count":I
    goto :goto_3
.end method
