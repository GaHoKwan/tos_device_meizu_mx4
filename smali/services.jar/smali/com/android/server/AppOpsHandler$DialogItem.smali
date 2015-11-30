.class Lcom/android/server/AppOpsHandler$DialogItem;
.super Ljava/lang/Object;
.source "AppOpsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogItem"
.end annotation


# instance fields
.field public code:I

.field public dialog:Landroid/app/AlertDialog;

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AppOpsHandler;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsHandler;ILandroid/app/AlertDialog;ILjava/lang/String;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "dAlertDialog"    # Landroid/app/AlertDialog;
    .param p4, "uid"    # I
    .param p5, "pkg"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/AppOpsHandler$DialogItem;->this$0:Lcom/android/server/AppOpsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/android/server/AppOpsHandler$DialogItem;->code:I

    .line 88
    iput-object p3, p0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    .line 89
    iput p4, p0, Lcom/android/server/AppOpsHandler$DialogItem;->uid:I

    .line 90
    iput-object p5, p0, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    .line 91
    return-void
.end method
