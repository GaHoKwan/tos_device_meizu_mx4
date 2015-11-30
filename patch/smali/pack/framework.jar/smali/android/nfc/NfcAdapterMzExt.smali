.class public Landroid/nfc/NfcAdapterMzExt;
.super Ljava/lang/Object;
.source "NfcAdapterMzExt.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "cdd@meizu.com feature#86884"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field public static final ALL_SE_ID:Ljava/lang/String; = "com.nxp.all_se.ID"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field public static final EXTRA_NDEF_URI:Ljava/lang/String; = "android.nfc.extra.NDEF_URI"

.field public static final HOST_ID:Ljava/lang/String; = "com.nxp.host.ID"

.field public static final HOST_ID_TYPE:I = 0x0

.field private static IS_BRCM_43341:Z = false

.field private static IS_NXP_PN547:Z = false

.field public static final MZ_ACTION_MZ_NFC_P2P_STATE_CHANGED:Ljava/lang/String; = "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

.field public static final MZ_ACTION_NFC_SHARE_STATE_CHANGED:Ljava/lang/String; = "mz.android.nfc.action.MZ_ACTION_NFC_SHARE_STATE_CHANGED"

.field public static final MZ_EXTRA_MZ_NFC_P2P_STATE:Ljava/lang/String; = "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

.field public static final MZ_EXTRA_MZ_NFC_SHARE_STATE:Ljava/lang/String; = "mz.android.nfc.extra.MZ_EXTRA_MZ_NFC_SHARE_STATE"

.field public static final MZ_NFC_P2P_STATE_OFF:I = 0x0

.field public static final MZ_NFC_P2P_STATE_ON:I = 0x1

.field public static final NONE_SE_ID:Ljava/lang/String; = "com.nxp.none_se.ID"

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field public static final UICC_ID_TYPE:I = 0x2

.field private static mInstance:Landroid/nfc/NfcAdapterMzExt;

.field private static sNxpExtService:Landroid/nfc/INfcAdapterNxpExt1;

.field private static sNxpExtService2:Landroid/nfc/INfcAdapterNxpExt2;

.field private static sService:Landroid/nfc/INfcAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-class v0, Landroid/nfc/NfcAdapterMzExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    .line 163
    sput-boolean v1, Landroid/nfc/NfcAdapterMzExt;->IS_BRCM_43341:Z

    .line 164
    sput-boolean v1, Landroid/nfc/NfcAdapterMzExt;->IS_NXP_PN547:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Landroid/nfc/NfcAdapterMzExt;->initService()V

    .line 38
    return-void
.end method

.method public static declared-synchronized getNfcAdapterMzExt(Landroid/content/Context;)Landroid/nfc/NfcAdapterMzExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v1, Landroid/nfc/NfcAdapterMzExt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/nfc/NfcAdapterMzExt;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapterMzExt;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    .line 48
    :cond_0
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNxpExtServiceInterface()Landroid/nfc/INfcAdapterNxpExt1;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "b":Landroid/os/IBinder;
    :try_start_0
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    if-nez v3, :cond_1

    .line 191
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    .line 192
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    if-nez v3, :cond_1

    .line 193
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "could not retrieve NFC service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return-object v2

    .line 198
    :cond_1
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcAdapterServiceExt()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_1
    if-eqz v0, :cond_0

    .line 206
    invoke-static {v0}, Landroid/nfc/INfcAdapterNxpExt1$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterNxpExt1;

    move-result-object v2

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getNxpExtServiceInterface2()Landroid/nfc/INfcAdapterNxpExt2;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "b":Landroid/os/IBinder;
    :try_start_0
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    if-nez v3, :cond_1

    .line 225
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    .line 226
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    if-nez v3, :cond_1

    .line 227
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "could not retrieve NFC service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-object v2

    .line 232
    :cond_1
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcAdapterServiceExt()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_1
    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0}, Landroid/nfc/INfcAdapterNxpExt2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterNxpExt2;

    move-result-object v2

    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasHceFeature()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 126
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 127
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return v2

    .line 131
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc.hce"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initNxpExt()V
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Landroid/os/BuildExt;->isBrcm43341()Z

    move-result v0

    sput-boolean v0, Landroid/nfc/NfcAdapterMzExt;->IS_BRCM_43341:Z

    .line 167
    invoke-static {}, Landroid/os/BuildExt;->isNxpPn547()Z

    move-result v0

    sput-boolean v0, Landroid/nfc/NfcAdapterMzExt;->IS_NXP_PN547:Z

    .line 169
    sget-boolean v0, Landroid/nfc/NfcAdapterMzExt;->IS_BRCM_43341:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->initNxpExtService()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-boolean v0, Landroid/nfc/NfcAdapterMzExt;->IS_NXP_PN547:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->initNxpExtService2()V

    goto :goto_0
