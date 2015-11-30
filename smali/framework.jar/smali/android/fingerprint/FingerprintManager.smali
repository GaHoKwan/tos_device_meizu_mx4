.class public Landroid/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/fingerprint/FingerprintManager$EnrollSession;,
        Landroid/fingerprint/FingerprintManager$VerifySession;
    }
.end annotation


# static fields
.field public static final MSG_TYPE_COMMON_TOUCHING_TIMEOUT:I = 0x3

.field public static final MSG_TYPE_RECONGNIZE_BASE:I = 0x100

.field public static final MSG_TYPE_RECONGNIZE_FAILED:I = 0x103

.field public static final MSG_TYPE_RECONGNIZE_SUCCESS:I = 0x101

.field public static final MSG_TYPE_REGISTER_BAD_IMAGE:I = 0x15

.field public static final MSG_TYPE_REGISTER_BASE:I = 0x10

.field public static final MSG_TYPE_REGISTER_EFFECTIVE:I = 0x11

.field public static final MSG_TYPE_REGISTER_GET_DATA_FAILED:I = 0x16

.field public static final MSG_TYPE_REGISTER_LOW_COVER:I = 0x14

.field public static final MSG_TYPE_REGISTER_NO_EXTRAINFO:I = 0x13

.field public static final MSG_TYPE_REGISTER_NO_PIECE:I = 0x12


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/fingerprint/IFingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/fingerprint/IFingerprintManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/fingerprint/IFingerprintManager;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;

    .line 33
    iput-object p1, p0, Landroid/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Landroid/fingerprint/FingerprintManager;)Landroid/fingerprint/IFingerprintManager;
    .locals 1
    .param p0, "x0"    # Landroid/fingerprint/FingerprintManager;

    .prologue
    .line 6
    iget-object v0, p0, Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;

    return-object v0
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public convertMessage2String(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 140
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 143
    :sswitch_0
    const-string v0, "REGISTER_EFFECTIVE"

    goto :goto_0

    .line 145
    :sswitch_1
    const-string v0, "REGISTER_NO_PIECE"

    goto :goto_0

    .line 147
    :sswitch_2
    const-string v0, "REGISTER_NO_EXTRAINFO"

    goto :goto_0

    .line 149
    :sswitch_3
    const-string v0, "REGISTER_LOW_COVER"

    goto :goto_0

    .line 151
    :sswitch_4
    const-string v0, "REGISTER_BAD_IMAGE"

    goto :goto_0

    .line 154
    :sswitch_5
    const-string v0, "RECONGNIZE_SUCCESS"

    goto :goto_0

    .line 156
    :sswitch_6
    const-string v0, "RECONGNIZE_FAILED"

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x101 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method

.method public deleteFingerprint(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1}, Landroid/fingerprint/IFingerprintManager;->deleteFingerprint(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 58
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public editFingerprintRecord(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 63
    return-void
.end method

.method public newEnrollSession(Landroid/fingerprint/IEnrollCallback;Ljava/lang/String;Z)Landroid/fingerprint/FingerprintManager$EnrollSession;
    .locals 1
    .param p1, "callback"    # Landroid/fingerprint/IEnrollCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "save"    # Z

    .prologue
    .line 41
    new-instance v0, Landroid/fingerprint/FingerprintManager$EnrollSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/fingerprint/FingerprintManager$EnrollSession;-><init>(Landroid/fingerprint/FingerprintManager;Landroid/fingerprint/IEnrollCallback;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newVerifySession(Landroid/fingerprint/IVerifyCallback;Ljava/lang/String;)Landroid/fingerprint/FingerprintManager$VerifySession;
    .locals 1
    .param p1, "callback"    # Landroid/fingerprint/IVerifyCallback;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/fingerprint/FingerprintManager$VerifySession;

    invoke-direct {v0, p0, p1, p2}, Landroid/fingerprint/FingerprintManager$VerifySession;-><init>(Landroid/fingerprint/FingerprintManager;Landroid/fingerprint/IVerifyCallback;Ljava/lang/String;)V

    return-object v0
.end method

.method public query([I)V
    .locals 1
    .param p1, "indexState"    # [I

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;

    invoke-interface {v0, p1}, Landroid/fingerprint/IFingerprintManager;->query([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method
