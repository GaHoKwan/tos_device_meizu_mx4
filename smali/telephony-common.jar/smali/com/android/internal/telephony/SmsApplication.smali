.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final CERT_MD5_FOR_SPECIAL_PKGS:[[B

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final SPECIAL_PKGS_FOR_WRITE_SMS:[Ljava/lang/String;

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.aliyun.SecurityCenter"

    aput-object v1, v0, v4

    const-string v1, "com.yunos.privacy"

    aput-object v1, v0, v5

    const-string v1, "com.aliyun.test4yunos"

    aput-object v1, v0, v6

    const-string v1, "com.yunos.test.tts"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.aliyun.yunclient"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cn.huanji"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->SPECIAL_PKGS_FOR_WRITE_SMS:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [[B

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    aput-object v3, v0, v6

    aput-object v3, v0, v7

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->CERT_MD5_FOR_SPECIAL_PKGS:[[B

    .line 97
    sput-object v3, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    return-void

    .line 82
    nop

    :array_0
    .array-data 1
        -0x1ft
        -0x69t
        -0x28t
        -0x46t
        0x2bt
        -0x71t
        -0x73t
        -0x7ft
        0x77t
        -0x56t
        0x6ct
        0x6ct
        -0x69t
        0x42t
        -0x71t
        0x6dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 652
    const-string v0, "sms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 653
    const-string v0, "smsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 654
    const-string v0, "mms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 655
    const-string v0, "mmsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method private static getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 297
    const-string v29, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 299
    .local v27, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v29

    if-nez v29, :cond_1

    .line 302
    const/4 v7, 0x0

    .line 500
    :cond_0
    return-object v7

    .line 305
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v8

    .line 308
    .local v8, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "sms_default_application"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 311
    .local v13, "defaultApplication":Ljava/lang/String;
    const/4 v7, 0x0

    .line 312
    .local v7, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_2

    .line 313
    invoke-static {v8, v13}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v7

    .line 317
    :cond_2
    if-eqz p1, :cond_4

    if-nez v7, :cond_4

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 320
    .local v24, "r":Landroid/content/res/Resources;
    const v29, 0x1040025

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 322
    .local v14, "defaultPackage":Ljava/lang/String;
    invoke-static {v8, v14}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v7

    .line 324
    if-nez v7, :cond_3

    .line 326
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v29

    if-eqz v29, :cond_3

    .line 327
    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v7, v29, v30

    .end local v7    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    check-cast v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 332
    .restart local v7    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    if-eqz v7, :cond_4

    .line 333
    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 338
    .end local v14    # "defaultPackage":Ljava/lang/String;
    .end local v24    # "r":Landroid/content/res/Resources;
    :cond_4
    if-eqz v7, :cond_0

    .line 339
    const-string v29, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 345
    .local v6, "appOps":Landroid/app/AppOpsManager;
    if-nez p1, :cond_5

    iget v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    move/from16 v29, v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 347
    :cond_5
    const/16 v29, 0xf

    iget v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    move/from16 v30, v0

    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v22

    .line 349
    .local v22, "mode":I
    if-eqz v22, :cond_6

    .line 350
    const-string v30, "SmsApplication"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " lost OP_WRITE_SMS: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-eqz p1, :cond_a

    const-string v29, " (fixing)"

    :goto_0
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz p1, :cond_b

    .line 353
    const/16 v29, 0xf

    iget v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    move/from16 v30, v0

    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 363
    .end local v22    # "mode":I
    :cond_6
    :goto_1
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 369
    .local v23, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v29, Landroid/content/ComponentName;

    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 374
    :try_start_0
    const-string v29, "com.android.phone"

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 375
    .local v20, "info":Landroid/content/pm/PackageInfo;
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    const-string v31, "com.android.phone"

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v22

    .line 377
    .restart local v22    # "mode":I
    if-eqz v22, :cond_7

    .line 378
    const-string v29, "SmsApplication"

    const-string v30, "com.android.phone lost OP_WRITE_SMS:  (fixing)"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    const-string v31, "com.android.phone"

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "mode":I
    :cond_7
    :goto_2
    :try_start_1
    const-string v29, "com.android.bluetooth"

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 390
    .restart local v20    # "info":Landroid/content/pm/PackageInfo;
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    const-string v31, "com.android.bluetooth"

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v22

    .line 392
    .restart local v22    # "mode":I
    if-eqz v22, :cond_8

    .line 393
    const-string v29, "SmsApplication"

    const-string v30, "com.android.bluetooth lost OP_WRITE_SMS:  (fixing)"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    const-string v31, "com.android.bluetooth"

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "mode":I
    :cond_8
    :goto_3
    const/16 v28, 0x0

    .line 407
    .local v28, "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :try_start_2
    const-class v29, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    move-object/from16 v28, v0

    .line 408
    if-eqz v28, :cond_c

    .line 409
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "actualClassName":Ljava/lang/String;
    const-string v29, "SmsApplication"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "initial ISmsDbVisitor done, actual class name is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 417
    .end local v4    # "actualClassName":Ljava/lang/String;
    :goto_4
    if-eqz v28, :cond_d

    .line 418
    invoke-interface/range {v28 .. v28}, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;->getPackageNames()[Ljava/lang/String;

    move-result-object v26

    .line 419
    .local v26, "specialApps":[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 421
    :try_start_3
    aget-object v29, v26, v19

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 422
    .restart local v20    # "info":Landroid/content/pm/PackageInfo;
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    aget-object v31, v26, v19

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v22

    .line 424
    .restart local v22    # "mode":I
    if-eqz v22, :cond_9

    .line 425
    const-string v29, "SmsApplication"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v31, v26, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " lost OP_WRITE_SMS:  (fixing)"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    aget-object v31, v26, v19

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 419
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "mode":I
    :cond_9
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 350
    .end local v19    # "i":I
    .end local v23    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v26    # "specialApps":[Ljava/lang/String;
    .end local v28    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    .restart local v22    # "mode":I
    :cond_a
    const-string v29, " (no permission to fix)"

    goto/16 :goto_0

    .line 357
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 382
    .end local v22    # "mode":I
    .restart local v23    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v17

    .line 384
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "SmsApplication"

    const-string v30, "Phone package not found: com.android.phone"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 397
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v17

    .line 399
    .restart local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "SmsApplication"

    const-string v30, "Bluetooth package not found: com.android.bluetooth"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 412
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v28    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :cond_c
    :try_start_4
    const-string v29, "SmsApplication"

    const-string v30, "FAIL! intial ISmsDbVisitor"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 414
    :catch_2
    move-exception v17

    .line 415
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v29, "SmsApplication"

    const-string v30, "FAIL! No ISmsDbVisitor"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 429
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "i":I
    .restart local v26    # "specialApps":[Ljava/lang/String;
    :catch_3
    move-exception v17

    .line 431
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "SmsApplication"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Internal package not found: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget-object v31, v26, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 440
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "i":I
    .end local v26    # "specialApps":[Ljava/lang/String;
    :cond_d
    sget-object v26, Lcom/android/internal/telephony/SmsApplication;->SPECIAL_PKGS_FOR_WRITE_SMS:[Ljava/lang/String;

    .line 441
    .restart local v26    # "specialApps":[Ljava/lang/String;
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_7
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 443
    :try_start_5
    sget-object v29, Lcom/android/internal/telephony/SmsApplication;->CERT_MD5_FOR_SPECIAL_PKGS:[[B

    aget-object v29, v29, v19

    if-nez v29, :cond_f

    const/16 v18, 0x0

    .line 444
    .local v18, "flags":I
    :goto_8
    aget-object v29, v26, v19

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 445
    .restart local v20    # "info":Landroid/content/pm/PackageInfo;
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    aget-object v31, v26, v19

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v22

    .line 447
    .restart local v22    # "mode":I
    if-eqz v22, :cond_e

    .line 448
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    const/16 v30, 0x2710

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_12

    .line 449
    const/16 v21, 0x0

    .line 450
    .local v21, "isSystemApp":Z
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 451
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_10

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-nez v29, :cond_10

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-nez v29, :cond_10

    .line 454
    const/16 v21, 0x0

    .line 458
    :goto_9
    if-nez v21, :cond_12

    .line 459
    sget-object v29, Lcom/android/internal/telephony/SmsApplication;->CERT_MD5_FOR_SPECIAL_PKGS:[[B

    aget-object v29, v29, v19
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v29, :cond_11

    .line 441
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "flags":I
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v21    # "isSystemApp":Z
    .end local v22    # "mode":I
    :cond_e
    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 443
    :cond_f
    const/16 v18, 0x40

    goto :goto_8

    .line 456
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "flags":I
    .restart local v20    # "info":Landroid/content/pm/PackageInfo;
    .restart local v21    # "isSystemApp":Z
    .restart local v22    # "mode":I
    :cond_10
    const/16 v21, 0x1

    goto :goto_9

    .line 465
    :cond_11
    :try_start_6
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v25, v29, v30

    .line 467
    .local v25, "sig":Landroid/content/pm/Signature;
    const-string v29, "X.509"

    invoke-static/range {v29 .. v29}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    .line 468
    .local v12, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 469
    .local v9, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v12, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    .line 472
    .local v11, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    .line 473
    .local v10, "bytes":[B
    const-string v29, "MD5"

    invoke-static/range {v29 .. v29}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v16

    .line 474
    .local v16, "digester":Ljava/security/MessageDigest;
    const/16 v29, 0x0

    array-length v0, v10

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v10, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 475
    invoke-virtual/range {v16 .. v16}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    .line 477
    .local v15, "digest":[B
    sget-object v29, Lcom/android/internal/telephony/SmsApplication;->CERT_MD5_FOR_SPECIAL_PKGS:[[B

    aget-object v29, v29, v19

    move-object/from16 v0, v29

    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v29

    if-eqz v29, :cond_e

    .line 487
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v10    # "bytes":[B
    .end local v11    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v15    # "digest":[B
    .end local v16    # "digester":Ljava/security/MessageDigest;
    .end local v21    # "isSystemApp":Z
    .end local v25    # "sig":Landroid/content/pm/Signature;
    :cond_12
    :try_start_7
    const-string v29, "SmsApplication"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v31, v26, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " lost OP_WRITE_SMS:  (fixing)"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v29, 0xf

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    aget-object v31, v26, v19

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_a

    .line 491
    .end local v18    # "flags":I
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "mode":I
    :catch_4
    move-exception v17

    .line 493
    .restart local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "SmsApplication"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Internal package not found: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget-object v31, v26, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 480
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "flags":I
    .restart local v20    # "info":Landroid/content/pm/PackageInfo;
    .restart local v21    # "isSystemApp":Z
    .restart local v22    # "mode":I
    :catch_5
    move-exception v17

    .line 481
    .local v17, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_a
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 174
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 177
    .local v13, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v7, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 181
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 185
    const-string v14, "android.permission.BROADCAST_SMS"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 188
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 189
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 190
    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "applicationName":Ljava/lang/String;
    new-instance v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v1, v6, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .local v12, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 194
    invoke-virtual {v7, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v14, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    const-string v15, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 202
    .local v4, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 203
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 204
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 207
    const-string v14, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 210
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 211
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 212
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_2

    .line 213
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    goto :goto_1

    .line 218
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v14, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 221
    .local v9, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 222
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 223
    .local v11, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_4

    .line 226
    const-string v14, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 229
    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 230
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 231
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_4

    .line 232
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    goto :goto_2

    .line 237
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v14, "android.intent.action.SENDTO"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 240
    .local v10, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 241
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 242
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_6

    .line 245
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 246
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 247
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_6

    .line 248
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    goto :goto_3

    .line 253
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 254
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 255
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_8

    .line 258
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 259
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 260
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_8

    .line 261
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v14

    if-nez v14, :cond_8

    .line 262
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 266
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    return-object v14
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .prologue
    .local p0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v2, 0x0

    .line 275
    if-nez p1, :cond_0

    move-object v0, v2

    .line 284
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 280
    .local v0, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    move-object v0, v2

    .line 284
    goto :goto_0
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 720
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 721
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 737
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 738
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 754
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 755
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 704
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 705
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 692
    .local v0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 646
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 647
    return-void
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    .line 664
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 665
    .local v2, "intent":Landroid/content/Intent;
    const v7, 0x10040

    invoke-virtual {p0, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 669
    .local v5, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 670
    .local v4, "n":I
    new-array v6, v4, [Landroid/content/ComponentName;

    .line 671
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 672
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 673
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 678
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 681
    const v7, 0x208000

    invoke-virtual {p0, v3, v7, v6, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 684
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 17
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 510
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-nez v13, :cond_1

    .line 605
    :cond_0
    return-void

    .line 517
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sms_default_application"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, "oldPackageName":Ljava/lang/String;
    if-eqz p0, :cond_2

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 526
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 527
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    .line 528
    .local v4, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 529
    .local v3, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_0

    .line 531
    const-string v13, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 532
    .local v2, "appOps":Landroid/app/AppOpsManager;
    if-eqz v8, :cond_3

    .line 534
    const/16 v13, 0x2000

    :try_start_0
    invoke-virtual {v9, v8, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 536
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    invoke-virtual {v2, v13, v14, v8, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sms_default_application"

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 548
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 552
    const/16 v13, 0xf

    iget v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 557
    :try_start_1
    const-string v13, "com.android.phone"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 558
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.phone"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 567
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_2
    const-string v13, "com.android.bluetooth"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 568
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.bluetooth"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 578
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    const/4 v12, 0x0

    .line 580
    .local v12, "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :try_start_3
    const-class v13, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    move-object v12, v0

    .line 581
    if-eqz v12, :cond_4

    .line 582
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "actualClassName":Ljava/lang/String;
    const-string v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initial ISmsDbVisitor done, actual class name is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 590
    .end local v1    # "actualClassName":Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_0

    .line 591
    invoke-interface {v12}, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;->getPackageNames()[Ljava/lang/String;

    move-result-object v10

    .line 592
    .local v10, "specialApps":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v13, v10

    if-ge v6, v13, :cond_0

    .line 594
    :try_start_4
    aget-object v13, v10, v6

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 595
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    aget-object v15, v10, v6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 592
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 538
    .end local v6    # "i":I
    .end local v10    # "specialApps":[Ljava/lang/String;
    .end local v12    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :catch_0
    move-exception v5

    .line 539
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Old SMS package not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    .line 562
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "Phone package not found: com.android.phone"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 570
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v5

    .line 572
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "Bluetooth package not found: com.android.bluetooth"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 585
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :cond_4
    :try_start_5
    const-string v13, "SmsApplication"

    const-string v14, "FAIL! intial ISmsDbVisitor"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 587
    :catch_3
    move-exception v5

    .line 588
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v13, "SmsApplication"

    const-string v14, "FAIL! No ISmsDbVisitor"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 597
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "i":I
    .restart local v10    # "specialApps":[Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 599
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Internal package not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 765
    if-nez p0, :cond_0

    move v8, v9

    .line 805
    :goto_0
    return v8

    .line 767
    :cond_0
    const/4 v3, 0x0

    .line 768
    .local v3, "defaultSmsPackage":Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 769
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 770
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 773
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    const-string v8, "com.android.bluetooth"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 780
    const/4 v7, 0x0

    .line 782
    .local v7, "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :try_start_0
    const-class v8, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    move-object v7, v0

    .line 783
    if-eqz v7, :cond_3

    .line 784
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "actualClassName":Ljava/lang/String;
    const-string v8, "SmsApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initial ISmsDbVisitor done, actual class name is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .end local v1    # "actualClassName":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_5

    .line 793
    invoke-interface {v7}, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;->getPackageNames()[Ljava/lang/String;

    move-result-object v6

    .line 794
    .local v6, "specialApps":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v8, v6

    if-ge v5, v8, :cond_5

    .line 795
    aget-object v8, v6, v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v10

    .line 796
    goto :goto_0

    .line 787
    .end local v5    # "i":I
    .end local v6    # "specialApps":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v8, "SmsApplication"

    const-string v11, "FAIL! intial ISmsDbVisitor"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 789
    :catch_0
    move-exception v4

    .line 790
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v8, "SmsApplication"

    const-string v11, "FAIL! No ISmsDbVisitor"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 794
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "i":I
    .restart local v6    # "specialApps":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "specialApps":[Ljava/lang/String;
    :cond_5
    move v8, v9

    .line 802
    goto :goto_0

    .end local v7    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :cond_6
    move v8, v10

    .line 805
    goto :goto_0
.end method
