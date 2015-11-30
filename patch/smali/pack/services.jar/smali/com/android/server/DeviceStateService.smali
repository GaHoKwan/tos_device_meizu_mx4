.class public Lcom/android/server/DeviceStateService;
.super Landroid/os/IDeviceStateService$Stub;
.source "DeviceStateService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "dzh@SHELL.FindPhone.Feature add interfaces for remote find-phone"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final VOLD_TAG:Ljava/lang/String; = "DeviceStateService"

.field public static final resultStatus:I = 0x2bd


# instance fields
.field private mConnected:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/IDeviceStateService$Stub;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    .line 57
    iput-object p1, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "DeviceStateService"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/DeviceStateService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 65
    new-instance v6, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DeviceStateService"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 66
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method private native nativeDoCheckState(I)I
.end method

.method private native nativeDoCommand(I[B)I
.end method

.method private native nativeDoGetInitNo(I[B)I
.end method


# virtual methods
.method public doCheckState(I)I
    .locals 9
    .param p1, "handle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v4, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-boolean v4, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    if-nez v4, :cond_1

    .line 98
    const/4 v2, -0x1

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    const-string v4, "DeviceStateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCheckState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceStateService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "nvramio"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "doCheckState"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v4, "DeviceStateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCheckState: handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", [msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bd

    if-ne v4, v5, :cond_2

    .line 111
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 114
    goto :goto_0

    .line 104
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceStateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex doCheckState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, -0x2

    goto/16 :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2
    const/4 v2, -0x3

    goto/16 :goto_0
.end method

.method public doCommand(I[B)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "rsaData"    # [B

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v4, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v4, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    if-nez v4, :cond_1

    .line 74
    const/4 v3, -0x1

    .line 91
    :cond_0
    :goto_0
    return v3

    .line 76
    :cond_1
    array-length v4, p2

    invoke-static {p2, v3, v4, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "encode":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceStateService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "nvramio"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "doCommand"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v4, "DeviceStateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCommand: handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", [msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bd

    if-ne v4, v5, :cond_2

    .line 87
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    :cond_2
    const/4 v3, -0x3

    goto :goto_0

    .line 80
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeviceStateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex doCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public doGetInitNo(I[B)I
    .locals 13
    .param p1, "handle"    # I
    .param p2, "inData"    # [B

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 122
    iget-boolean v6, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    if-nez v6, :cond_0

    .line 123
    const/4 v5, -0x1

    .line 142
    :goto_0
    return v5

    .line 127
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/DeviceStateService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "nvramio"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "doGetInitNo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v3, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "ret":Ljava/lang/String;
    const-string v6, "DeviceStateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after doGetInitNo: handle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", [msg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v6

    const/16 v7, 0x2bd

    if-ne v6, v7, :cond_1

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-static {v6, v12, v7, v5}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v1

    .line 139
    .local v1, "encode":[B
    const/16 v6, 0x14

    invoke-static {v1, v5, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 128
    .end local v1    # "encode":[B
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DeviceStateService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ex doCheckState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, -0x2

    goto/16 :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x3

    goto/16 :goto_0
.end method

.method public getActivateStats()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    const/4 v2, 0x7

    new-array v0, v2, [I

    .line 171
    .local v0, "data":[I
    const/4 v2, 0x5

    invoke-static {v2, v0}, Landroid/os/MeizuDeviceControl;->readCfgParam(I[I)I

    move-result v2

    if-lez v2, :cond_0

    .line 172
    aget v1, v0, v1

    .line 174
    :cond_0
    return v1
.end method

.method public lockRecoveryUnchecked()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v3, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-boolean v3, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    if-nez v3, :cond_1

    .line 149
    const/4 v2, -0x1

    .line 164
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceStateService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "nvramio"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "lockRecoveryUnchecked"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0x2bd

    if-ne v3, v4, :cond_2

    .line 160
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    :cond_2
    const/4 v2, -0x3

    goto :goto_0

    .line 155
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceStateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex lockRecoveryUnchecked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    .line 194
    const-string v0, "DeviceStateService"

    const-string v1, "Ahahaha!onDaemonConnected "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public setActivateStats(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 181
    const/4 v2, 0x7

    new-array v0, v2, [I

    .line 182
    .local v0, "data":[I
    aput p1, v0, v1

    .line 183
    const/4 v2, 0x5

    invoke-static {v2, v0}, Landroid/os/MeizuDeviceControl;->writeCfgParam(I[I)I

    move-result v2

    if-lez v2, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 186
    :cond_0
    return v1
.end method
