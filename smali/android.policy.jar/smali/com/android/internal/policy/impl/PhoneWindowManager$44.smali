.class Lcom/android/internal/policy/impl/PhoneWindowManager$44;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->setStatusBarDarkTheme(Landroid/view/WindowManagerPolicy$WindowState;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$animation:Z

.field final synthetic val$dark:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V
    .locals 0

    .prologue
    .line 8986
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->val$dark:Z

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8990
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 8991
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 8992
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->val$dark:Z

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->val$animation:Z

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setStatusBarDarkTheme(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8998
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 8994
    :catch_0
    move-exception v0

    .line 8996
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
