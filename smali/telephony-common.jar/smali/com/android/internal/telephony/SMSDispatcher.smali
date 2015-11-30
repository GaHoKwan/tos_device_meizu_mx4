.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field protected static final EVENT_ACTIVATE_CB_COMPLETE:I = 0x65

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_COPY_TEXT_MESSAGE_DONE:I = 0x6a

.field protected static final EVENT_GET_CB_CONFIG_COMPLETE:I = 0x66

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_DONE:I = 0xd

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final EVENT_QUERY_CB_ACTIVATION_COMPLETE:I = 0x68

.field protected static final EVENT_RADIO_ON:I = 0xb

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SET_CB_CONFIG_COMPLETE:I = 0x67

.field protected static final EVENT_SMS_READY:I = 0x69

.field static final EVENT_STOP_SENDING:I = 0x7

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field protected static MSG_REF_NUM:Ljava/lang/String; = null

.field protected static PDU_SIZE:Ljava/lang/String; = null

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field protected static final WAKE_LOCK_TIMEOUT:I = 0x1f4

.field protected static isDmLock:Z

.field private static sConcatMsgCount:I

.field private static sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field private static sConcatenatedRef:I

.field private static sRefuseSent:Z


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private mDMLockReceiver:Landroid/content/BroadcastReceiver;

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field protected mLock:Ljava/lang/Object;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field protected mSTrackersQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSimId:I

.field protected mSmsCapable:Z

.field protected mSmsReady:Z

.field protected mSmsSendDisabled:Z

.field protected mStorageAvailable:Z

