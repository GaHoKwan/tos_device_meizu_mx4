.class Landroid/widget/MzFastScroller$2;
.super Ljava/lang/Object;
.source "MzFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/MzFastScroller;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Landroid/widget/MzFastScroller$2;->this$0:Landroid/widget/MzFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/widget/MzFastScroller$2;->this$0:Landroid/widget/MzFastScroller;

    const/4 v1, 0x0

    # invokes: Landroid/widget/MzFastScroller;->setState(I)V
    invoke-static {v0, v1}, Landroid/widget/MzFastScroller;->access$600(Landroid/widget/MzFastScroller;I)V

    .line 252
    return-void
.end method
