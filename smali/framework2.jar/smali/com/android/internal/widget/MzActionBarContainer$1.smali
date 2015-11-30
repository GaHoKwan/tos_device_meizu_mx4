.class Lcom/android/internal/widget/MzActionBarContainer$1;
.super Landroid/os/Handler;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/widget/MzActionBarContainer;->mUpdateBackButton:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->access$002(Lcom/android/internal/widget/MzActionBarContainer;Z)Z

    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->updateBackButtonDrawable()V
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)V

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    return-void
.end method
