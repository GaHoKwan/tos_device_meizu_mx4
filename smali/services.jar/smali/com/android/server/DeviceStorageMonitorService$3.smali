.class Lcom/android/server/DeviceStorageMonitorService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 738
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v1, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 742
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z
    invoke-static {v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1302(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 745
    :cond_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v1, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 747
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 751
    :cond_1
    return-void
.end method