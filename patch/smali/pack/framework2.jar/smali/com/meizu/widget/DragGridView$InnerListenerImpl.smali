.class Lcom/meizu/widget/DragGridView$InnerListenerImpl;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListenerImpl"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/meizu/widget/DragGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/DragGridView;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 309
    iput-object p1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput p2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    .line 311
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mOnItemClickListener:Lcom/meizu/widget/DragGridView$OnItemClickListener;
    invoke-static {v0}, Lcom/meizu/widget/DragGridView;->access$1000(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mOnItemClickListener:Lcom/meizu/widget/DragGridView$OnItemClickListener;
    invoke-static {v0}, Lcom/meizu/widget/DragGridView;->access$1000(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$900(Lcom/meizu/widget/DragGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/meizu/widget/DragGridView$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    .line 402
    :cond_0
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 321
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 324
    .local v0, "action":I
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mIsAnimating:Z
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$300(Lcom/meizu/widget/DragGridView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    iget v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    # setter for: Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I
    invoke-static {v2, v3}, Lcom/meizu/widget/DragGridView;->access$402(Lcom/meizu/widget/DragGridView;I)I

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$500(Lcom/meizu/widget/DragGridView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$500(Lcom/meizu/widget/DragGridView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 333
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # setter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2, v4}, Lcom/meizu/widget/DragGridView;->access$502(Lcom/meizu/widget/DragGridView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 340
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 369
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$500(Lcom/meizu/widget/DragGridView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$500(Lcom/meizu/widget/DragGridView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 371
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # setter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2, v4}, Lcom/meizu/widget/DragGridView;->access$502(Lcom/meizu/widget/DragGridView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$400(Lcom/meizu/widget/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    if-ne v1, v2, :cond_4

    .line 347
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    const/4 v2, -0x1

    # setter for: Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I
    invoke-static {v1, v2}, Lcom/meizu/widget/DragGridView;->access$402(Lcom/meizu/widget/DragGridView;I)I

    .line 348
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$600(Lcom/meizu/widget/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    if-le v1, v2, :cond_5

    .line 349
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mMoveForwardRunnable:Lcom/meizu/widget/DragGridView$MoveForwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$700(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$MoveForwardAnimator;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    iget-object v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v3}, Lcom/meizu/widget/DragGridView;->access$600(Lcom/meizu/widget/DragGridView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/DragGridView$MoveForwardAnimator;->start(II)V

    .line 375
    :cond_4
    :goto_1
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 351
    :cond_5
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mMoveBackwardRunnable:Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$800(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$600(Lcom/meizu/widget/DragGridView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;->start(II)V

    goto :goto_1

    .line 357
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    iget v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    # setter for: Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I
    invoke-static {v1, v2}, Lcom/meizu/widget/DragGridView;->access$402(Lcom/meizu/widget/DragGridView;I)I

    .line 358
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$600(Lcom/meizu/widget/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    if-le v1, v2, :cond_6

    .line 359
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mMoveForwardRunnable:Lcom/meizu/widget/DragGridView$MoveForwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$700(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$MoveForwardAnimator;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    iget-object v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v3}, Lcom/meizu/widget/DragGridView;->access$600(Lcom/meizu/widget/DragGridView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/DragGridView$MoveForwardAnimator;->start(II)V

    goto :goto_1

    .line 361
    :cond_6
    iget-object v1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mMoveBackwardRunnable:Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/DragGridView;->access$800(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$600(Lcom/meizu/widget/DragGridView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;->start(II)V

    goto :goto_1

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$900(Lcom/meizu/widget/DragGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/widget/DragGridView$ItemDragShadowGetter;

    if-eqz v2, :cond_0

    .line 382
    new-instance v1, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;

    .end local v1    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/meizu/widget/DragGridView;->access$900(Lcom/meizu/widget/DragGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/DragGridView$ItemDragShadowGetter;

    iget v4, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    invoke-interface {v2, p1, v4}, Lcom/meizu/widget/DragGridView$ItemDragShadowGetter;->getItemDragShadow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    invoke-direct {v1, v3, v2, v4}, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;-><init>(Lcom/meizu/widget/DragGridView;Landroid/view/View;I)V

    .line 386
    .restart local v1    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # getter for: Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v4}, Lcom/meizu/widget/DragGridView;->access$900(Lcom/meizu/widget/DragGridView;)Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v6}, Lcom/meizu/widget/DragGridView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    .line 387
    .local v0, "ok":Z
    if-nez v0, :cond_1

    .line 394
    :goto_1
    return v7

    .line 384
    .end local v0    # "ok":Z
    :cond_0
    new-instance v1, Landroid/view/View$DragShadowBuilder;

    .end local v1    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    invoke-direct {v1, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .restart local v1    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    goto :goto_0

    .line 390
    .restart local v0    # "ok":Z
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v6, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 391
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    iget v3, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    # setter for: Lcom/meizu/widget/DragGridView;->mDragPosition:I
    invoke-static {v2, v3}, Lcom/meizu/widget/DragGridView;->access$602(Lcom/meizu/widget/DragGridView;I)I

    .line 392
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 393
    iget-object v2, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->this$0:Lcom/meizu/widget/DragGridView;

    # setter for: Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;
    invoke-static {v2, p1}, Lcom/meizu/widget/DragGridView;->access$502(Lcom/meizu/widget/DragGridView;Landroid/view/View;)Landroid/view/View;

    goto :goto_1
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 314
    iget v0, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    if-eq v0, p1, :cond_0

    .line 315
    iput p1, p0, Lcom/meizu/widget/DragGridView$InnerListenerImpl;->mPosition:I

    .line 317
    :cond_0
    return-void
.end method
