.class Lcom/android/server/power/PowerManagerService$15;
.super Landroid/hardware/input/ILidSwitchCallback$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->registerLidListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4643
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$15;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/hardware/input/ILidSwitchCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidSwitchChanged(Z)V
    .locals 5
    .param p1, "lidopen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4646
    const-string v3, "PowerManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Lib: onLidSwitchChanged(), mLidMode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$15;->this$0:Lcom/android/server/power/PowerManagerService;

    if-nez p1, :cond_1

    :goto_1
    # setter for: Lcom/android/server/power/PowerManagerService;->mLidMode:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$6102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4648
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$15;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updateLibMode()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)V

    .line 4649
    return-void

    :cond_0
    move v0, v2

    .line 4646
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4647
    goto :goto_1
.end method
