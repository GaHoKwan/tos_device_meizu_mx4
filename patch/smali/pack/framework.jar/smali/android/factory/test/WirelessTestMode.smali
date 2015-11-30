.class public Landroid/factory/test/WirelessTestMode;
.super Ljava/lang/Object;
.source "WirelessTestMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WirelessTestMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native enterBluetoothTestModeNative()Z
.end method

.method private native enterWifiTestModeNative()Z
.end method

.method private native exitBluetoothTestModeNative()Z
.end method

.method private native exitWifiTestModeNative()Z
.end method


# virtual methods
.method public enterBluetoothTestMode()Z
    .locals 4

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 12
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WirelessTestMode;->enterBluetoothTestModeNative()Z

    move-result v0

    .line 14
    const-string v1, "WirelessTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterBluetoothTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v0
.end method

.method public enterWifiTestMode()Z
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WirelessTestMode;->enterWifiTestModeNative()Z

    move-result v0

    .line 34
    const-string v1, "WirelessTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterWifiTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v0
.end method

.method public exitBluetoothTestMode()Z
    .locals 4

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WirelessTestMode;->exitBluetoothTestModeNative()Z

    move-result v0

    .line 24
    const-string v1, "WirelessTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitBluetoothTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v0
.end method

.method public exitWifiTestMode()Z
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WirelessTestMode;->exitWifiTestModeNative()Z

    move-result v0

    .line 44
    const-string v1, "WirelessTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitWifiTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v0
.end method
