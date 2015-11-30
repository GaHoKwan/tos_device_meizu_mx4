.class Landroid/app/Instrumentation$Injector;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleActivityNotFoundInLimitMode(Ljava/lang/Object;Z)V
    .locals 15
    .param p0, "intent"    # Ljava/lang/Object;
    .param p1, "startChoose"    # Z

    .prologue
    .line 1915
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1917
    .local v9, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 1918
    .local v6, "isGuestMode":Z
    const/4 v7, 0x0

    .line 1919
    .local v7, "isPowerSavingMode":Z
    if-eqz v9, :cond_0

    .line 1921
    :try_start_0
    invoke-interface {v9}, Landroid/content/pm/IPackageManager;->isGuestMode()Z

    move-result v6

    .line 1922
    invoke-interface {v9}, Landroid/content/pm/IPackageManager;->isPowerSavingMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1927
    :cond_0
    :goto_0
    instance-of v12, p0, Landroid/content/Intent;

    if-eqz v12, :cond_6

    move-object v12, p0

    check-cast v12, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 1928
    const/4 v5, 0x0

    .line 1929
    .local v5, "hide":Z
    const/4 v1, 0x0

    .line 1930
    .local v1, "allow":Z
    const-string v8, ""

    .line 1931
    .local v8, "lable":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1933
    :try_start_1
    move-object v0, p0

    check-cast v0, Landroid/content/Intent;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v9, v12, v13}, Landroid/content/pm/IPackageManager;->getComponentGuestSetting(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 1936
    move-object v0, p0

    check-cast v0, Landroid/content/Intent;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/pm/IPackageManager;->isPackageInWhitelist(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1937
    move-object v0, p0

    check-cast v0, Landroid/content/Intent;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-interface {v9, v12, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1942
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 1943
    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1950
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    :cond_2
    if-nez v1, :cond_5

    if-eqz v7, :cond_5

    .line 1951
    :cond_3
    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_4

    if-nez p1, :cond_4

    .line 1952
    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1953
    new-instance v4, Landroid/os/Handler;

    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1954
    .local v4, "handler":Landroid/os/Handler;
    move-object v10, v8

    .line 1955
    .local v10, "tlable":Ljava/lang/String;
    new-instance v11, Landroid/app/Instrumentation$Injector$1;

    invoke-direct {v11, v10}, Landroid/app/Instrumentation$Injector$1;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v11, "toast":Ljava/lang/Runnable;
    invoke-virtual {v4, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1993
    .end local v1    # "allow":Z
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "hide":Z
    .end local v8    # "lable":Ljava/lang/String;
    .end local v10    # "tlable":Ljava/lang/String;
    .end local v11    # "toast":Ljava/lang/Runnable;
    :cond_4
    :goto_2
    return-void

    .line 1923
    :catch_0
    move-exception v3

    .line 1924
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1970
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "allow":Z
    .restart local v5    # "hide":Z
    .restart local v8    # "lable":Ljava/lang/String;
    :cond_5
    new-instance v12, Landroid/content/ActivityNotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to find explicit activity class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    check-cast p0, Landroid/content/Intent;

    .end local p0    # "intent":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1977
    .end local v1    # "allow":Z
    .end local v5    # "hide":Z
    .end local v8    # "lable":Ljava/lang/String;
    .restart local p0    # "intent":Ljava/lang/Object;
    :cond_6
    if-nez v6, :cond_7

    if-eqz v7, :cond_8

    .line 1979
    :cond_7
    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_4

    if-nez p1, :cond_4

    .line 1980
    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1981
    new-instance v4, Landroid/os/Handler;

    # getter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/Instrumentation;->access$400()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1982
    .restart local v4    # "handler":Landroid/os/Handler;
    new-instance v11, Landroid/app/Instrumentation$Injector$2;

    invoke-direct {v11}, Landroid/app/Instrumentation$Injector$2;-><init>()V

    .line 1990
    .restart local v11    # "toast":Ljava/lang/Runnable;
    invoke-virtual {v4, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1995
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v11    # "toast":Ljava/lang/Runnable;
    :cond_8
    new-instance v12, Landroid/content/ActivityNotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No Activity found to handle "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1946
    .restart local v1    # "allow":Z
    .restart local v5    # "hide":Z
    .restart local v8    # "lable":Ljava/lang/String;
    :catch_1
    move-exception v12

    goto/16 :goto_1
.end method

.method static initContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "who"    # Landroid/content/Context;

    .prologue
    .line 1904
    if-eqz p0, :cond_0

    .line 1905
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1906
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # setter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/Instrumentation;->access$402(Landroid/content/Context;)Landroid/content/Context;

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    # setter for: Landroid/app/Instrumentation;->mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/app/Instrumentation;->access$402(Landroid/content/Context;)Landroid/content/Context;

    goto :goto_0
.end method
