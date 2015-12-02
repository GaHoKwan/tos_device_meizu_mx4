.class Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1

    .prologue
    .line 3265
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    .line 3266
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3267
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSavingContentObserver.onChange, mPwsavEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3600(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlackListInited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlackListInited:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3700(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 3272
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPwsavEnable:Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3600(Lcom/android/server/AlarmManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3273
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getBlackListFromDb()Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3800(Lcom/android/server/AlarmManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3274
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->initBlackListConfig()Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Z

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3276
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlackListInited:Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3700(Lcom/android/server/AlarmManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$PowerSavingContentObserver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mBlackListInited:Z
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$3702(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0
.end method
