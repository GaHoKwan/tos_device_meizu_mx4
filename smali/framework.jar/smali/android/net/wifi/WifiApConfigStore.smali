.class Landroid/net/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConfigStore$ActiveState;,
        Landroid/net/wifi/WifiApConfigStore$InactiveState;,
        Landroid/net/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 75
    const-string v0, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 67
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$DefaultState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 68
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$InactiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 69
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$ActiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 72
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 77
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 79
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 82
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiApConfigStore;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiApConfigStore;->getSubStrOfString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private getSubStrOfString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "low":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 277
    .local v0, "high":I
    const/4 v2, 0x0

    .line 278
    .local v2, "mid":I
    const/4 v3, 0x0

    .line 279
    .local v3, "subLen":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, p2, :cond_3

    .line 280
    :cond_0
    :goto_0
    if-gt v1, v0, :cond_2

    .line 281
    add-int v4, v1, v0

    div-int/lit8 v2, v4, 0x2

    .line 282
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v3, v4

    .line 283
    if-ge v3, p2, :cond_1

    .line 284
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 285
    :cond_1
    if-le v3, p2, :cond_2

    .line 286
    add-int/lit8 v0, v2, -0x1

    .line 287
    if-le v1, v0, :cond_0

    .line 288
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 296
    .end local p1    # "str":Ljava/lang/String;
    :cond_3
    return-object p1
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 86
    new-instance v0, Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 87
    .local v0, "s":Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Landroid/net/wifi/WifiApConfigStore;->start()V

    .line 88
    return-object v0
.end method

.method private setDefaultApConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 258
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "meizu_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 262
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 264
    :cond_0
    if-nez v1, :cond_1

    .line 265
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v3, 0x1040437

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_1
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 268
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 269
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 271
    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 272
    return-void
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x1

    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v7, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 213
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    if-eqz v0, :cond_0

    .line 215
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 219
    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    if-eqz v3, :cond_1

    .line 225
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v2, v3

    .line 229
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 219
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 220
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v2, :cond_2

    .line 225
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 226
    :catch_1
    move-exception v4

    goto :goto_2

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 225
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 223
    :cond_4
    :goto_5
    throw v4

    .line 226
    :catch_2
    move-exception v5

    goto :goto_5

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .line 223
    .end local v0    # "authType":I
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 220
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_3
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method loadApConfiguration()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 166
    const/4 v4, 0x0

    .line 168
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 169
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v10, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 173
    .local v6, "version":I
    if-eq v6, v7, :cond_2

    .line 174
    const-string v7, "WifiApConfigStore"

    const-string v8, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    if-eqz v5, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v4, v5

    .line 198
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 178
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 179
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 180
    .local v0, "authType":I
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->set(I)V

    .line 181
    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 184
    :cond_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 185
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    .line 186
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 187
    .local v2, "hidden":I
    if-ne v2, v7, :cond_5

    :goto_2
    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 188
    iput-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    if-eqz v5, :cond_4

    .line 194
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_3
    move-object v4, v5

    .line 197
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 187
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 189
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "hidden":I
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v3

    .line 190
    .local v3, "ignore":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v4, :cond_1

    .line 194
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 195
    :catch_1
    move-exception v7

    goto :goto_1

    .line 192
    .end local v3    # "ignore":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_6

    .line 194
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 192
    :cond_6
    :goto_6
    throw v7

    .line 195
    :catch_2
    move-exception v8

    goto :goto_6

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :catch_3
    move-exception v7

    goto :goto_0

    .restart local v0    # "authType":I
    .restart local v2    # "hidden":I
    :catch_4
    move-exception v7

    goto :goto_3

    .line 192
    .end local v0    # "authType":I
    .end local v2    # "hidden":I
    .end local v6    # "version":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_5

    .line 189
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_4
.end method
