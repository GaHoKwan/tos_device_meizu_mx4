.class public Lcom/android/server/pm/WhitelistPackagesSettings;
.super Ljava/lang/Object;
.source "WhitelistPackagesSettings.java"


# static fields
.field private static final DEBUG_MU:Z = true

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_POWER_SAVING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WhiteListPackagesSettings"


# instance fields
.field final mAllowPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPowerSavingModePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mAllowPackages:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0}, Lcom/android/server/pm/WhitelistPackagesSettings;->initPowerSavingModeList()V

    .line 23
    return-void
.end method

.method private allowPowerSavingPackages()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mAllowPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "p":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initPowerSavingModeList()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.meizu.powersave"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.android.providers.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.meizu.safe"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.android.alarmclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mPowerSavingModePackages:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method isPackageAllowed(Ljava/lang/String;Landroid/content/pm/ComponentInfo;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentInfo"    # Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    if-nez p1, :cond_0

    move v0, v2

    .line 68
    .local v0, "noPkg":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 70
    .local v1, "pkgName":Ljava/lang/String;
    :goto_1
    const-string v4, "WhiteListPackagesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageAllowed - packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " componentName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mAllowPackages:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    :goto_2
    return v2

    .end local v0    # "noPkg":Z
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 67
    goto :goto_0

    .restart local v0    # "noPkg":Z
    :cond_1
    move-object v1, p1

    .line 68
    goto :goto_1

    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 78
    goto :goto_2
.end method

.method public setWhitelistMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/WhitelistPackagesSettings;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/WhitelistPackagesSettings;->allowPowerSavingPackages()V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
