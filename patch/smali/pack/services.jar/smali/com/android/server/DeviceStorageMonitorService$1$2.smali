.class Lcom/android/server/DeviceStorageMonitorService$1$2;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceStorageMonitorService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DeviceStorageMonitorService$1;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService$1;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1$2;->this$1:Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$1$2;->this$1:Lcom/android/server/DeviceStorageMonitorService$1;

    iget-object v1, v1, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
