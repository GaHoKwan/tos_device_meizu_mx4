.class Landroid/widget/AbsListView$9;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->OnLayoutForMeiZu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 10345
    iput-object p1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10347
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->startMultiChoice()Z

    .line 10348
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 10349
    return-void
.end method
