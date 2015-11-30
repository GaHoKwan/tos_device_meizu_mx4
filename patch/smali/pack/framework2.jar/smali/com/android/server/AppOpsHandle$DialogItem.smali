.class Lcom/android/server/AppOpsHandle$DialogItem;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogItem"
.end annotation


# instance fields
.field public code:I

.field public dialog:Landroid/app/AlertDialog;

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AppOpsHandle;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsHandle;ILandroid/app/AlertDialog;ILjava/lang/String;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "dAlertDialog"    # Landroid/app/AlertDialog;
    .param p4, "uid"    # I
    .param p5, "pkg"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/AppOpsHandle$DialogItem;->this$0:Lcom/android/server/AppOpsHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/android/server/AppOpsHandle$DialogItem;->code:I

    .line 105
    iput-object p3, p0, Lcom/android/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    .line 106
    iput p4, p0, Lcom/android/server/AppOpsHandle$DialogItem;->uid:I

    .line 107
    iput-object p5, p0, Lcom/android/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    .line 108
    return-void
.end method
