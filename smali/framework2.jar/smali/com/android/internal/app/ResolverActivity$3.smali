.class Lcom/android/internal/app/ResolverActivity$3;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPositionChange(Landroid/view/View;II)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->changePosition(II)V

    .line 1533
    return-void
.end method
