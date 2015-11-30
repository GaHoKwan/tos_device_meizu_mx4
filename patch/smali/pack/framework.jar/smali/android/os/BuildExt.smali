.class public Landroid/os/BuildExt;
.super Ljava/lang/Object;
.source "BuildExt.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "Information about the current build, extracted from system properties"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field public static final CHINAMOBILE_TEST:Ljava/lang/Boolean;

.field private static final COLOR_TYPE_PATH:Ljava/lang/String; = "/proc/lk_info/colortype"

.field public static final CTA:Ljava/lang/String;

.field public static final CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

.field public static final CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

.field public static final CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

.field private static final CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

.field public static final HAS_DRIVE_MODE:Ljava/lang/Boolean;

.field public static final HIDE_INFO:Ljava/lang/Boolean;

.field public static final IS_FLYMEROM:Ljava/lang/String;

.field public static final IS_M1:Ljava/lang/Boolean;

.field public static final IS_M1_NOTE:Ljava/lang/Boolean;

.field public static final IS_M71C:Ljava/lang/Boolean;

.field public static final IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

.field public static final IS_MX2:Ljava/lang/Boolean;

.field public static final IS_MX3:Ljava/lang/Boolean;

.field public static final IS_MX4:Ljava/lang/Boolean;

.field public static final IS_MX4_Pro:Ljava/lang/Boolean;

.field public static final IS_SHOPDEMO:Ljava/lang/Boolean;

.field public static final IS_TD_PLATFORM:Ljava/lang/Boolean;

.field public static final MZ_MODEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BuildExt"

.field private static mDeviceTpColor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 30
    const-string/jumbo v0, "ro.build.cta"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "ro.meizu.rom.config"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_FLYMEROM:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "td-scdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    .line 37
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    .line 38
    invoke-static {}, Landroid/os/BuildExt;->isChinaUnicom()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    .line 39
    invoke-static {}, Landroid/os/BuildExt;->isChinaMobile()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    .line 40
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mobilepublic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

    .line 42
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "chinatelecom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    .line 44
    const-string/jumbo v0, "ro.chinamobile.test"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CHINAMOBILE_TEST:Ljava/lang/Boolean;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BuildExt;->mDeviceTpColor:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m75"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M460A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mx4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "k95v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    .line 58
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m76"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "espresso5430"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "exynos5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ro.arch"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "exynos5430"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    .line 65
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m71"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m1 note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "k52v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    .line 70
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m79"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "k32v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    .line 75
    const-string/jumbo v0, "ro.build.device.name"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "m71c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M71C:Ljava/lang/Boolean;

    .line 78
    const-string/jumbo v0, "ro.meizu.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->MZ_MODEL:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mx3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    .line 80
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    .line 81
    const-string/jumbo v0, "ro.meizu.customize.demo"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->HAS_DRIVE_MODE:Ljava/lang/Boolean;

    .line 86
    const-string/jumbo v0, "ro.flyme.hideinfo"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->HIDE_INFO:Ljava/lang/Boolean;

    return-void

    :cond_5
    move v0, v1

    .line 54
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 58
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 65
    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightnessMaxLevel()I
    .locals 1

    .prologue
    .line 244
    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    const/16 v0, 0x7f8

    .line 250
    :goto_0
    return v0

    .line 246
    :cond_1
    sget-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    :cond_2
    const/16 v0, 0x800

    goto :goto_0

    .line 250
    :cond_3
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public static getColorType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 267
    new-instance v1, Ljava/io/File;

    const-string v5, "/proc/lk_info/colortype"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 270
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 272
    .local v4, "tempString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 273
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    .line 279
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 275
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 279
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    const-string/jumbo v5, "unknown"

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEseSmartMX(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smartmx_ese"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNFC()Z
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "ro.meizu.hardware.nfc"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlackDevice()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 229
    sget-object v1, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    sget-object v1, Landroid/os/BuildExt;->mDeviceTpColor:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 233
    const-string/jumbo v1, "sys/devices/mx_tsp/appid"

    invoke-static {v1}, Landroid/os/BuildExt;->readFromFb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BuildExt;->mDeviceTpColor:Ljava/lang/String;

    .line 235
    :cond_2
    sget-object v1, Landroid/os/BuildExt;->mDeviceTpColor:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/BuildExt;->mDeviceTpColor:Ljava/lang/String;

    const-string v2, "B:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/BuildExt;->mDeviceTpColor:Ljava/lang/String;

    const-string v2, "BS:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBrcm43341()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "brcm43341"

    const-string/jumbo v1, "ro.nfc.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChinaMobile()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinamobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isChinaUnicom()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinaunicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFlymeRom()Z
    .locals 2

    .prologue
    .line 108
    sget-object v0, Landroid/os/BuildExt;->IS_FLYMEROM:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_FLYMEROM:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLtgModem()Z
    .locals 2

    .prologue
    .line 173
    const-string v0, "TD"

    const-string/jumbo v1, "sys.baseband"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLwgModem()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "UMTS"

    const-string/jumbo v1, "sys.baseband"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMzProduct()Z
    .locals 1

    .prologue
    .line 253
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNxpPn547()Z
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "nxppn547"

    const-string/jumbo v1, "ro.nfc.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProductInternational()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    :try_start_0
    const-string/jumbo v2, "ro.product.locale.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.product.locale.region"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v1

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static readFromFb(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "deviceNode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "fin":Ljava/io/FileInputStream;
    const/16 v7, 0x80

    new-array v3, v7, [B

    .line 203
    .local v3, "inOutb":[B
    const/4 v4, 0x0

    .line 205
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 207
    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :try_start_2
    const-string v7, "BuildExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat sys/devices/mx_tsp/appid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 215
    if-eqz v2, :cond_0

    .line 217
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .line 224
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 219
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 224
    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v7, "BuildExt"

    const-string/jumbo v8, "readFromFb error: "

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    if-eqz v1, :cond_1

    .line 217
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v5, v4

    .line 218
    goto :goto_0

    .line 219
    :catch_2
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move-object v5, v6

    .line 224
    goto :goto_0

    .line 212
    :catch_3
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v7, "BuildExt"

    const-string/jumbo v8, "readFromFb error: "

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    if-eqz v1, :cond_2

    .line 217
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v5, v4

    .line 218
    goto :goto_0

    .line 219
    :catch_4
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    move-object v5, v6

    .line 224
    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_3

    .line 217
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v5, v4

    .line 218
    goto :goto_0

    .line 219
    :catch_5
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move-object v5, v6

    .line 224
    goto :goto_0

    .line 215
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 212
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 210
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static setEseSmartMX(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smartmx_ese"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