.end method

.method private static initNxpExtService()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->getNxpExtServiceInterface()Landroid/nfc/INfcAdapterNxpExt1;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->sNxpExtService:Landroid/nfc/INfcAdapterNxpExt1;

    .line 180
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->sNxpExtService:Landroid/nfc/INfcAdapterNxpExt1;

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "could not retrieve nxp ext NFC service (BRCM_43341)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method private static initNxpExtService2()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->getNxpExtServiceInterface2()Landroid/nfc/INfcAdapterNxpExt2;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->sNxpExtService2:Landroid/nfc/INfcAdapterNxpExt2;

    .line 214
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->sNxpExtService2:Landroid/nfc/INfcAdapterNxpExt2;

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "could not retrieve nxp ext NFC service (NXP_PN547)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return-void
.end method

.method private initService()V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    .line 143
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "could not retrieve NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->initNxpExt()V

    goto :goto_0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 309
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "NFC service dead - attempting to recover"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    invoke-direct {p0}, Landroid/nfc/NfcAdapterMzExt;->initService()V

    .line 311
    return-void
.end method

.method public connectMzNfcP2p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set MZ_NFCP2P_ON to DB, the value is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_nfcp2p_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcast: mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public disconnectMzNfcP2p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set MZ_NFCP2P_ON to DB, the value is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_nfcp2p_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcast: mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 284
    .local v1, "seID":I
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->sNxpExtService2:Landroid/nfc/INfcAdapterNxpExt2;

    invoke-interface {v2, p1}, Landroid/nfc/INfcAdapterNxpExt2;->getDefaultRoute(Ljava/lang/String;)I

    move-result v1

    .line 285
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 286
    const-string v2, "com.nxp.uicc.ID"

    .line 299
    :goto_0
    return-object v2

    .line 287
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 288
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 289
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 290
    const-string v2, "com.nxp.all_se.ID"

    goto :goto_0

    .line 292
    :cond_2
    const-string v2, "com.nxp.none_se.ID"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sNxpExtService2 may be null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v2, "com.nxp.none_se.ID"

    goto :goto_0
.end method

.method public isMzNfcP2pConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_nfcp2p_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setDefaultRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "routeLoc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "seID":I
    :try_start_0
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const/4 v1, 0x2

    .line 263
    :goto_0
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->sNxpExtService2:Landroid/nfc/INfcAdapterNxpExt2;

    invoke-interface {v2, p1, v1}, Landroid/nfc/INfcAdapterNxpExt2;->setDefaultRoute(Ljava/lang/String;I)V

    .line 270
    :goto_1
    return-void

    .line 255
    :cond_0
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const/4 v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const-string v2, "com.nxp.host.ID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    :cond_2
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultRoute: wrong default route ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "setDefaultRoute failed: Wrong default route ID"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v3, "confsetDefaultRoute failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    new-instance v2, Ljava/io/IOException;

    const-string v3, "confsetDefaultRoute failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sNxpExtService2 may be null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
