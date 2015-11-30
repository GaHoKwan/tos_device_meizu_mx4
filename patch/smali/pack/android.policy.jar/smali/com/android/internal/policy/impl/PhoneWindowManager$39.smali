.class Lcom/android/internal/policy/impl/PhoneWindowManager$39;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
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
    .line 8330
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8335
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$5000(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 8336
    return-void
.end method
