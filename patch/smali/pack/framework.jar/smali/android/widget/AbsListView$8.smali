.class Landroid/widget/AbsListView$8;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->startMultiChoice()Z
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
    .line 10215
    iput-object p1, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10217
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 10218
    return-void
.end method
