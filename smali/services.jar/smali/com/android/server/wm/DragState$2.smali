.class Lcom/android/server/wm/DragState$2;
.super Landroid/content/BroadcastReceiver;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 752
    const-string v0, "meizu.intent.action.MEIZU_NFC_SHARE_ENABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    const-string v1, "NfcShareEnabled"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/wm/DragState;->mStatusBarNfcEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$002(Lcom/android/server/wm/DragState;Z)Z

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    const-string v1, "NfcRecoverAnim"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/wm/DragState;->mRecoverAnimNfc:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$102(Lcom/android/server/wm/DragState;Z)Z

    .line 758
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    # getter for: Lcom/android/server/wm/DragState;->mStatusBarNfcEnabled:Z
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    # getter for: Lcom/android/server/wm/DragState;->mReachStatusBarNfc:Z
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$200(Lcom/android/server/wm/DragState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$302(Lcom/android/server/wm/DragState;I)I

    .line 763
    :goto_1
    return-void

    .line 755
    :cond_1
    const-string v0, "meizu.intent.action.MEIZU_NFC_SHARE_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    const-string v1, "NfcShareState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/wm/DragState;->mReachStatusBarNfc:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$202(Lcom/android/server/wm/DragState;Z)Z

    goto :goto_0

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$302(Lcom/android/server/wm/DragState;I)I

    goto :goto_1
.end method