.field protected mSuccess:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected messageCountNeedCopy:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 242
    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcher;->isDmLock:Z

    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 260
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->sRefuseSent:Z

    .line 261
    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    .line 263
    const-string v0, "pdu_size"

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    .line 264
    const-string v0, "msg_ref_num"

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->MSG_REF_NUM:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    .line 222
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 225
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 247
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 249
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    .line 251
    iput-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    .line 254
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I

    .line 255
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLock:Ljava/lang/Object;

    .line 256
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSuccess:Z

    .line 267
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    .line 394
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 1618
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    .line 1987
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 278
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 279
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 281
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 282
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 284
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 285
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sms_short_code_rule"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111003a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 290
    const-string v3, "telephony.sms.send"

    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 292
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSmsSendDisabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x69

    invoke-interface {v3, p0, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSmsReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    .line 303
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v1, "dmFilter":Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    :try_start_0
    const-class v3, Lcom/mediatek/common/ppl/IPplSmsFilter;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/ppl/IPplSmsFilter;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    .line 312
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "actualClassName":Ljava/lang/String;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initial mPplSmsFilter done, actual class name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "dmFilter":Landroid/content/IntentFilter;
    :cond_0
    move v3, v5

    .line 290
    goto/16 :goto_0

    .line 316
    .restart local v1    # "dmFilter":Landroid/content/IntentFilter;
    :cond_1
    const-string v3, "SMSDispatcher"

    const-string v4, "FAIL! intial mPplSmsFilter"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "SMSDispatcher"

    const-string v4, "FAIL! No IPplSmsFilter"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1595
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1596
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1597
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1598
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x5

    .line 1131
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v2, :cond_1

    .line 1134
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 1143
    :goto_1
    return v1

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMSDispatcher"

    const-string v2, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1143
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 1152
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1154
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1155
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1158
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "appPackage":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1156
    .restart local p1    # "appPackage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1157
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1290
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1291
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Resource unusable"

    goto :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 229
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1938
    const/4 v3, 0x0

    .line 1940
    .local v3, "packageName":Ljava/lang/String;
    array-length v6, p1

    if-ne v6, v7, :cond_1

    .line 1941
    const/4 v6, 0x0

    aget-object v3, p1, v6

    .line 1961
    :cond_0
    :goto_0
    return-object v3

    .line 1942
    :cond_1
    array-length v6, p1

    if-le v6, v7, :cond_0

    .line 1943
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1944
    .local v1, "callingPid":I
    const/4 v2, 0x0

    .line 1946
    .local v2, "index":Ljava/util/Iterator;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1947
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1948
    .local v5, "processList":Ljava/util/List;
    if-eqz v5, :cond_0

    .line 1950
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1951
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1952
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v4, v6

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1953
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, v6, :cond_2

    .line 1954
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1955
    goto :goto_0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 3
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 754
    if-eqz p1, :cond_1

    .line 756
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 757
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 767
    :goto_0
    return-void

    .line 759
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMSDispatcher"

    const-string v2, "CanceledException happened when send sms fail with sentIntent due to no service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    const-string v1, "SMSDispatcher"

    const-string v2, "Send sms fail without sentIntent due to no service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifySmsReady(Z)V
    .locals 5
    .param p1, "isReady"    # Z

    .prologue
    .line 1776
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1777
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ready"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1778
    const-string v2, "simId"

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1779
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1780
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1784
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.transaction.MmsSystemEventReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1787
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1789
    return-void
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1327
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1329
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1330
    .local v1, "destinationAddress":Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1332
    .local v2, "scAddress":Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1333
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1334
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1337
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 1339
    .local v10, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    .line 1340
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1341
    const/4 v9, 0x0

    .line 1342
    .local v9, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1343
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 1345
    .restart local v9    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-static {v10, v9}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1340
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v9    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 1350
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1351
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 1052
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return v6

    .line 1058
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eq v6, v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1064
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1065
    .local v3, "rule":I
    const/4 v5, 0x0

    .line 1066
    .local v5, "smsCategory":I
    if-eq v3, v6, :cond_2

    if-ne v3, v11, :cond_5

    .line 1067
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1068
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 1069
    :cond_3
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1073
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1075
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_5
    if-eq v3, v10, :cond_6

    if-ne v3, v11, :cond_9

    .line 1076
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_8

    .line 1078
    :cond_7
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1082
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1086
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    if-eq v5, v10, :cond_0

    .line 1093
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1095
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_a

    .line 1097
    const/4 v2, 0x1

    .line 1100
    :cond_a
    packed-switch v2, :pswitch_data_0

    .line 1113
    if-ne v5, v11, :cond_b

    .line 1114
    const/16 v0, 0x8

    .line 1118
    .local v0, "event":I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1119
    goto/16 :goto_0

    .line 1102
    .end local v0    # "event":I
    :pswitch_0
    const-string v7, "SMSDispatcher"

    const-string v8, "User approved this app to send to premium SMS"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1106
    :pswitch_1
    const-string v6, "SMSDispatcher"

    const-string v8, "User denied this app from sending to premium SMS"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1108
    goto/16 :goto_0

    .line 1116
    :cond_b
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_1

    .line 1100
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 1
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
    .line 1771
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#yaoyuan@CommSrv.Telephony.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1983
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1985
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 353
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 384
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 1586
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 11
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1433
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1434
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1437
    .local v9, "packageNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1438
    .local v4, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_1

    array-length v0, v9

    if-lez v0, :cond_1

    .line 1447
    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SMSDispatcher;->getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1448
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1449
    const/4 v0, 0x0

    aput-object v8, v9, v0

    .line 1451
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsTrackerFactory and get the package name via process id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const/16 v1, 0x40

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1460
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "destAddr"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1461
    .local v5, "destAddr":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v0

    .line 1454
    .end local v5    # "destAddr":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1478
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    const-string v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    const-string v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1467
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    return-object v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 17
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1196
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1201
    :cond_0
    if-eqz p1, :cond_1

    .line 1202
    const v4, 0x104044d

    .line 1207
    .local v4, "detailsId":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1208
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1215
    .local v12, "r":Landroid/content/res/Resources;
    const v14, 0x104044b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1218
    .local v10, "messageText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1220
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x10900f5

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1227
    .local v8, "layout":Landroid/view/View;
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1230
    .local v9, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v14, 0x10203bf

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1231
    .local v11, "messageView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    const v14, 0x10203c0

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1235
    .local v5, "detailsLayout":Landroid/view/ViewGroup;
    const v14, 0x10203c2

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1237
    .local v6, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1239
    const v14, 0x10203c3

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1241
    .local v13, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v13, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1247
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v16, 0x5

    invoke-direct/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104044e

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104044f

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1255
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d3

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1256
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1258
    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1259
    const/4 v14, -0x2

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 1204
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "detailsId":I
    .end local v5    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v6    # "detailsView":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v10    # "messageText":Ljava/lang/String;
    .end local v11    # "messageView":Landroid/widget/TextView;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "rememberChoice":Landroid/widget/CheckBox;
    :cond_1
    const v4, 0x104044c

    .restart local v4    # "detailsId":I
    goto/16 :goto_1
.end method

.method protected handleIccFull()V
    .locals 0

    .prologue
    .line 1605
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 403
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 503
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 406
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 410
    :sswitch_1
    const-string v3, "SMSDispatcher"

    const-string v4, "SMS retry.."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 415
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 419
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 423
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 428
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 429
    .local v2, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 434
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 440
    .end local v2    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 441
    .restart local v2    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    .line 443
    :try_start_0
    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_1
    :goto_2
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "SMSDispatcher"

    const-string v4, "failed to send RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 453
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 463
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 464
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 469
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleQueryCbActivation(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 474
    :sswitch_a
    const-string v3, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS is ready, SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    .line 477
    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsReady(Z)V

    goto/16 :goto_0

    .line 484
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 485
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 486
    :try_start_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSuccess:Z

    .line 488
    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSuccess:Z

    if-ne v3, v4, :cond_3

    .line 489
    const-string v3, "SMSDispatcher"

    const-string v4, "[copyText success to copy one"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I

    .line 496
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 497
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    move v3, v5

    .line 486
    goto :goto_3

    .line 492
    :cond_3
    :try_start_2
    const-string v3, "SMSDispatcher"

    const-string v4, "[copyText fail to copy one"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_8
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_b
    .end sparse-switch
.end method

.method protected handleQueryCbActivation(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1614
    const-string v0, "SMSDispatcher"

    const-string v1, "didn\'t support cellBoradcast in the CDMA phone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1188
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1172
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1173
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x1040448

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1175
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1177
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040447

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040449

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104044a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1186
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1187
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 27
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 517
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 518
    .local v22, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    .line 521
    .local v16, "sentIntent":Landroid/app/PendingIntent;
    const/16 v19, 0x0

    .line 522
    .local v19, "szPdu":I
    if-eqz v22, :cond_2

    .line 523
    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 524
    .local v9, "map":Ljava/util/HashMap;
    const/16 v17, 0x0

    .line 525
    .local v17, "smscLength":I
    const/4 v10, 0x0

    .line 526
    .local v10, "pduLength":I
    if-eqz v9, :cond_2

    .line 527
    const-string v23, "smsc"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 529
    const-string v23, "smsc"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v17, v0

    .line 532
    :cond_0
    const-string v23, "pdu"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 534
    const-string v23, "pdu"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v10, v0

    .line 536
    :cond_1
    add-int v19, v17, v10

    .line 539
    .end local v9    # "map":Ljava/util/HashMap;
    .end local v10    # "pduLength":I
    .end local v17    # "smscLength":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 541
    :try_start_0
    const-string v23, "SMSDispatcher"

    const-string v25, "Remove Tracker"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v21, v23

    .line 543
    .local v21, "tempTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_0
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 544
    const-string v23, "SMSDispatcher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[pdu size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 550
    .local v15, "sendtracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 552
    .end local v15    # "sendtracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 556
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 561
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_f

    .line 565
    const/4 v13, 0x0

    .line 567
    .local v13, "pplResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "defaultSmsPackage":Ljava/lang/String;
    if-eqz v4, :cond_5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 571
    :cond_5
    const-string v23, "SMSDispatcher"

    const-string v24, "[Moms] Phone privacy check start"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v13, 0x1

    .line 573
    const/4 v10, 0x0

    .line 574
    .restart local v10    # "pduLength":I
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v11, v0, [[B

    .line 575
    .local v11, "pdus":[[B
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "pdu"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_6

    .line 577
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "pdu"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v10, v0

    .line 579
    :cond_6
    const/16 v23, 0x0

    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    aput-object v24, v11, v23

    .line 581
    const/16 v23, 0x0

    aget-object v23, v11, v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput-byte v25, v23, v24

    .line 582
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "pdu"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    check-cast v23, [B

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v11, v25

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 585
    .local v12, "pplData":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    move-object/from16 v23, v0

    const-string v23, "pdus"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    move-object/from16 v23, v0

    const-string v23, "format"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    move-object/from16 v23, v0

    const-string v23, "simId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    move-object/from16 v23, v0

    const-string v23, "smsType"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lcom/mediatek/common/ppl/IPplSmsFilter;->pplFilter(Landroid/os/Bundle;)Z

    move-result v13

    .line 591
    const-string v23, "SMSDispatcher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[Moms] Phone privacy check end, Need to filter(result) = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v10    # "pduLength":I
    .end local v11    # "pdus":[[B
    .end local v12    # "pplData":Landroid/os/Bundle;
    :cond_7
    if-nez v13, :cond_8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 606
    :cond_8
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_9
    if-eqz v16, :cond_e

    .line 613
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 638
    :cond_a
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 639
    .local v14, "sendNext":Landroid/content/Intent;
    const-string v24, "SendNextMsg"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    if-nez v23, :cond_d

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    const-string v24, "message_ref"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    move/from16 v23, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v14}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 742
    .end local v4    # "defaultSmsPackage":Ljava/lang/String;
    .end local v13    # "pplResult":Z
    .end local v14    # "sendNext":Landroid/content/Intent;
    :goto_3
    return-void

    .line 542
    .end local v21    # "tempTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 552
    :catchall_0
    move-exception v23

    :try_start_2
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 558
    .restart local v21    # "tempTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_c
    const-string v23, "SMSDispatcher"

    const-string v24, "SmsResponse was null"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 639
    .restart local v4    # "defaultSmsPackage":Ljava/lang/String;
    .restart local v13    # "pplResult":Z
    .restart local v14    # "sendNext":Landroid/content/Intent;
    :cond_d
    const/16 v23, 0x0

    goto :goto_2

    .line 643
    .end local v14    # "sendNext":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 644
    .local v6, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v23, "SMSDispatcher"

    const-string v24, "CanceledException happened when send sms success with sentIntent"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 647
    .end local v6    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_e
    const-string v23, "SMSDispatcher"

    const-string v24, "Send sms success without sentIntent"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 654
    .end local v4    # "defaultSmsPackage":Ljava/lang/String;
    .end local v13    # "pplResult":Z
    :cond_f
    const/4 v8, 0x0

    .line 656
    .local v8, "isTestIccCard":Z
    :try_start_3
    const-string v23, "phoneEx"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v20

    .line 658
    .local v20, "telephony":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v20, :cond_10

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->isTestIccCard(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    .line 669
    .end local v20    # "telephony":Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_10
    :goto_4
    const-string v23, "SMSDispatcher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SD-handleSendComplete: SIM"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isTestIccCard "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    .line 675
    .local v18, "ss":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    move/from16 v23, v0

    if-lez v23, :cond_11

    if-eqz v18, :cond_11

    .line 679
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 681
    const-string v23, "SMSDispatcher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mRetryCount="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mImsRetry="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mMessageRef="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " SS= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getState()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v23

    if-nez v23, :cond_12

    if-eqz v18, :cond_12

    .line 691
    const-string v23, "SMSDispatcher"

    const-string v24, "handleSendComplete: No service"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    move/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 661
    .end local v18    # "ss":I
    :catch_1
    move-exception v6

    .line 663
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v23, "SMSDispatcher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SD-handleSendComplete: RemoteException: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 664
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 666
    .local v6, "ex":Ljava/lang/NullPointerException;
    const-string v23, "SMSDispatcher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SD-handleSendComplete: NullPointerException: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 709
    .end local v6    # "ex":Ljava/lang/NullPointerException;
    .restart local v18    # "ss":I
    :cond_12
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 710
    const/4 v5, 0x1

    .line 712
    .local v5, "error":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/CommandException;

    check-cast v23, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 714
    const/4 v5, 0x6

    .line 718
    :cond_13
    :try_start_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 721
    .local v7, "fillIn":Landroid/content/Intent;
    sget-object v23, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 724
    const-string v24, "errorCode"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    move/from16 v23, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_15

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 730
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 731
    const-string v23, "SendNextMsg"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    :cond_16
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5, v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 735
    .end local v7    # "fillIn":Landroid/content/Intent;
    :catch_3
    move-exception v6

    .line 736
    .local v6, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v23, "SMSDispatcher"

    const-string v24, "CanceledException happened when send sms fail with sentIntent"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 739
    .end local v5    # "error":I
    .end local v6    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_17
    const-string v23, "SMSDispatcher"

    const-string v24, "Send sms fail without sentIntent"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 377
    const-string v0, "SMSDispatcher"

    const-string v1, "handleStatusReport() called with no subclass."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method public isIms()Z
    .locals 3

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    .line 1577
    :goto_0
    return v0

    .line 1576
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSmsReady()Z
    .locals 1

    .prologue
    .line 1806
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1663
    return-void
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
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
    .line 1694
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
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
    .line 1754
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
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
    .line 866
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v15, v1, 0xff

    .line 867
    .local v15, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 868
    .local v14, "msgCount":I
    const/4 v6, 0x0

    .line 870
    .local v6, "encoding":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 872
    new-array v12, v14, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 873
    .local v12, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_2

    .line 874
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v11

    .line 875
    .local v11, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v1, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 878
    :cond_0
    iget v6, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 880
    :cond_1
    aput-object v11, v12, v13

    .line 873
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 883
    .end local v11    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_7

    .line 884
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 885
    .local v10, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v15, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 886
    add-int/lit8 v1, v13, 0x1

    iput v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 887
    iput v14, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 895
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 896
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 899
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 900
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 901
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 904
    :cond_3
    const/4 v7, 0x0

    .line 905
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_4

    .line 906
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 909
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 910
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_5

    .line 911
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 914
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 883
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 914
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 918
    .end local v5    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v10    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1874
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1925
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected abstract sendNewSubmitPduExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#yaoyuan@CommSrv.Telephony.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v13, 0x0

    .line 950
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 951
    .local v3, "map":Ljava/util/HashMap;
    const-string v10, "pdu"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v6, v10

    check-cast v6, [B

    .line 953
    .local v6, "pdu":[B
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 954
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    iget-boolean v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v10, :cond_2

    .line 955
    if-eqz v8, :cond_0

    .line 957
    const/4 v10, 0x4

    :try_start_0
    invoke-virtual {v8, v10}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_4

    .line 960
    :cond_0
    :goto_0
    const-string v10, "SMSDispatcher"

    const-string v11, "Device does not support sending sms."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_1
    :goto_1
    return-void

    .line 964
    :cond_2
    if-nez v6, :cond_3

    .line 965
    if-eqz v8, :cond_1

    .line 967
    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {v8, v10}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 968
    :catch_0
    move-exception v10

    goto :goto_1

    .line 974
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 975
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 977
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v10, v5

    if-nez v10, :cond_5

    .line 979
    :cond_4
    const-string v10, "SMSDispatcher"

    const-string v11, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    if-eqz v8, :cond_1

    .line 982
    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {v8, v10}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 983
    :catch_1
    move-exception v2

    .line 984
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v10, "SMSDispatcher"

    const-string v11, "failed to send error result"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 996
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 997
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 998
    aput-object v4, v5, v13

    .line 1000
    :cond_6
    const-string v10, "SMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRawPdu and get the package name via process id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v10, 0x0

    :try_start_3
    aget-object v10, v5, v10

    const/16 v11, 0x40

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1023
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1033
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .line 1036
    .local v9, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v10

    if-nez v10, :cond_7

    if-eqz v9, :cond_7

    .line 1037
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 1008
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "ss":I
    :catch_2
    move-exception v1

    .line 1009
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "SMSDispatcher"

    const-string v11, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    if-eqz v8, :cond_1

    .line 1012
    const/4 v10, 0x1

    :try_start_4
    invoke-virtual {v8, v10}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1013
    :catch_3
    move-exception v2

    .line 1014
    .restart local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v10, "SMSDispatcher"

    const-string v11, "failed to send error result"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1039
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "ss":I
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 958
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageNames":[Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "ss":I
    :catch_4
    move-exception v10

    goto/16 :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Retry failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1723
    return-void
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1842
    return-void
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1898
    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1286
    return-void
.end method

.method protected setSmsMemoryStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 1799
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-eq p1, v0, :cond_0

    .line 1800
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1803
    :cond_0
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 346
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 347
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active phone changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method
