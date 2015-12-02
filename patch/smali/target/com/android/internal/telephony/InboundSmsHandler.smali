.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field private static final FIND_PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.flyme.service.find"
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Support find phone service : package name"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final HIDE_NUMBER_URI:Ljava/lang/String; = "content://com.meizu.cloud.provider.CenterNumberProvider/HiddenNumber"
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "check sms whether need hide number for internal application"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field static final ID_COLUMN:I = 0x7

.field protected static final INTENT_KEY_FOR_PACKAGENAME:Ljava/lang/String; = "packageName"
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Key for package name"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected static final JSON_PACKAGENAME_KEY:Ljava/lang/String; = "p"
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Json key for parse package name"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ADDRESS:Ljava/lang/String; = "address=?"

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static commandPattern:Ljava/util/regex/Pattern;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Pattern for remove meizu signature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field private final SMS_BLOCKED_BY_SECURITY_ACTION:Ljava/lang/String;

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

.field protected final mContext:Landroid/content/Context;

.field protected mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field protected mHideNumberArray:Ljava/util/List;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Hide numer array"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideNumberObserver:Landroid/database/ContentObserver;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Observe hide number DB change"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mMomsReceiver:Landroid/content/BroadcastReceiver;

.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

.field protected mRawLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;

.field protected mSimId:I

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field public mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 183
    const-string v0, "((\\[.*\\])|(\u3010.*\u3011))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->commandPattern:Ljava/util/regex/Pattern;

    .line 210
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    .line 222
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 225
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 228
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 231
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 234
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 250
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    .line 253
    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    .line 256
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    .line 259
    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    .line 262
    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 265
    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    .line 268
    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 274
    const-string v7, "SMS_BLOCKED_BY_SECURITY_ACTION"

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->SMS_BLOCKED_BY_SECURITY_ACTION:Ljava/lang/String;

    .line 1186
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$1;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberObserver:Landroid/database/ContentObserver;

    .line 1643
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$2;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler$2;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 288
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 289
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 290
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 291
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 292
    new-instance v7, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v7, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 294
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111003a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 296
    .local v4, "smsCapable":Z
    const-string v7, "telephony.sms.receive"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 299
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 300
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3, v6, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 301
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 303
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 304
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 305
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 306
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 307
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 310
    const-string v5, "created InboundSmsHandler"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    .line 315
    const-string v5, "[DM initialize DM xml"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/DMOperatorFile;->getInstance()Lcom/android/internal/telephony/DMOperatorFile;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    .line 317
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DMOperatorFile;->initFromRes(Landroid/content/Context;)V

    .line 318
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DMOperatorFile;->dump()V

    .line 322
    :try_start_0
    const-class v5, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    .line 326
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "actualClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initial IConcatenatedSmsFwkExt done, actual class name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v5, :cond_1

    .line 339
    const-string v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 345
    :cond_1
    :try_start_1
    const-class v5, Lcom/mediatek/common/ppl/IPplSmsFilter;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/ppl/IPplSmsFilter;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    .line 346
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    if-eqz v5, :cond_3

    .line 347
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 348
    .restart local v0    # "actualClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initial mPplSmsFilter done, actual class name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    :try_start_2
    const-class v5, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 366
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v5, :cond_4

    .line 367
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .restart local v0    # "actualClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 380
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "content://com.meizu.cloud.provider.CenterNumberProvider/HiddenNumber"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 385
    :goto_3
    return-void

    .line 330
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :try_start_4
    const-string v5, "FAIL! intial mConcatenatedSmsFwkExt"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "FAIL! No IConcatenatedSmsFwkExt"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_5
    const-string v5, "FAIL! intial mPplSmsFilter"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 352
    :catch_1
    move-exception v1

    .line 353
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v5, "FAIL! No IPplSmsFilter"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 370
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :cond_4
    :try_start_6
    const-string v5, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 372
    :catch_2
    move-exception v1

    .line 373
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v5, "FAIL! No IOnlyOwnerSimSupport"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 381
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "InboundSmsHandler -> Can not registerContentObserver"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->updateHideNumber()V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 26
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1313
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 1315
    const/4 v9, 0x0

    .line 1318
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v22

    .line 1321
    .local v22, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1322
    .local v7, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 1323
    .local v18, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 1325
    .local v8, "count":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 1327
    .local v21, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1336
    .local v23, "simId":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v10, v1

    const/4 v1, 0x1

    aput-object v18, v10, v1

    const/4 v1, 0x2

    aput-object v8, v10, v1

    .line 1339
    .local v10, "deleteWhereArgs":[Ljava/lang/String;
    const-string v1, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v4, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v18, v5, v6

    const/4 v6, 0x2

    aput-object v8, v5, v6

    const/4 v6, 0x3

    aput-object v21, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1355
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seqNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1358
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1359
    .local v15, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v16

    .line 1360
    .local v16, "pdu":[B
    invoke-static {v15}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 1361
    .local v14, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v1

    invoke-static {v14, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: dup message segment PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different from existing PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1365
    :cond_0
    const/4 v1, 0x5

    .line 1372
    if-eqz v9, :cond_1

    .line 1373
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1365
    :cond_1
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1414
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v14    # "oldPdu":[B
    .end local v15    # "oldPduString":Ljava/lang/String;
    .end local v16    # "pdu":[B
    .end local v18    # "refNumber":Ljava/lang/String;
    .end local v21    # "seqNumber":Ljava/lang/String;
    .end local v22    # "sequence":I
    .end local v23    # "simId":Ljava/lang/String;
    :goto_0
    return v1

    .line 1367
    .restart local v7    # "address":Ljava/lang/String;
    .restart local v8    # "count":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v18    # "refNumber":Ljava/lang/String;
    .restart local v21    # "seqNumber":Ljava/lang/String;
    .restart local v22    # "sequence":I
    .restart local v23    # "simId":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1372
    if-eqz v9, :cond_3

    .line 1373
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1378
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v18    # "refNumber":Ljava/lang/String;
    .end local v21    # "seqNumber":Ljava/lang/String;
    .end local v22    # "sequence":I
    .end local v23    # "simId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 1381
    .local v24, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 1382
    .local v13, "newUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI of new row -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1387
    const/4 v12, 0x0

    .line 1388
    .local v12, "isFirstSegment":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->isFirstConcatenatedSegment(Ljava/lang/String;I)Z

    move-result v12

    .line 1394
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    if-ne v12, v1, :cond_6

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConcatenatedSmsFwkExt: the first segment, ref = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1396
    const-string v1, "ConcatenatedSmsFwkExt: start a new timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1397
    new-instance v17, Lcom/mediatek/common/sms/TimerRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/common/sms/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1398
    .local v17, "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v17, :cond_5

    .line 1399
    const-string v1, "ConcatenatedSmsFwkExt: fail to new TimerRecord to start timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1401
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1406
    .end local v17    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_6
    :try_start_5
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 1407
    .local v19, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1409
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1411
    :cond_7
    const/4 v1, 0x1

    :try_start_6
    monitor-exit v25

    goto/16 :goto_0

    .line 1416
    .end local v12    # "isFirstSegment":Z
    .end local v13    # "newUri":Landroid/net/Uri;
    .end local v19    # "rowId":J
    .end local v24    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 1368
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1369
    .local v11, "e":Landroid/database/SQLException;
    :try_start_7
    const-string v1, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1370
    const/4 v1, 0x2

    .line 1372
    if-eqz v9, :cond_8

    .line 1373
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1370
    :cond_8
    monitor-exit v25

    goto/16 :goto_0

    .line 1372
    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_9

    .line 1373
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1372
    :cond_9
    throw v1

    .line 1412
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "isFirstSegment":Z
    .restart local v13    # "newUri":Landroid/net/Uri;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 1413
    .local v11, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing URI for new row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1414
    const/4 v1, 0x2

    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private checkSmsFormatForInternalAp(Landroid/content/Intent;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 14
    .param p1, "smsIntent"    # Landroid/content/Intent;
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "check sms whether find phone message"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1152
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1154
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 1156
    .local v7, "msgs":[Landroid/telephony/SmsMessage;
    iget-object v12, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->updateHideNumber()V

    .line 1160
    :cond_0
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    .line 1161
    .local v11, "to":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1162
    .local v10, "sb":Ljava/lang/StringBuffer;
    move-object v0, v7

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 1163
    .local v5, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1166
    .end local v5    # "message":Landroid/telephony/SmsMessage;
    :cond_1
    const/4 v8, 0x0

    .local v8, "offset":I
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 1167
    iget-object v12, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1168
    .local v1, "hideNumber":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hideNumber : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1170
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1171
    .local v6, "msg":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1166
    .end local v6    # "msg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1175
    .restart local v6    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->parsePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1176
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1177
    const-string v12, "packageName"

    invoke-virtual {p1, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    const/4 v12, 0x1

    .line 1183
    .end local v1    # "hideNumber":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    :goto_2
    return v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1424
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1425
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "msgBody"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Parse package name from message body"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1245
    const/4 v4, 0x0

    .line 1246
    .local v4, "packageName":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->commandPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1247
    .local v2, "matcher":Ljava/util/regex/Matcher;
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, "noSignatureBody":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noSignatureBody : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1253
    const-string v5, "p"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1254
    const-string v5, "p"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1260
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "InboundSmsHandler -> parsePackageName exception"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateHideNumber()V
    .locals 9
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Update hide number from DB"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1203
    const/4 v6, 0x0

    .line 1205
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.meizu.cloud.provider.CenterNumberProvider/HiddenNumber"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1206
    if-eqz v6, :cond_5

    .line 1207
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1210
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1212
    .local v8, "number":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1223
    .end local v8    # "number":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1224
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "InboundSmsHandler -> updateHideNumber exception"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    if-eqz v6, :cond_1

    .line 1227
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1231
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 1216
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HideNumber array : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHideNumberArray:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1226
    :goto_2
    if-eqz v6, :cond_1

    goto :goto_1

    .line 1218
    :cond_3
    const-string v0, "HideNumber cursor\'s count is 0"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1226
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_4
    throw v0

    .line 1221
    :cond_5
    :try_start_3
    const-string v0, "HideNumber cursor is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method protected MomsPermissionCheck(Landroid/content/Intent;)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1674
    const-string v9, "[Moms] PermissionCheck"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1675
    const/4 v1, 0x0

    .line 1681
    .local v1, "checkResult":I
    if-nez v1, :cond_1

    .line 1682
    :try_start_0
    const-string v9, "[Moms] Phone privacy check start"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1684
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1685
    .local v7, "pplData":Landroid/os/Bundle;
    const-string v9, "pdus"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 1686
    .local v4, "messages":[Ljava/lang/Object;
    array-length v9, v4

    new-array v6, v9, [[B

    .line 1687
    .local v6, "pdus":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_0

    .line 1688
    aget-object v9, v4, v3

    check-cast v9, [B

    check-cast v9, [B

    aput-object v9, v6, v3

    .line 1687
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1691
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    const-string v9, "pdus"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1692
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    const-string v10, "format"

    const-string v9, "format"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    const-string v9, "simId"

    iget v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1694
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    const-string v9, "smsType"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1696
    const/4 v8, 0x0

    .line 1697
    .local v8, "pplResult":Z
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/common/ppl/IPplSmsFilter;

    invoke-interface {v9, v7}, Lcom/mediatek/common/ppl/IPplSmsFilter;->pplFilter(Landroid/os/Bundle;)Z

    move-result v8

    .line 1698
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Moms] Phone privacy check end, Need to filter(result) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1699
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1700
    const/4 v1, -0x1

    .line 1706
    .end local v3    # "i":I
    .end local v4    # "messages":[Ljava/lang/Object;
    .end local v6    # "pdus":[[B
    .end local v7    # "pplData":Landroid/os/Bundle;
    .end local v8    # "pplResult":Z
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Moms] getInterceptionEnabledSetting = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v10}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1707
    if-nez v1, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v9}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1709
    const/4 v1, -0x1

    .line 1710
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1711
    .local v5, "params":Landroid/os/Bundle;
    const-string v9, "intent"

    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1712
    const-string v9, "simId"

    iget v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-interface {v9, v10, v5, v11}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v1

    .line 1715
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Moms] dispatchPdus, checkResult="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .end local v5    # "params":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return v1

    .line 1719
    :catch_0
    move-exception v2

    .line 1720
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "[Moms] Suppressing notification faild!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 796
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 806
    :goto_0
    :sswitch_0
    return v0

    .line 798
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 796
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1289
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1290
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 1291
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1295
    :goto_0
    monitor-exit v2

    .line 1296
    return-void

    .line 1293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows from raw table."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    .end local v0    # "rows":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchConcateSmsParts(Lcom/mediatek/common/sms/TimerRecord;)Z
    .locals 14
    .param p1, "record"    # Lcom/mediatek/common/sms/TimerRecord;

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1568
    const/4 v9, 0x0

    .line 1570
    .local v9, "handled":Z
    const-string v2, "ConcatenatedSmsFwkExt: receive timeout message"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1571
    if-nez p1, :cond_0

    .line 1572
    const-string v1, "ConcatenatedSmsFwkExt: null TimerRecord in msg"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1636
    :goto_0
    return v4

    .line 1575
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: timer is expired, dispatch existed segments. refNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1579
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 1580
    .local v0, "smsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1581
    new-instance v12, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-direct {v12, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1583
    .local v12, "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1584
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)[[B

    move-result-object v11

    .line 1585
    .local v11, "pdus":[[B
    if-eqz v11, :cond_6

    array-length v1, v11

    if-lez v1, :cond_6

    .line 1586
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I

    move-result v8

    .line 1587
    .local v8, "flag":I
    const/4 v1, 0x2

    if-eq v8, v1, :cond_1

    if-ne v8, v13, :cond_5

    .line 1588
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->setUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 1590
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    .local v10, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 1594
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_2

    .line 1596
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1606
    :cond_2
    const-string v1, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1610
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1611
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const-string v1, "mediatek.Telephony.NORMALUSER_SMS_RECEIVED"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1614
    :cond_3
    const-string v1, "pdus"

    invoke-virtual {v10, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1615
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1616
    const-string v1, "format"

    const-string v3, "3gpp"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    :goto_1
    const-string v1, "upload_flag"

    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    invoke-virtual {p0, v10, v1, v3, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1624
    const/4 v9, 0x1

    .line 1632
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "flag":I
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: delete segment(s), ref = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1633
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->deleteExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 1634
    monitor-exit v2

    move v4, v9

    .line 1636
    goto/16 :goto_0

    .line 1618
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "flag":I
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v1, "format"

    const-string v3, "3gpp2"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1634
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "flag":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pdus":[[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1626
    .restart local v8    # "flag":I
    .restart local v11    # "pdus":[[B
    :cond_5
    :try_start_1
    const-string v1, "ConcatenatedSmsFwkExt: invalid upload flag"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1629
    .end local v8    # "flag":I
    :cond_6
    const-string v1, "ConcatenatedSmsFwkExt: no pdus to be dispatched"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method tos_org_dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 1273
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1275
    const-string v0, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1276
    const-string v0, "simId"

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1280
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 664
    if-nez p1, :cond_0

    .line 665
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x2

    .line 676
    :goto_0
    return v0

    .line 669
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 671
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 15
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = ""
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 757
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v14, :cond_0

    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v1, :cond_0

    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 761
    :cond_0
    const/4 v4, -0x1

    .line 762
    .local v4, "destPort":I
    if-eqz v14, :cond_1

    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destination port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 768
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 785
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v1

    return v1

    .line 772
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_2
    iget-object v12, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 773
    .local v12, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v13, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 774
    .local v13, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v13, :cond_3

    iget v4, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 778
    .restart local v4    # "destPort":I
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    iget v7, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v8, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZI)V

    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 774
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 392
    return-void
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 632
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 640
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 648
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 649
    if-ne v2, v1, :cond_2

    .line 650
    .local v1, "handled":Z
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 641
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_1

    .line 649
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 721
    if-nez p1, :cond_0

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 727
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 728
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 418
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 47
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = ""
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 822
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v31

    .line 824
    .local v31, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v23

    .line 826
    .local v23, "destPort":I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_0

    .line 828
    const/4 v3, 0x1

    new-array v12, v3, [[B

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v4

    aput-object v4, v12, v3

    .line 938
    .local v12, "pdus":[[B
    :goto_0
    new-instance v10, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 944
    .local v10, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_10

    .line 945
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .local v34, "number":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    .local v16, "body":Ljava/lang/StringBuilder;
    const-string v3, "SecureService check sms start "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 948
    array-length v3, v12

    new-array v0, v3, [Landroid/telephony/SmsMessage;

    move-object/from16 v32, v0

    .line 949
    .local v32, "messages":[Landroid/telephony/SmsMessage;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    array-length v3, v12

    move/from16 v0, v25

    if-ge v0, v3, :cond_d

    .line 950
    aget-object v3, v12, v25

    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    aput-object v3, v32, v25

    .line 949
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 833
    .end local v10    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v12    # "pdus":[[B
    .end local v16    # "body":Ljava/lang/StringBuilder;
    .end local v25    # "i":I
    .end local v32    # "messages":[Landroid/telephony/SmsMessage;
    .end local v34    # "number":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v9

    .line 836
    const/16 v21, 0x0

    .line 839
    .local v21, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 840
    .local v14, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    .line 841
    .local v39, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 843
    .local v19, "count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    .line 853
    .local v42, "simId":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v7, v3

    const/4 v3, 0x1

    aput-object v39, v7, v3

    const/4 v3, 0x2

    aput-object v19, v7, v3

    .line 858
    .local v7, "whereArgs":[Ljava/lang/String;
    const-string v6, "address=? AND reference_number=? AND count=?"

    .line 859
    .local v6, "where":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    if-nez v3, :cond_1

    .line 861
    const-string v6, "address=?"

    .line 862
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .end local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v7, v3

    .line 864
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 868
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 869
    .local v22, "cursorCount":I
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 878
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConcatenatedSmsFwkExt: refresh timer, ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v8

    invoke-interface {v3, v4, v5, v8}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v38

    .line 884
    .local v38, "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v38, :cond_4

    .line 885
    const-string v3, "ConcatenatedSmsFwkExt: fail to get TimerRecord to refresh timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 891
    .end local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 931
    if-eqz v21, :cond_3

    .line 932
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "address":Ljava/lang/String;
    .end local v19    # "count":Ljava/lang/String;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "cursorCount":I
    .end local v39    # "refNumber":Ljava/lang/String;
    .end local v42    # "simId":Ljava/lang/String;
    :goto_3
    return v3

    .line 887
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v14    # "address":Ljava/lang/String;
    .restart local v19    # "count":Ljava/lang/String;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "cursorCount":I
    .restart local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .restart local v39    # "refNumber":Ljava/lang/String;
    .restart local v42    # "simId":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-interface {v3, v4, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 927
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "address":Ljava/lang/String;
    .end local v19    # "count":Ljava/lang/String;
    .end local v22    # "cursorCount":I
    .end local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .end local v39    # "refNumber":Ljava/lang/String;
    .end local v42    # "simId":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 928
    .local v24, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v3, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 929
    const/4 v3, 0x0

    .line 931
    if-eqz v21, :cond_5

    .line 932
    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 929
    :cond_5
    monitor-exit v9

    goto :goto_3

    .line 935
    .end local v24    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 894
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v14    # "address":Ljava/lang/String;
    .restart local v19    # "count":Ljava/lang/String;
    .restart local v22    # "cursorCount":I
    .restart local v39    # "refNumber":Ljava/lang/String;
    .restart local v42    # "simId":Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConcatenatedSmsFwkExt: cancel timer, ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v8

    invoke-interface {v3, v4, v5, v8}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v38

    .line 901
    .restart local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v38, :cond_9

    .line 902
    const-string v3, "ConcatenatedSmsFwkExt: fail to get TimerRecord to cancel timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 909
    .end local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_7
    :goto_4
    move/from16 v0, v31

    new-array v12, v0, [[B

    .line 910
    .restart local v12    # "pdus":[[B
    :cond_8
    :goto_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 912
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    sub-int v28, v3, v4

    .line 914
    .local v28, "index":I
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v12, v28

    .line 918
    if-nez v28, :cond_8

    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 919
    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 921
    .local v37, "port":I
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v37

    .line 922
    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_8

    .line 923
    move/from16 v23, v37

    goto :goto_5

    .line 904
    .end local v12    # "pdus":[[B
    .end local v28    # "index":I
    .end local v37    # "port":I
    .restart local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-interface {v3, v4, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 931
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "address":Ljava/lang/String;
    .end local v19    # "count":Ljava/lang/String;
    .end local v22    # "cursorCount":I
    .end local v38    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .end local v39    # "refNumber":Ljava/lang/String;
    .end local v42    # "simId":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v21, :cond_a

    .line 932
    :try_start_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_a
    throw v3

    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v12    # "pdus":[[B
    .restart local v14    # "address":Ljava/lang/String;
    .restart local v19    # "count":Ljava/lang/String;
    .restart local v22    # "cursorCount":I
    .restart local v39    # "refNumber":Ljava/lang/String;
    .restart local v42    # "simId":Ljava/lang/String;
    :cond_b
    if-eqz v21, :cond_c

    .line 932
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_c
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 952
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "address":Ljava/lang/String;
    .end local v19    # "count":Ljava/lang/String;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "cursorCount":I
    .end local v39    # "refNumber":Ljava/lang/String;
    .end local v42    # "simId":Ljava/lang/String;
    .restart local v10    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v16    # "body":Ljava/lang/StringBuilder;
    .restart local v25    # "i":I
    .restart local v32    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v34    # "number":Ljava/lang/StringBuilder;
    :cond_d
    const/4 v3, 0x0

    aget-object v3, v32, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    move-object/from16 v15, v32

    .local v15, "arr$":[Landroid/telephony/SmsMessage;
    array-length v0, v15

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_6
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    aget-object v20, v15, v26

    .line 954
    .local v20, "currentMessage":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 957
    .end local v20    # "currentMessage":Landroid/telephony/SmsMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/aliyun/ams/secure/SecureManager;->get(Landroid/content/Context;)Lcom/aliyun/ams/secure/SecureManager;

    move-result-object v41

    .line 958
    .local v41, "secureMgr":Lcom/aliyun/ams/secure/SecureManager;
    if-eqz v41, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSimId:I

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4, v5, v8}, Lcom/aliyun/ams/secure/SecureManager;->blockSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 959
    const-string v3, "SecureSevice blocked the sms"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 961
    new-instance v27, Landroid/content/Intent;

    const-string v3, "SMS_BLOCKED_BY_SECURITY_ACTION"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v27, "in":Landroid/content/Intent;
    const/4 v3, 0x0

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 966
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 968
    .end local v27    # "in":Landroid/content/Intent;
    :cond_f
    const-string v3, "SecureService check sms end"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 973
    .end local v15    # "arr$":[Landroid/telephony/SmsMessage;
    .end local v16    # "body":Ljava/lang/StringBuilder;
    .end local v25    # "i":I
    .end local v26    # "i$":I
    .end local v30    # "len$":I
    .end local v32    # "messages":[Landroid/telephony/SmsMessage;
    .end local v34    # "number":Ljava/lang/StringBuilder;
    .end local v41    # "secureMgr":Lcom/aliyun/ams/secure/SecureManager;
    :cond_10
    const/16 v3, 0xb84

    move/from16 v0, v23

    if-ne v0, v3, :cond_14

    .line 975
    new-instance v35, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v35 .. v35}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 976
    .local v35, "output":Ljava/io/ByteArrayOutputStream;
    move-object v15, v12

    .local v15, "arr$":[[B
    array-length v0, v15

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    aget-object v36, v15, v26

    .line 978
    .local v36, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-nez v3, :cond_11

    .line 979
    const-string v3, "3gpp"

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v33

    .line 981
    .local v33, "msg":Landroid/telephony/SmsMessage;
    if-eqz v33, :cond_11

    .line 982
    invoke-virtual/range {v33 .. v33}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v36

    .line 986
    .end local v33    # "msg":Landroid/telephony/SmsMessage;
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, v36

    array-length v4, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 1017
    .end local v36    # "pdu":[B
    :cond_12
    const-string v3, "dispatch wap push pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v35 .. v35}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;)I

    move-result v40

    .line 1027
    .local v40, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchWapPdu() returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1029
    const/4 v3, -0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_13

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1033
    .end local v15    # "arr$":[[B
    .end local v26    # "i$":I
    .end local v30    # "len$":I
    .end local v35    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v40    # "result":I
    :cond_14
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_1c

    .line 1034
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v18

    .line 1039
    .local v18, "componentName":Landroid/content/ComponentName;
    if-eqz v18, :cond_15

    .line 1041
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1048
    :cond_15
    const/16 v45, 0x1

    .line 1050
    .local v45, "uploadFlag":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 1051
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v33

    .line 1052
    .restart local v33    # "msg":Landroid/telephony/SmsMessage;
    if-eqz v33, :cond_16

    .line 1053
    invoke-virtual/range {v33 .. v33}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v44

    .line 1054
    .local v44, "udh":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v44, :cond_16

    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v3, :cond_16

    .line 1055
    new-instance v43, Lcom/mediatek/common/sms/TimerRecord;

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move-object/from16 v0, v43

    invoke-direct {v0, v3, v4, v5}, Lcom/mediatek/common/sms/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1058
    .local v43, "tr":Lcom/mediatek/common/sms/TimerRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    move-object/from16 v0, v43

    invoke-interface {v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I

    move-result v45

    .line 1061
    .end local v43    # "tr":Lcom/mediatek/common/sms/TimerRecord;
    .end local v44    # "udh":Lcom/android/internal/telephony/SmsHeader;
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1063
    .end local v33    # "msg":Landroid/telephony/SmsMessage;
    :cond_17
    const/4 v3, 0x2

    move/from16 v0, v45

    if-ne v0, v3, :cond_18

    .line 1064
    const-string v3, "dispatch all pdus with upload flag"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1065
    const-string v3, "upload_flag"

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const-string v3, "mediatek.Telephony.NORMALUSER_SMS_RECEIVED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1113
    .end local v18    # "componentName":Landroid/content/ComponentName;
    .end local v45    # "uploadFlag":I
    :cond_19
    :goto_8
    const-string v3, "pdus"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1114
    const-string v3, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1119
    const-string v3, "start check sms format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->checkSmsFormatForInternalAp(Landroid/content/Intent;Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1121
    new-instance v17, Landroid/content/ComponentName;

    const-string v3, "com.meizu.flyme.service.find"

    const-string v4, "com.meizu.flyme.service.find.IncomingSmsMonitor"

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .local v17, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1124
    const-string v3, "find phone message."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1126
    .end local v17    # "component":Landroid/content/ComponentName;
    :cond_1a
    const-string v3, "end check sms format.handled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1130
    :cond_1b
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1132
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1092
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/DMOperatorFile;->searchMatchOp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1093
    const-string v3, "we receive a DM register SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1094
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.DM_REGISTER_SMS_RECEIVED"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .restart local v29    # "intent":Landroid/content/Intent;
    const-string v3, "pdus"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1096
    const-string v3, "android.permission.RECEIVE_DM_REGISTER_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1097
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1098
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_1d
    const/16 v3, 0x1f59

    move/from16 v0, v23

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x1c6b

    move/from16 v0, v23

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x1c6c

    move/from16 v0, v23

    if-ne v0, v3, :cond_1f

    .line 1099
    :cond_1e
    const-string v3, "=========== Send SMS For A-GPS SUPL NI ========"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 1101
    .local v46, "uri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1102
    .restart local v29    # "intent":Landroid/content/Intent;
    const-string v3, "pdus"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1103
    const-string v3, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    const/4 v3, 0x0

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1105
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1109
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v46    # "uri":Landroid/net/Uri;
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 1110
    .restart local v46    # "uri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v29    # "intent":Landroid/content/Intent;
    goto/16 :goto_8
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 398
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 399
    return-void
.end method

.method dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: ContactsSecurity part::tamrylei::2015-05-26"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 721
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 722
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 723
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 724
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 725
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 726
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 727
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 728
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 729
    const-string v1, "com.android.internal.telephony.InboundSmsHandler#dispatchIntent"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 730
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->tos_org_dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
