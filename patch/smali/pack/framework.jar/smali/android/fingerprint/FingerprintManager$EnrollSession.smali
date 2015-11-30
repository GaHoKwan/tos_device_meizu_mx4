.class public final Landroid/fingerprint/FingerprintManager$EnrollSession;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EnrollSession"
.end annotation


# instance fields
.field private mCallback:Landroid/fingerprint/IEnrollCallback;

.field private mSave:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/fingerprint/FingerprintManager;Landroid/fingerprint/IEnrollCallback;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "callback"    # Landroid/fingerprint/IEnrollCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "save"    # Z

    .prologue
    .line 102
    iput-object p1, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->this$0:Landroid/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mCallback:Landroid/fingerprint/IEnrollCallback;

    .line 104
    iput-object p3, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mTag:Ljava/lang/String;

    .line 105
    iput-boolean p4, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mSave:Z

    .line 106
    return-void
.end method


# virtual methods
.method public enter()I
    .locals 5

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->this$0:Landroid/fingerprint/FingerprintManager;

    # getter for: Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;
    invoke-static {v1}, Landroid/fingerprint/FingerprintManager;->access$000(Landroid/fingerprint/FingerprintManager;)Landroid/fingerprint/IFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mCallback:Landroid/fingerprint/IEnrollCallback;

    iget-boolean v3, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mSave:Z

    iget-object v4, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/fingerprint/IFingerprintManager;->enroll(Landroid/fingerprint/IEnrollCallback;ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public exit()I
    .locals 3

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->this$0:Landroid/fingerprint/FingerprintManager;

    # getter for: Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;
    invoke-static {v1}, Landroid/fingerprint/FingerprintManager;->access$000(Landroid/fingerprint/FingerprintManager;)Landroid/fingerprint/IFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mCallback:Landroid/fingerprint/IEnrollCallback;

    invoke-interface {v1, v2}, Landroid/fingerprint/IFingerprintManager;->cancelEnroll(Landroid/fingerprint/IEnrollCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 125
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public reset()I
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->this$0:Landroid/fingerprint/FingerprintManager;

    # getter for: Landroid/fingerprint/FingerprintManager;->mService:Landroid/fingerprint/IFingerprintManager;
    invoke-static {v1}, Landroid/fingerprint/FingerprintManager;->access$000(Landroid/fingerprint/FingerprintManager;)Landroid/fingerprint/IFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/fingerprint/FingerprintManager$EnrollSession;->mCallback:Landroid/fingerprint/IEnrollCallback;

    invoke-interface {v1, v2}, Landroid/fingerprint/IFingerprintManager;->resetEnroll(Landroid/fingerprint/IEnrollCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    const/4 v1, -0x1

    goto :goto_0
.end method
