.class Landroid/text/RichDynamicLayout$ChangeWatcher;
.super Ljava/lang/Object;
.source "RichDynamicLayout.java"

# interfaces
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/RichDynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/RichDynamicLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/RichDynamicLayout;)V
    .locals 1
    .param p1, "layout"    # Landroid/text/RichDynamicLayout;

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/text/RichDynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    .line 617
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 620
    iget-object v1, p0, Landroid/text/RichDynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/RichDynamicLayout;

    .line 622
    .local v0, "ml":Landroid/text/RichDynamicLayout;
    if-eqz v0, :cond_1

    .line 623
    # invokes: Landroid/text/RichDynamicLayout;->reflow(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/RichDynamicLayout;->access$000(Landroid/text/RichDynamicLayout;Ljava/lang/CharSequence;III)V

    .line 626
    .end local p1    # "s":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 624
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 625
    check-cast p1, Landroid/text/Spannable;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 638
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 630
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 641
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    .line 642
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/RichDynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 643
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 2
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "nstart"    # I
    .param p6, "nend"    # I

    .prologue
    .line 651
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    .line 652
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/RichDynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 653
    sub-int v0, p6, p5

    sub-int v1, p6, p5

    invoke-direct {p0, p1, p5, v0, v1}, Landroid/text/RichDynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 655
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 646
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    .line 647
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/RichDynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 648
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/RichDynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 634
    return-void
.end method
