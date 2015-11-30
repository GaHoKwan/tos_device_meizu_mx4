.class final Lcom/android/server/LockSettingsService$MzFlymeInjector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MzFlymeInjector"
.end annotation


# static fields
.field public static final FLYME_CHECK_PASSWORD:Z = true

.field private static final LOCK_FINDPHONE_PASSWORD_FILE:Ljava/lang/String; = "FindPhonePassword.key"

.field public static final MAX_TIMES_OF_CHECK_PASSWORD:I = 0xf

.field public static final PASSWORD_TYPE_LEFT_COUNT:Ljava/lang/String; = "lockscreen.password_left_count"


# instance fields
.field mFindPhoneConnection:Landroid/content/ServiceConnection;

.field private mPasswordLeftTimes:I

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 1

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 707
    new-instance v0, Lcom/android/server/LockSettingsService$MzFlymeInjector$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$MzFlymeInjector$1;-><init>(Lcom/android/server/LockSettingsService$MzFlymeInjector;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$MzFlymeInjector;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 752
    const/4 v8, 0x0

    .line 755
    .local v8, "ret":Z
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    move/from16 v0, p2

    # invokes: Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;
    invoke-static {v11, v0}, Lcom/android/server/LockSettingsService;->access$400(Lcom/android/server/LockSettingsService;I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "r"

    invoke-direct {v7, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .local v7, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v10, v11, [B

    .line 758
    .local v10, "stored":[B
    const/4 v11, 0x0

    array-length v12, v10

    invoke-virtual {v7, v10, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 759
    .local v3, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 760
    if-gtz v3, :cond_1

    .line 761
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 762
    const/4 v8, 0x1

    .line 788
    .end local v3    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v10    # "stored":[B
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    const-string v12, "lockscreen.password_left_count"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    int-to-long v13, v13

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 789
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    if-gtz v11, :cond_0

    .line 790
    const-string v11, "LockSettingsService"

    const-string v12, "begin bindservice-------------"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v9, "serviceIntent":Landroid/content/Intent;
    const-class v11, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    const/4 v13, 0x1

    invoke-virtual {v11, v9, v12, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 796
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return v8

    .line 766
    .restart local v3    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "stored":[B
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v4

    .line 767
    .local v4, "hash":[B
    invoke-static {v10, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    .line 768
    .local v6, "matched":Z
    if-eqz v6, :cond_3

    .line 769
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 770
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    # invokes: Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    invoke-static {v11, v0, v1}, Lcom/android/server/LockSettingsService;->access$500(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)V

    .line 772
    :cond_2
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 773
    const/4 v8, 0x1

    goto :goto_0

    .line 775
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 776
    const/4 v8, 0x0

    goto :goto_0

    .line 779
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "matched":Z
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v10    # "stored":[B
    :catch_0
    move-exception v2

    .line 780
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string v11, "LockSettingsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 782
    const/4 v8, 0x1

    .line 787
    goto/16 :goto_0

    .line 783
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 784
    .local v5, "ioe":Ljava/io/IOException;
    const-string v11, "LockSettingsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 786
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public processLeftTimes(Z)I
    .locals 6
    .param p1, "reset"    # Z

    .prologue
    .line 800
    if-eqz p1, :cond_0

    .line 801
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.password_left_count"

    iget v3, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    return v1

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method setLockPassword(Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 747
    iget-object v0, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    const-string v1, "lockscreen.password_left_count"

    iget v2, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 748
    return-void
.end method

.method systemReady()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.password_left_count"

    const-wide/16 v3, 0xf

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 735
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockSettingsService systemReady, now mPasswordLeftTimes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    if-ge v1, v6, :cond_0

    .line 737
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->mPasswordLeftTimes:I

    .line 738
    iget-object v1, p0, Lcom/android/server/LockSettingsService$MzFlymeInjector;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.password_left_count"

    const-wide/16 v3, 0xf

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
