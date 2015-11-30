.class Lcom/meizu/widget/KeyBackButton$1;
.super Ljava/lang/Object;
.source "KeyBackButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/KeyBackButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/KeyBackButton;


# direct methods
.method constructor <init>(Lcom/meizu/widget/KeyBackButton;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/widget/KeyBackButton$1;->this$0:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/widget/KeyBackButton$1;->this$0:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0}, Lcom/meizu/widget/KeyBackButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/meizu/widget/KeyBackButton$1;->this$0:Lcom/meizu/widget/KeyBackButton;

    # getter for: Lcom/meizu/widget/KeyBackButton;->mCode:I
    invoke-static {v0}, Lcom/meizu/widget/KeyBackButton;->access$000(Lcom/meizu/widget/KeyBackButton;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/meizu/widget/KeyBackButton$1;->this$0:Lcom/meizu/widget/KeyBackButton;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/KeyBackButton;->sendEvent(II)V

    .line 36
    iget-object v0, p0, Lcom/meizu/widget/KeyBackButton$1;->this$0:Lcom/meizu/widget/KeyBackButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->sendAccessibilityEvent(I)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/KeyBackButton$1;->this$0:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0}, Lcom/meizu/widget/KeyBackButton;->performLongClick()Z

    goto :goto_0
.end method
