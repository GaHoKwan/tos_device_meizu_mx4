.class public Lcom/android/server/AppOpsHandle;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsHandle$DialogItem;
    }
.end annotation


# static fields
.field public static final APPOPS_NOT_DEFINE:I = -0x1

.field public static final APPOPS_PREX:Ljava/lang/String; = "_op_"

.field public static final APPOPS_SETTINGS_ALLOWED:I = 0x1

.field public static final APPOPS_SETTINGS_ALLOWED_ALWAYLS:I = 0x4

.field public static final APPOPS_SETTINGS_DENIED:I = 0x0

.field public static final APPOPS_SETTINGS_DENIED_ALWAYLS:I = 0x3

.field public static final APPOPS_SETTINGS_INIT:I = 0x2

.field private static final DISMISS:I = 0x2

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field private static final SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FlymePermissionManager"

.field private static final UPDATE_DEFUAT:I


# instance fields
.field private code:I

.field dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsHandle$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageLabel:Ljava/lang/String;

.field private mPermissonContentString:Ljava/lang/String;

.field private mPermissonDetailsString:Ljava/lang/String;

.field private mPhHandler:Landroid/os/Handler;

.field private pkg:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/server/AppOpsHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsHandle$1;-><init>(Lcom/android/server/AppOpsHandle;)V

    iput-object v0, p0, Lcom/android/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    .line 311
    iput-object p1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppOpsHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsHandle;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsHandle;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsHandle;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsHandle;->showToastMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsHandle;Lcom/android/server/AppOpsHandle$DialogItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsHandle;
    .param p1, "x1"    # Lcom/android/server/AppOpsHandle$DialogItem;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsHandle;->updateDialogList(Lcom/android/server/AppOpsHandle$DialogItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsHandle;
    .param p1, "x1"    # Landroid/content/DialogInterface;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V

    return-void
.end method

.method private checkDialogList(IILjava/lang/String;)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v2, "FlymePermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDialogList code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsHandle$DialogItem;

    .line 134
    .local v0, "aDialgItem":Lcom/android/server/AppOpsHandle$DialogItem;
    iget v2, v0, Lcom/android/server/AppOpsHandle$DialogItem;->code:I

    if-ne p1, v2, :cond_0

    iget v2, v0, Lcom/android/server/AppOpsHandle$DialogItem;->uid:I

    if-ne p2, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const-string v2, "FlymePermissionManager"

    const-string v3, "checkDialogList:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x1

    .line 144
    .end local v0    # "aDialgItem":Lcom/android/server/AppOpsHandle$DialogItem;
    :goto_0
    return v2

    .line 143
    :cond_1
    const-string v2, "FlymePermissionManager"

    const-string v3, "checkDialogList:false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPackageNameFromPid(I)Ljava/lang/String;
    .locals 12
    .param p0, "pid"    # I

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 411
    .local v1, "charset":Ljava/nio/charset/Charset;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 414
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "orgLine":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 419
    const-string v8, "FlymePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPackageNameFromPid, charset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cmdline="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", orgLength="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", trim line="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 425
    .local v4, "index":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_0

    .line 426
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v8

    .line 438
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "index":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "orgLine":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 430
    :catch_0
    move-exception v3

    .line 431
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "FlymePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPackageNameFromPid, /proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cmdline does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 432
    :catch_1
    move-exception v5

    .line 433
    .local v5, "ioe":Ljava/io/IOException;
    const-string v8, "FlymePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPackageNameFromPid, failed to read line from /proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cmdline does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 435
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "FlymePermissionManager"

    const-string v9, "getPackageNameFromPid, exception occurs"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getPermissonTypeDetails(I)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 442
    const-string v0, ""

    .line 444
    .local v0, "mPermissonDetailsString":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 585
    const-string v0, "unknown perm"

    .line 586
    const-string v1, "unknown perm"

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    .line 590
    :goto_0
    return-object v0

    .line 446
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040722

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040723

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto :goto_0

    .line 452
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto :goto_0

    .line 458
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040734

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040735

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto :goto_0

    .line 464
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040728

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040729

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto :goto_0

    .line 470
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040724

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040725

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 476
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040730

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040731

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 482
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040736

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040737

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 488
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 494
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104073e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 500
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104071c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104071d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 506
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104071a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104071b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 512
    :sswitch_b
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104071e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104071f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 518
    :sswitch_c
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104073a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104073b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 524
    :sswitch_d
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040712

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040713

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 530
    :sswitch_e
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104073c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104073d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 536
    :sswitch_f
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040739

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 542
    :sswitch_10
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040716

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040717

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 548
    :sswitch_11
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040718

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040719

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 554
    :sswitch_12
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 560
    :sswitch_13
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040732

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040733

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 566
    :sswitch_14
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040720

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040721

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 572
    :sswitch_15
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040726

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040727

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 578
    :sswitch_16
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040740

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040741

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    goto/16 :goto_0

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_14
        0x5 -> :sswitch_0
        0x6 -> :sswitch_15
        0x7 -> :sswitch_3
        0xd -> :sswitch_d
        0xe -> :sswitch_12
        0xf -> :sswitch_1
        0x14 -> :sswitch_10
        0x17 -> :sswitch_16
        0x1b -> :sswitch_f
        0x3c -> :sswitch_2
        0x3d -> :sswitch_5
        0x3e -> :sswitch_6
        0x3f -> :sswitch_4
        0x40 -> :sswitch_7
        0x42 -> :sswitch_13
        0x43 -> :sswitch_11
        0x44 -> :sswitch_9
        0x45 -> :sswitch_a
        0x49 -> :sswitch_8
        0x4b -> :sswitch_c
        0x4c -> :sswitch_e
        0x4d -> :sswitch_b
    .end sparse-switch
