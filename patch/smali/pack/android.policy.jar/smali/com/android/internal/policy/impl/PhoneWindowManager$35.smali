.class Lcom/android/internal/policy/impl/PhoneWindowManager$35;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->hideBootMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6685
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6688
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6689
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->flymeBootLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 6690
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->flymeBootMsgText:Landroid/widget/TextView;

    .line 6691
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->flymeBootMsgText:Landroid/widget/TextView;

    .line 6692
    return-void
.end method
