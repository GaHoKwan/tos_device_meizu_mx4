.class public final Landroid/fingerprint/FingerprintManager$VerifySession;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VerifySession"
.end annotation


# instance fields
.field private mCallback:Landroid/fingerprint/IVerifyCallback;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/fingerprint/FingerprintManager;Landroid/fingerprint/IVerifyCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "callback"    # Landroid/fingerprint/IVerifyCallback;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->this$0:Landroid/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->mCallback:Landroid/fingerprint/IVerifyCallback;

    .line 74
    iput-object p3, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->mTag:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public enter()I
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->this$0:Landroid/fingerprint/FingerprintManager;

    # getter for: Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;
    invoke-static {v1}, Landroid/fingerprint/FingerprintManager;->access$000(Landroid/fingerprint/FingerprintManager;)Landroid/fingerprint/IFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->mCallback:Landroid/fingerprint/IVerifyCallback;

    iget-object v3, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/fingerprint/IFingerprintManager;->verify(Landroid/fingerprint/IVerifyCallback;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public exit()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->this$0:Landroid/fingerprint/FingerprintManager;

    # getter for: Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;
    invoke-static {v1}, Landroid/fingerprint/FingerprintManager;->access$000(Landroid/fingerprint/FingerprintManager;)Landroid/fingerprint/IFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/fingerprint/FingerprintManager$VerifySession;->mCallback:Landroid/fingerprint/IVerifyCallback;

    invoke-interface {v1, v2}, Landroid/fingerprint/IFingerprintManager;->cancelVerify(Landroid/fingerprint/IVerifyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const/4 v1, -0x1

    goto :goto_0
.end method
