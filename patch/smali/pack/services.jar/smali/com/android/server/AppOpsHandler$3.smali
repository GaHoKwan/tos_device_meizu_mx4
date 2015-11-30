.class Lcom/android/server/AppOpsHandler$3;
.super Ljava/lang/Object;
.source "AppOpsHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$d:Landroid/app/AlertDialog;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsHandler;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/AppOpsHandler$3;->this$0:Lcom/android/server/AppOpsHandler;

    iput-object p2, p0, Lcom/android/server/AppOpsHandler$3;->val$remember:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/server/AppOpsHandler$3;->val$d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$3;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$3;->this$0:Lcom/android/server/AppOpsHandler;

    iget-object v1, p0, Lcom/android/server/AppOpsHandler$3;->val$d:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/AppOpsHandler;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/server/AppOpsHandler;->access$300(Lcom/android/server/AppOpsHandler;Landroid/content/DialogInterface;ZZZ)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$3;->val$d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 269
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandler$3;->this$0:Lcom/android/server/AppOpsHandler;

    iget-object v1, p0, Lcom/android/server/AppOpsHandler$3;->val$d:Landroid/app/AlertDialog;

    # invokes: Lcom/android/server/AppOpsHandler;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, v1, v3, v3, v3}, Lcom/android/server/AppOpsHandler;->access$300(Lcom/android/server/AppOpsHandler;Landroid/content/DialogInterface;ZZZ)V

    goto :goto_0
.end method