.end method

.method private showSettingDialog(Landroid/content/Context;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # I

    .prologue
    .line 226
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const v3, 0x103031b

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v9, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 231
    .local v5, "d":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 232
    const v3, 0x10900c3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 234
    .local v20, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 235
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 236
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 238
    const v3, 0x1020391

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 239
    .local v17, "reject":Landroid/widget/Button;
    const v3, 0x1020392

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 240
    .local v8, "accept":Landroid/widget/Button;
    const v3, 0x102038d

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 241
    .local v19, "title":Landroid/widget/TextView;
    const v3, 0x102038e

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 242
    .local v10, "content":Landroid/widget/TextView;
    const v3, 0x102038c

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 243
    .local v13, "icon":Landroid/widget/ImageView;
    const v3, 0x102038f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 245
    .local v18, "remember":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsHandle;->getPermissonTypeDetails(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040703

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    new-instance v3, Lcom/android/server/AppOpsHandle$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/AppOpsHandle$2;-><init>(Lcom/android/server/AppOpsHandle;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v3, Lcom/android/server/AppOpsHandle$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/AppOpsHandle$3;-><init>(Lcom/android/server/AppOpsHandle;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v3, Lcom/android/server/AppOpsHandle$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/server/AppOpsHandle$4;-><init>(Lcom/android/server/AppOpsHandle;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 293
    .local v16, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandle;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 294
    .local v14, "in":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 295
    .local v11, "drawble":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v11    # "drawble":Landroid/graphics/drawable/Drawable;
    .end local v14    # "in":Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v2, Lcom/android/server/AppOpsHandle$DialogItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AppOpsHandle;->code:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/AppOpsHandle;->uid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AppOpsHandle;->pkg:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AppOpsHandle$DialogItem;-><init>(Lcom/android/server/AppOpsHandle;ILandroid/app/AlertDialog;ILjava/lang/String;)V

    .line 302
    .local v2, "item":Lcom/android/server/AppOpsHandle$DialogItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 304
    .local v15, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v15, Landroid/os/Message;->what:I

    .line 305
    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4fb0

    invoke-virtual {v3, v15, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 308
    return-void

    .line 296
    .end local v2    # "item":Lcom/android/server/AppOpsHandle$DialogItem;
    .end local v15    # "message":Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 298
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showToastMessage(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 148
    const-string v2, "code"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsHandle;->code:I

    .line 149
    const-string v2, "uid"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsHandle;->uid:I

    .line 150
    const-string v2, "pkg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AppOpsHandle;->pkg:Ljava/lang/String;

    .line 151
    iget v2, p0, Lcom/android/server/AppOpsHandle;->code:I

    iget v3, p0, Lcom/android/server/AppOpsHandle;->uid:I

    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->pkg:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AppOpsHandle;->checkDialogList(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppOpsHandle;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    iget-object v2, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/AppOpsHandle;->showSettingDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private update(Landroid/content/DialogInterface;ZZZ)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "item":Lcom/android/server/AppOpsHandle$DialogItem;
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsHandle$DialogItem;

    .line 173
    .local v0, "aDialgItem":Lcom/android/server/AppOpsHandle$DialogItem;
    iget-object v4, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eq v4, p1, :cond_1

    iget-object v4, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    :cond_1
    move-object v2, v0

    .line 181
    .end local v0    # "aDialgItem":Lcom/android/server/AppOpsHandle$DialogItem;
    :cond_2
    if-eqz v2, :cond_3

    .line 182
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 183
    if-eqz p2, :cond_5

    .line 184
    if-eqz p4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    :goto_0
    invoke-direct {p0, v2, v7}, Lcom/android/server/AppOpsHandle;->updatePermissionControl(Lcom/android/server/AppOpsHandle$DialogItem;Z)V

    .line 219
    :cond_3
    :goto_1
    return-void

    .line 189
    :cond_4
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 195
    :cond_5
    if-eqz p3, :cond_6

    .line 196
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 199
    .local v3, "res":I
    if-ne v3, v8, :cond_3

    .line 200
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 205
    .end local v3    # "res":I
    :cond_6
    invoke-direct {p0, v2, v9}, Lcom/android/server/AppOpsHandle;->updatePermissionControl(Lcom/android/server/AppOpsHandle$DialogItem;Z)V

    .line 206
    if-eqz p4, :cond_7

    .line 207
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 211
    :cond_7
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method private updateDialogList(Lcom/android/server/AppOpsHandle$DialogItem;)V
    .locals 7
    .param p1, "item"    # Lcom/android/server/AppOpsHandle$DialogItem;

    .prologue
    const/4 v6, 0x0

    .line 112
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsHandle$DialogItem;

    .line 113
    .local v0, "aDialgItem":Lcom/android/server/AppOpsHandle$DialogItem;
    iget v4, p1, Lcom/android/server/AppOpsHandle$DialogItem;->code:I

    iget v5, v0, Lcom/android/server/AppOpsHandle$DialogItem;->code:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/android/server/AppOpsHandle$DialogItem;->uid:I

    iget v5, v0, Lcom/android/server/AppOpsHandle$DialogItem;->uid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 115
    iget-object v4, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, v0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/AppOpsHandle;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "mPackageNameStringOp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 121
    .local v3, "message":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 122
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    .end local v2    # "mPackageNameStringOp":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    .end local v0    # "aDialgItem":Lcom/android/server/AppOpsHandle$DialogItem;
    :cond_2
    return-void
.end method

.method private updatePermissionControl(Lcom/android/server/AppOpsHandle$DialogItem;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/server/AppOpsHandle$DialogItem;
    .param p2, "limit"    # Z

    .prologue
    .line 223
    return-void
.end method


# virtual methods
.method public handleOperationCTA(IILjava/lang/String;Lcom/android/server/FlymePermissionService;)I
    .locals 14
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/android/server/FlymePermissionService;

    .prologue
    .line 317
    const/4 v9, 0x0

    .line 319
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 321
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 389
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v7

    .line 326
    .local v7, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 327
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    .end local v7    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    monitor-enter p4

    .line 332
    const/4 v8, 0x0

    .line 333
    .local v8, "i":I
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_op_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 334
    .local v11, "opName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v11, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 336
    .local v12, "res":I
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first get res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v1, -0x1

    if-ne v12, v1, :cond_5

    .line 338
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first get res APPOPS_NOT_DEFINE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v13, 0x2

    .line 342
    .local v13, "value":I
    const/16 v1, 0x49

    if-ne p1, v1, :cond_1

    .line 343
    const/4 v13, 0x0

    .line 345
    :cond_1
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get recommend value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-nez v13, :cond_2

    .line 347
    const/4 v1, 0x0

    monitor-exit p4

    goto/16 :goto_0

    .line 391
    .end local v11    # "opName":Ljava/lang/String;
    .end local v12    # "res":I
    .end local v13    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 348
    .restart local v11    # "opName":Ljava/lang/String;
    .restart local v12    # "res":I
    .restart local v13    # "value":I
    :cond_2
    const/4 v1, 0x1

    if-ne v13, v1, :cond_3

    .line 349
    const/4 v1, 0x1

    :try_start_2
    monitor-exit p4

    goto/16 :goto_0

    .line 351
    :cond_3
    const/4 v12, 0x2

    .line 357
    .end local v13    # "value":I
    :goto_1
    const/4 v1, 0x2

    if-ne v12, v1, :cond_4

    .line 358
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AppOpsHandle;->queueOperationMessage(IILjava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    :cond_4
    :goto_2
    const/4 v1, 0x2

    if-ne v12, v1, :cond_6

    const/16 v1, 0x64

    if-ge v8, v1, :cond_6

    .line 364
    const-wide/16 v1, 0xc8

    :try_start_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 365
    add-int/lit8 v8, v8, 0x1

    .line 366
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    :goto_3
    :try_start_4
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "break res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v11, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 374
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "break get res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 354
    :cond_5
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first get res \"NOT!!!\" APPOPS_NOT_DEFINE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 377
    :cond_6
    const/4 v1, 0x4

    if-eq v12, v1, :cond_7

    const/4 v1, 0x3

    if-eq v12, v1, :cond_7

    .line 379
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 380
    .local v10, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v10, Landroid/os/Message;->what:I

    .line 381
    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    .end local v10    # "message":Landroid/os/Message;
    :cond_7
    const/4 v1, 0x1

    if-eq v12, v1, :cond_8

    const/4 v1, 0x4

    if-ne v12, v1, :cond_9

    .line 387
    :cond_8
    const/4 v1, 0x0

    monitor-exit p4

    goto/16 :goto_0

    .line 389
    :cond_9
    const/4 v1, 0x1

    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 367
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public queueOperationMessage(IILjava/lang/String;IZ)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "enable"    # Z

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APPOPS_OP_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string v1, "enable"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queueOperationMessage code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppOpsHandle;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/android/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    return-void
.end method
