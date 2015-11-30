.class Lcom/android/server/AppOpsHandler$4;
.super Ljava/lang/Object;
.source "AppOpsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsHandler;->showSettingDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsHandler;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsHandler;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/AppOpsHandler$4;->this$0:Lcom/android/server/AppOpsHandler;

    iput-object p2, p0, Lcom/android/server/AppOpsHandler$4;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$4;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$4;->this$0:Lcom/android/server/AppOpsHandler;

    # invokes: Lcom/android/server/AppOpsHandler;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/android/server/AppOpsHandler;->access$300(Lcom/android/server/AppOpsHandler;Landroid/content/DialogInterface;ZZZ)V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$4;->this$0:Lcom/android/server/AppOpsHandler;

    # invokes: Lcom/android/server/AppOpsHandler;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, p1, v1, v2, v1}, Lcom/android/server/AppOpsHandler;->access$300(Lcom/android/server/AppOpsHandler;Landroid/content/DialogInterface;ZZZ)V

    goto :goto_0
.end method
