.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final EXTRA_PARAMS_ENCODING_TYPE:Ljava/lang/String; = "encoding_type"

.field public static final EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final RESULT_ERROR_SUCCESS:I = 0x0

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final TEST_MODE_CTA:I = 0x1

.field private static final TEST_MODE_FTA:I = 0x2

.field private static final TEST_MODE_IOT:I = 0x3

.field private static final TEST_MODE_PROPERTY_KEY:Ljava/lang/String; = "gsm.gcf.testmode"

.field private static final TEST_MODE_PROPERTY_KEY2:Ljava/lang/String; = "gsm.gcf.testmode2"

.field private static final TEST_MODE_UNKNOWN:I = -0x1

.field public static final VALIDITY_PERIOD_MAX_DURATION:I = 0xff

.field public static final VALIDITY_PERIOD_NO_DURATION:I = -0x1

.field public static final VALIDITY_PERIOD_ONE_DAY:I = 0xa7

.field public static final VALIDITY_PERIOD_ONE_HOUR:I = 0xb

.field public static final VALIDITY_PERIOD_SIX_HOURS:I = 0x47

.field public static final VALIDITY_PERIOD_TWELVE_HOURS:I = 0x8f

.field private static lastReceivedSmsSimId:I

.field private static final sInstance:Landroid/telephony/SmsManager;


# instance fields
.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

.field private testMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 74
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->lastReceivedSmsSimId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v2, p0, Landroid/telephony/SmsManager;->testMode:I

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 371
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v2

    if-nez v2, :cond_0

    .line 372
    const-string v2, "SMS"

    const-string v3, "SM-constructor: get test mode from SIM 1"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v2, "gsm.gcf.testmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/telephony/SmsManager;->testMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM-constructor: test mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SmsManager;->testMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :try_start_1
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 388
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_1

    .line 389
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "actualClassName":Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_1
    return-void

    .line 375
    :cond_0
    :try_start_2
    const-string v2, "SMS"

    const-string v3, "SM-constructor: get test mode from SIM 2"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v2, "gsm.gcf.testmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/telephony/SmsManager;->testMode:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SMS"

    const-string v3, "SM-constructor: invalid property value"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SmsManager;->testMode:I

    goto :goto_0

    .line 392
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_3
    const-string v2, "SMS"

    const-string v3, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 394
    :catch_1
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "SMS"

    const-string v3, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const-string v5, "SMS"

    const-string v6, "createMessageListFromRawRecords"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz p0, :cond_1

    .line 737
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 738
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 739
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 741
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 742
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 743
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 744
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    const-string v4, "SMS"

    const-string v5, "getAllMessagesFromIcc"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v3, 0x0

    .line 559
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-direct {v4}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 564
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 565
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 571
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSmsDefaultSim()I

    move-result v0

    return v0
.end method

