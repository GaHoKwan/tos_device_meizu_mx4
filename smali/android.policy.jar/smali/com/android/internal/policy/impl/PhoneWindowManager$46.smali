.class Lcom/android/internal/policy/impl/PhoneWindowManager$46;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->registerEnableFullScreenDragSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 9154
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$46;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 9158
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$46;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->onEnableFullScreenDragSettingChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$5500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 9159
    return-void
.end method
