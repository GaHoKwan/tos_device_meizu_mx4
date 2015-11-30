.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$VERSION;
    }
.end annotation


# static fields
.field public static final BOARD:Ljava/lang/String;

.field public static final BOOTLOADER:Ljava/lang/String;

.field public static final BRAND:Ljava/lang/String;

.field public static final CPU_ABI:Ljava/lang/String;

.field public static final CPU_ABI2:Ljava/lang/String;

.field public static final CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

.field public static final DEVICE:Ljava/lang/String;

.field public static final DISPLAY:Ljava/lang/String;

.field public static final FINGERPRINT:Ljava/lang/String;

.field public static final HARDWARE:Ljava/lang/String;

.field public static final HAS_PERMANENTKEY:Ljava/lang/Boolean;

.field public static final HAS_SMARTBAR:Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to determine whether there is smartbar "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final HOST:Ljava/lang/String;

.field public static final ID:Ljava/lang/String;

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_M9:Ljava/lang/Boolean;

.field public static final IS_MX:Ljava/lang/Boolean;

.field public static final IS_MX2:Ljava/lang/Boolean;

.field public static final IS_MX3:Ljava/lang/Boolean;

.field public static final M030:Ljava/lang/String; = "M030"

.field public static final M031:Ljava/lang/String; = "M031"

.field public static final M032:Ljava/lang/String; = "M032"

.field public static final M040:Ljava/lang/String; = "M040"

.field public static final M045:Ljava/lang/String; = "M045"

.field public static final M046:Ljava/lang/String; = "M046"

.field public static final M065:Ljava/lang/String; = "M353"

.field public static final M9:Ljava/lang/String; = "M9"

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final PERMANENTKEY:Ljava/lang/String;

.field public static final PRODUCT:Ljava/lang/String;

.field public static final RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String;

.field public static final TAGS:Ljava/lang/String;

.field public static final TIME:J

.field public static final TYPE:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;

.field public static final YUNOS_CTA_SUPPORT:Z

.field private static sInternational:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    const-string/jumbo v2, "ro.build.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 32
    const-string/jumbo v2, "ro.build.display.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 35
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 38
    const-string/jumbo v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 40
    invoke-static {}, Landroid/os/Build;->isMX3()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_MX3:Ljava/lang/Boolean;

    .line 41
    invoke-static {}, Landroid/os/Build;->isMX2()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    .line 42
    invoke-static {}, Landroid/os/Build;->isMX()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    .line 43
    invoke-static {}, Landroid/os/Build;->isM9()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    .line 46
    const-string/jumbo v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 49
    const-string/jumbo v2, "ro.product.cpu.abi"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 52
    const-string/jumbo v2, "ro.product.cpu.abi2"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "ro.product.manufacturer"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 58
    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 61
    const-string/jumbo v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 64
    const-string/jumbo v2, "ro.bootloader"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 75
    const-string v2, "gsm.version.baseband"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 78
    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 81
    const-string/jumbo v2, "ro.serialno"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 83
    const-string/jumbo v2, "ro.meizu.permanentkey"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    .line 96
    const/4 v2, -0x1

    sput v2, Landroid/os/Build;->sInternational:I

    .line 107
    const-string/jumbo v2, "ro.meizu.has_smartbar"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HAS_SMARTBAR:Ljava/lang/String;

    .line 510
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 513
    const-string/jumbo v2, "ro.build.tags"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 516
    const-string/jumbo v2, "ro.build.fingerprint"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 519
    const-string/jumbo v2, "ro.build.date.utc"

    invoke-static {v2}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/os/Build;->TIME:J

    .line 520
    const-string/jumbo v2, "ro.build.user"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 521
    const-string/jumbo v2, "ro.build.host"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 523
    invoke-static {}, Landroid/os/Build;->hasPermanentKey()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    .line 529
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    .line 534
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 589
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 591
    :goto_0
    return-wide v1

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 549
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasPermanentKey()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 581
    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasSmartBar()Z
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to determine whether there is smartbar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 603
    sget-object v0, Landroid/os/Build;->HAS_SMARTBAR:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->HAS_SMARTBAR:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isM9()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 574
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "m9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 567
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX2()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 560
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX3()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 553
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized isProductInternational()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 611
    const-class v2, Landroid/os/Build;

    monitor-enter v2

    :try_start_0
    sget v3, Landroid/os/Build;->sInternational:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 612
    const-string/jumbo v3, "ro.product.locale.language"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ro.product.locale.region"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 614
    :cond_0
    const/4 v3, 0x1

    sput v3, Landroid/os/Build;->sInternational:I

    .line 619
    :cond_1
    :goto_0
    sget v3, Landroid/os/Build;->sInternational:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_3

    :goto_1
    monitor-exit v2

    return v0

    .line 616
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    sput v3, Landroid/os/Build;->sInternational:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    .line 619
    goto :goto_1
.end method

.method public static isShopDemoVersion()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method
