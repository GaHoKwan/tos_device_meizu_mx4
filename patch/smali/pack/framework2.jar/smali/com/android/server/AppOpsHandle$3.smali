.class Lcom/android/server/AppOpsHandle$3;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsHandle;->showSettingDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsHandle;

.field final synthetic val$d:Landroid/app/AlertDialog;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsHandle;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/AppOpsHandle$3;->this$0:Lcom/android/server/AppOpsHandle;

    iput-object p2, p0, Lcom/android/server/AppOpsHandle$3;->val$remember:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/server/AppOpsHandle$3;->val$d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/server/AppOpsHandle$3;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/server/AppOpsHandle$3;->this$0:Lcom/android/server/AppOpsHandle;

    iget-object v1, p0, Lcom/android/server/AppOpsHandle$3;->val$d:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/server/AppOpsHandle;->access$300(Lcom/android/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandle$3;->val$d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandle$3;->this$0:Lcom/android/server/AppOpsHandle;

    iget-object v1, p0, Lcom/android/server/AppOpsHandle$3;->val$d:Landroid/app/AlertDialog;

    # invokes: Lcom/android/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, v1, v3, v3, v3}, Lcom/android/server/AppOpsHandle;->access$300(Lcom/android/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V

    goto :goto_0
.end method