.method private static getSmsServiceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 1624
    if-nez p0, :cond_0

    .line 1625
    const-string v0, "isms"

    .line 1633
    :goto_0
    return-object v0

    .line 1626
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1627
    const-string v0, "isms2"

    goto :goto_0

    .line 1628
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 1629
    const-string v0, "isms3"

    goto :goto_0

    .line 1630
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 1631
    const-string v0, "isms4"

    goto :goto_0

    .line 1633
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    invoke-static {p0, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x1

    .line 1589
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return v2

    .line 1593
    :cond_1
    invoke-static {p0}, Landroid/telephony/SmsManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1595
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1596
    .local v1, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 1598
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1603
    .end local v1    # "sentIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid destinationAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v2, 0x0

    goto :goto_0

    .line 1607
    .end local v0    # "i":I
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1608
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1610
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 1611
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1599
    .restart local v0    # "i":I
    .restart local v1    # "sentIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "da"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1536
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "encodeAddress":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return v3

    .line 1540
    :cond_1
    const/4 v2, 0x0

    .line 1541
    .local v2, "spaceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1542
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    .line 1543
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1541
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1547
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIcc([B[BI)Z
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 416
    const-string v5, "SMS"

    const-string v6, "copyMessageToIcc"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v4, 0x0

    .line 419
    .local v4, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "isms":Ljava/lang/String;
    const/4 v3, 0x0

    .line 423
    .local v3, "smsStatus":Landroid/telephony/SimSmsInsertStatus;
    if-nez p2, :cond_0

    .line 424
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "pdu is NULL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 429
    :cond_0
    iget-object v5, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v5}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    const-string v5, "SMS"

    const-string v6, "copyMessageToIcc return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v5, 0x0

    .line 461
    :goto_0
    return v5

    .line 437
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 438
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 442
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCard(Ljava/lang/String;I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 450
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_1
    const-string v6, "SMS"

    if-eqz v3, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert Raw "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz v3, :cond_3

    .line 453
    invoke-virtual {v3}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v1

    .line 455
    .local v1, "index":[I
    if-eqz v1, :cond_3

    array-length v5, v1

    if-lez v5, :cond_3

    .line 456
    const/4 v4, 0x1

    .end local v1    # "index":[I
    :cond_3
    move v5, v4

    .line 461
    goto :goto_0

    .line 450
    :cond_4
    const-string v5, "insert Raw null"

    goto :goto_2

    .line 445
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public copySmsToIcc([B[BI)I
    .locals 5
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    const/4 v2, -0x1

    .line 1448
    const-string v3, "SMS"

    const-string v4, "copySmsToIcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p0, p3, p2, p1}, Landroid/telephony/SmsManager;->insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v1

    .line 1451
    .local v1, "smsStatus":Landroid/telephony/SimSmsInsertStatus;
    if-nez v1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return v2

    .line 1454
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v0

    .line 1456
    .local v0, "index":[I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1457
    const/4 v2, 0x0

    aget v2, v0, v2

    goto :goto_0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 11
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 980
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SMS"

    const-string v2, "copyTextMessageToIccCard"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v9, 0x1

    .line 982
    .local v9, "result":I
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 985
    .local v8, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    .line 986
    const-string v1, "SMS"

    const-string v2, "copyTextMessageToIccCard return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 1001
    .end local v9    # "result":I
    .local v10, "result":I
    :goto_0
    return v10

    .line 992
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :cond_0
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 993
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 994
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_1
    move v10, v9

    .line 1001
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto :goto_0

    .line 997
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 9
    .param p1, "messageIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 476
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessageFromIcc, messageIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v4, 0x0

    .line 479
    .local v4, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "isms":Ljava/lang/String;
    iget-object v6, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v6}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v6

    if-nez v6, :cond_0

    .line 483
    const-string v6, "SMS"

    const-string v7, "deleteMessageFromIcc return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return v5

    .line 489
    :cond_0
    const/16 v5, 0xaf

    new-array v3, v5, [B

    .line 490
    .local v3, "pdu":[B
    const/4 v5, -0x1

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 493
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 494
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 495
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, p1, v6, v3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_1
    move v5, v4

    .line 502
    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "SMS"

    const-string v6, "deleteMessageFromIcc, RemoteException!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 625
    const/4 v2, 0x0

    .line 627
    .local v2, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 632
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 639
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 635
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 703
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableCellBroadcastRange, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v2, 0x0

    .line 706
    .local v2, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "isms":Ljava/lang/String;
    if-ge p2, p1, :cond_0

    .line 710
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 714
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 715
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 721
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v2

    .line 717
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divideMessage, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1188
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 593
    .local v2, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 598
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 605
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 601
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 662
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableCellBroadcastRange, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v2, 0x0

    .line 665
    .local v2, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "isms":Ljava/lang/String;
    if-ge p2, p1, :cond_0

    .line 669
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 672
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 673
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 674
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 680
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v2

    .line 676
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 791
    const-string v0, "unknown"

    .line 793
    .local v0, "format":Ljava/lang/String;
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 797
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 798
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getImsSmsFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 803
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 800
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getNextConcatenatedRef()I
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#yaoyuan@CommSrv.Telephony.Feature get next concatenated reference."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1680
    const/4 v1, -0x1

    .line 1682
    .local v1, "nextConcatenatedRef":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1683
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1684
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getNextConcatenatedRef()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1689
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1686
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSmsParameters()Landroid/telephony/SmsParameters;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1395
    const-string v4, "SMS"

    const-string v5, "getSmsParameters"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "isms":Ljava/lang/String;
    iget-object v4, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v4}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1400
    const-string v4, "SMS"

    const-string v5, "getSmsParameters return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_0
    :goto_0
    return-object v3

    .line 1406
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1407
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1408
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ISms;->getSmsParameters(Ljava/lang/String;)Landroid/telephony/SmsParameters;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1412
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const-string v4, "SMS"

    const-string v5, "fail to get SmsParameters"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    .locals 6
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    .line 1242
    const-string v3, "SMS"

    const-string v4, "insertRawMessageToIccCard"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v2, 0x0

    .line 1244
    .local v2, "ret":Landroid/telephony/SimSmsInsertStatus;
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, "isms":Ljava/lang/String;
    iget-object v3, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1248
    const-string v3, "SMS"

    const-string v4, "insertRawMessageToIccCard return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v3, 0x0

    .line 1263
    :goto_0
    return-object v3

    .line 1254
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1255
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1256
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCard(Ljava/lang/String;I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1262
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_1
    const-string v4, "SMS"

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert Raw "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 1263
    goto :goto_0

    .line 1262
    :cond_2
    const-string v3, "insert Raw null"

    goto :goto_2

    .line 1258
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    .locals 10
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Landroid/telephony/SimSmsInsertStatus;"
        }
    .end annotation

    .prologue
    .line 1206
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SMS"

    const-string v2, "insertTextMessageToIccCard"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v9, 0x0

    .line 1208
    .local v9, "ret":Landroid/telephony/SimSmsInsertStatus;
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 1211
    .local v8, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1212
    const-string v1, "SMS"

    const-string v2, "insertTextMessageToIccCard return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v1, 0x0

    .line 1227
    :goto_0
    return-object v1

    .line 1218
    :cond_0
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1219
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1220
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1226
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_1
    const-string v2, "SMS"

    if-eqz v9, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert Text "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 1227
    goto :goto_0

    .line 1226
    :cond_2
    const-string v1, "insert Text null"

    goto :goto_2

    .line 1222
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 765
    .local v0, "boSupported":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 769
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 770
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isImsSmsSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 775
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 772
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originalPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 930
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 934
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v11

    .line 937
    .local v11, "isms":Ljava/lang/String;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_2

    .line 938
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-interface {v2, v0, v3}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 939
    const-string v2, "SMS"

    const-string v3, "sendDataMessage return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_1
    :goto_0
    return-void

    .line 944
    :cond_2
    const-string v2, "send_data"

    move-object/from16 v0, p6

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v2, v0

    if-nez v2, :cond_4

    .line 949
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    :cond_4
    :try_start_0
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 954
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 955
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffff

    and-int v5, p3, v3

    const v3, 0xffff

    and-int v6, p4, v3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v10

    .line 960
    .local v10, "ex":Landroid/os/RemoteException;
    const-string v2, "SMS"

    const-string v3, "sendDataMessage, RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataMessage, destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v2, 0x1

    invoke-interface {v1, p5, v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 331
    const-string v1, "SMS"

    const-string v2, "sendDataMessage return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    const-string v1, "send_data"

    invoke-static {p1, v1, p5}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    if-eqz p4, :cond_3

    array-length v1, p4

    if-nez v1, :cond_4

    .line 342
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_4
    :try_start_0
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 347
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v8

    .line 353
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendDataMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextMessage, destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v2, 0x1

    invoke-interface {v1, p4, v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 245
    const-string v1, "SMS"

    const-string v2, "sendMultipartTextMessage return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 257
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 258
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 264
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendMultipartTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x0

    .line 268
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 269
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 270
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 272
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 275
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string v4, ""

    .local v4, "text":Ljava/lang/String;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 276
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 275
    .end local v4    # "text":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_1
.end method

.method public sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextMessageWithEncodingType, encoding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1127
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 1130
    .local v8, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1131
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v2, 0x1

    invoke-interface {v1, p5, v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 1132
    const-string v1, "SMS"

    const-string v2, "sendMultipartTextMessageWithEncodingType return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1
    :goto_0
    return-void

    .line 1137
    :cond_2
    invoke-static {p1, p3, p5}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1138
    const-string v1, "SMS"

    const-string v2, "invalid parameters for multipart message"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 1144
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1145
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1146
    const-string v1, "SMS"

    const-string v2, "call ISms.sendMultipartText"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1154
    :cond_4
    const/4 v6, 0x0

    .line 1155
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1156
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1157
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1159
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get sentIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1161
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1163
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    const-string v1, "SMS"

    const-string v2, "send single message"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    if-eqz p3, :cond_7

    .line 1165
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parts.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const-string v4, ""

    .line 1168
    .local v4, "text":Ljava/lang/String;
    :goto_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pass encoding type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    .line 1169
    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1167
    .end local v4    # "text":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_1
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1342
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "SMS"

    const-string v3, "sendMultipartTextMessageWithExtraParams"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1346
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v10

    .line 1349
    .local v10, "serviceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1350
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-interface {v2, v0, v3}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 1351
    const-string v2, "SMS"

    const-string v3, "sendMultipartTextMessageWithExtraParams return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_1
    :goto_0
    return-void

    .line 1356
    :cond_2
    move-object/from16 v0, p5

    invoke-static {p1, p3, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1360
    if-nez p4, :cond_3

    .line 1361
    const-string v2, "SMS"

    const-string v3, "bundle is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1365
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 1367
    :try_start_0
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1368
    .local v1, "service":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1369
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    .end local v1    # "service":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v9

    .line 1373
    .local v9, "e":Landroid/os/RemoteException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to call sendMultipartTextWithExtraParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v7, 0x0

    .line 1377
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 1378
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1379
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1381
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1382
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1385
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Landroid/telephony/SmsManager;->sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "firstPart"    # Z
    .param p10, "messageCount"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#yaoyuan@CommSrv.Telephony.Feature Create a new SubmitPdu and send it."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1651
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1654
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1655
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1659
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1660
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 1661
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/ISms;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextMessage, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v2, 0x1

    invoke-interface {v1, p4, v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 147
    const-string v1, "SMS"

    const-string v2, "sendTextMessage return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 159
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 164
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1047
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextMessageWithEncodingType, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", encoding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v9

    .line 1054
    .local v9, "isms":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1055
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v2, 0x1

    invoke-interface {v1, p5, v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 1056
    const-string v1, "SMS"

    const-string v2, "sendTextMessageWithEncodingType return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-static {p1, p3, p5}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1062
    const-string v1, "SMS"

    const-string v2, "the parameters are invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1067
    :cond_2
    :try_start_0
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1068
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 1069
    const-string v1, "SMS"

    const-string v2, "call ISms interface to send text message"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1075
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v8

    .line 1077
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "fail to get ISms"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :try_start_1
    const-string v1, "SMS"

    const-string v2, "iccISms is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1284
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextMessageWithExtraParams, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v9

    .line 1291
    .local v9, "serviceName":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1292
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v2, 0x1

    invoke-interface {v1, p5, v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->intercept(Ljava/lang/Object;I)V

    .line 1293
    const-string v1, "SMS"

    const-string v2, "sendTextMessageWithExtraParams return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_1
    :goto_0
    return-void

    .line 1298
    :cond_2
    invoke-static {p1, p3, p5}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1302
    if-nez p4, :cond_3

    .line 1303
    const-string v1, "SMS"

    const-string v2, "bundle is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1308
    :cond_3
    :try_start_0
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1309
    .local v0, "service":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1310
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1313
    .end local v0    # "service":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v8

    .line 1314
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to call sendTextWithExtraParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEtwsConfig(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 1511
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEtwsConfig, mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v2, 0x0

    .line 1513
    .local v2, "ret":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1517
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1518
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setEtwsConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1524
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1520
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setSmsParameters(Landroid/telephony/SmsParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/telephony/SmsParameters;

    .prologue
    const/4 v3, 0x0

    .line 1425
    const-string v4, "SMS"

    const-string v5, "setSmsParameters"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1430
    .local v2, "isms":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1431
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1432
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Lcom/android/internal/telephony/ISms;->setSmsParameters(Ljava/lang/String;Landroid/telephony/SmsParameters;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1440
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v3

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 7
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 520
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMessageOnIcc, messageIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v3, 0x0

    .line 523
    .local v3, "success":Z
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "isms":Ljava/lang/String;
    iget-object v4, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v4}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    const-string v4, "SMS"

    const-string v5, "updateMessageOnIcc return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v4, 0x0

    .line 543
    :goto_0
    return v4

    .line 534
    :cond_0
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 535
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 536
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_1
    move v4, v3

    .line 543
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "updateMessageOnIcc, RemoteException!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 1467
    const-string v8, "SMS"

    const-string v9, "updateSmsOnSimReadStatus"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const/4 v2, 0x0

    .line 1469
    .local v2, "record":Lcom/android/internal/telephony/SmsRawData;
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v5

    .line 1472
    .local v5, "svcName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1473
    .local v3, "smsSvc":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 1474
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEf(Ljava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1480
    .end local v3    # "smsSvc":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 1481
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v1

    .line 1482
    .local v1, "rawData":[B
    aget-byte v8, v1, v7

    and-int/lit16 v4, v8, 0xff

    .line 1483
    .local v4, "status":I
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sms status is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    if-eq v4, v6, :cond_1

    if-eq v4, v0, :cond_1

    .line 1486
    const-string v6, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "non-delivery sms "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1503
    .end local v1    # "rawData":[B
    .end local v4    # "status":I
    :goto_1
    return v0

    .line 1489
    .restart local v1    # "rawData":[B
    .restart local v4    # "status":I
    :cond_1
    if-ne v4, v6, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-ne v4, v0, :cond_4

    if-ne p2, v0, :cond_4

    .line 1491
    :cond_3
    const-string v6, "SMS"

    const-string v7, "no need to update status"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1494
    :cond_4
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update sms status as "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    if-ne p2, v0, :cond_5

    .line 1497
    .local v0, "newStatus":I
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v0

    goto :goto_1

    .end local v0    # "newStatus":I
    :cond_5
    move v0, v6

    .line 1495
    goto :goto_2

    .line 1502
    .end local v1    # "rawData":[B
    .end local v4    # "status":I
    :cond_6
    const-string v6, "SMS"

    const-string v8, "record is null"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1503
    goto :goto_1

    .line 1476
    :catch_0
    move-exception v8

    goto :goto_0
.end method
