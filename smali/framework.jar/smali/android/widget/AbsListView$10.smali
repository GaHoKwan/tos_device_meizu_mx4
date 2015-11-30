.class Landroid/widget/AbsListView$10;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ActionMode$OnActionItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onCreateActionModeForMeiZu(Landroid/view/ActionMode;)V
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
    .line 10990
    iput-object p1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 10992
    iget-object v0, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    .line 10993
    return-void
.end method
