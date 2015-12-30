.class Lcom/android/server/WallpaperManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WallpaperManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    const-string v3, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/WallpaperManagerService;->onRemoveUser(I)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const-string v2, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 539
    .local v1, "smartBookPlug":Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # getter for: Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z
    invoke-static {v2}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 540
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart book plug state changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # setter for: Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z
    invoke-static {v2, v1}, Lcom/android/server/WallpaperManagerService;->access$402(Lcom/android/server/WallpaperManagerService;Z)Z

    .line 542
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # setter for: Lcom/android/server/WallpaperManagerService;->mHaveUsedSmartBook:Z
    invoke-static {v2, v6}, Lcom/android/server/WallpaperManagerService;->access$702(Lcom/android/server/WallpaperManagerService;Z)Z

    .line 543
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # getter for: Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Z

    move-result v3

    # invokes: Lcom/android/server/WallpaperManagerService;->dynimicSwitchingWallpaper(Z)V
    invoke-static {v2, v3}, Lcom/android/server/WallpaperManagerService;->access$800(Lcom/android/server/WallpaperManagerService;Z)V

    goto :goto_0

    .line 545
    .end local v1    # "smartBookPlug":Z
    :cond_2
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    sget-object v2, Lcom/android/server/WallpaperManagerService;->mCurrentComponetName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 547
    sput-boolean v6, Lcom/android/server/WallpaperManagerService;->mIsIPOBoot:Z

    .line 548
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IPO boot, restart the wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/WallpaperManagerService;->mCurrentComponetName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    sget-object v3, Lcom/android/server/WallpaperManagerService;->mCurrentComponetName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 551
    sput-boolean v5, Lcom/android/server/WallpaperManagerService;->mIsIPOBoot:Z

    goto :goto_0

    .line 554
    :cond_3
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
