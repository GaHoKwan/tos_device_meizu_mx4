.class Lcom/android/server/AppOpsHandle$1;
.super Landroid/os/Handler;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsHandle;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsHandle;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/AppOpsHandle$1;->this$0:Lcom/android/server/AppOpsHandle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "opString":Ljava/lang/String;
    const-string v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_DEFUAT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/server/AppOpsHandle$1;->this$0:Lcom/android/server/AppOpsHandle;

    # getter for: Lcom/android/server/AppOpsHandle;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AppOpsHandle;->access$000(Lcom/android/server/AppOpsHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 80
    .end local v0    # "opString":Ljava/lang/String;
    :pswitch_1
    const-string v1, "FlymePermissionManager"

    const-string v2, "SHOW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/android/server/AppOpsHandle$1;->this$0:Lcom/android/server/AppOpsHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    check-cast v1, Landroid/content/Intent;

    # invokes: Lcom/android/server/AppOpsHandle;->showToastMessage(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/server/AppOpsHandle;->access$100(Lcom/android/server/AppOpsHandle;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v1, "FlymePermissionManager"

    const-string v2, "DISMISS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/android/server/AppOpsHandle$1;->this$0:Lcom/android/server/AppOpsHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppOpsHandle$DialogItem;

    check-cast v1, Lcom/android/server/AppOpsHandle$DialogItem;

    # invokes: Lcom/android/server/AppOpsHandle;->updateDialogList(Lcom/android/server/AppOpsHandle$DialogItem;)V
    invoke-static {v2, v1}, Lcom/android/server/AppOpsHandle;->access$200(Lcom/android/server/AppOpsHandle;Lcom/android/server/AppOpsHandle$DialogItem;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
