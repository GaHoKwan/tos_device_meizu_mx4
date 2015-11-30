.class Landroid/widget/MzFastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzFastScroller.java"


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
    .line 258
    iput-object p1, p0, Landroid/widget/MzFastScroller$3;->this$0:Landroid/widget/MzFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 261
    iget-object v1, p0, Landroid/widget/MzFastScroller$3;->this$0:Landroid/widget/MzFastScroller;

    iget-object v0, p0, Landroid/widget/MzFastScroller$3;->this$0:Landroid/widget/MzFastScroller;

    # getter for: Landroid/widget/MzFastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Landroid/widget/MzFastScroller;->access$700(Landroid/widget/MzFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/MzFastScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Landroid/widget/MzFastScroller;->access$702(Landroid/widget/MzFastScroller;Z)Z

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
