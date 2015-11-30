.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v2, "meizu.intent.action.AUTO_INSTALL_SUCCESSFUL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "MountService"

    const-string v3, "AUTO_INSTALL_SUCCESSFUL !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app/autoVerify/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "verifyDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 179
    .end local v1    # "verifyDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v2, "meizu.intent.action.HOME_LAUNCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app/autoVerify/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v1    # "verifyDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/MountService;->mPendingAutoInstall:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$002(Lcom/android/server/MountService;Z)Z

    goto :goto_0

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->startAutoInstall()V
    invoke-static {v2}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;)V

    goto :goto_0
.end method
