.class Lcom/android/server/AppOpsHandler$1;
.super Landroid/os/Handler;
.source "AppOpsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsHandler;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsHandler;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/AppOpsHandler$1;->this$0:Lcom/android/server/AppOpsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "opString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AppOpsHandler$1;->this$0:Lcom/android/server/AppOpsHandler;

    # getter for: Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AppOpsHandler;->access$000(Lcom/android/server/AppOpsHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 65
    .end local v0    # "opString":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/AppOpsHandler$1;->this$0:Lcom/android/server/AppOpsHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    check-cast v1, Landroid/content/Intent;

    # invokes: Lcom/android/server/AppOpsHandler;->showToastMessage(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/server/AppOpsHandler;->access$100(Lcom/android/server/AppOpsHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/AppOpsHandler$1;->this$0:Lcom/android/server/AppOpsHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppOpsHandler$DialogItem;

    check-cast v1, Lcom/android/server/AppOpsHandler$DialogItem;

    # invokes: Lcom/android/server/AppOpsHandler;->updateDialogList(Lcom/android/server/AppOpsHandler$DialogItem;)V
    invoke-static {v2, v1}, Lcom/android/server/AppOpsHandler;->access$200(Lcom/android/server/AppOpsHandler;Lcom/android/server/AppOpsHandler$DialogItem;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
