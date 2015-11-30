.class Landroid/widget/Editor$MzInsertionPointCursorController;
.super Landroid/widget/Editor$InsertionPointCursorController;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "wangying@SDK.TextView.Feature modify for Magnifier and OptionPanel"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzInsertionPointCursorController"
.end annotation


# instance fields
.field private mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .prologue
    .line 5482
    iput-object p1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 5482
    invoke-direct {p0, p1}, Landroid/widget/Editor$MzInsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private getMagnifier()Lcom/meizu/widget/MagnifierPopupWindow;
    .locals 2

    .prologue
    .line 5544
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-nez v0, :cond_0

    .line 5545
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 5547
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->setLimitInView(Z)V

    .line 5548
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/MagnifierPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5551
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 5531
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5532
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 5533
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5535
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 5487
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v0, :cond_0

    .line 5488
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    .line 5490
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5556
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5557
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5559
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v1, :cond_0

    .line 5560
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v1}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 5561
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 5590
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 5591
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5564
    invoke-virtual {p0}, Landroid/widget/Editor$MzInsertionPointCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5577
    :cond_0
    :goto_0
    return v0

    .line 5567
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$MzInsertionPointCursorController;->update(FF)V

    move v0, v1

    .line 5569
    goto :goto_0

    .line 5571
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 5573
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5574
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    invoke-static {v1, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4200(Landroid/widget/Editor$SelectionModifierCursorController;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5538
    if-nez p1, :cond_0

    .line 5539
    invoke-virtual {p0}, Landroid/widget/Editor$MzInsertionPointCursorController;->hide()V

    .line 5541
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 5521
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$MzInsertionPointCursorController;->update(FF)V

    .line 5522
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    # setter for: Landroid/widget/Editor;->mLastScrollTime:J
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2902(Landroid/widget/Editor;J)J

    .line 5525
    iget-object v0, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 5528
    return-void
.end method

.method public showWithActionPopup()V
    .locals 0

    .prologue
    .line 5594
    return-void
.end method

.method public update(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5494
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 5497
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor$MzInsertionPointCursorController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mLastScrollTime:J
    invoke-static {v3}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 5518
    :goto_0
    return-void

    .line 5502
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    # setter for: Landroid/widget/Editor;->mLastScrollTime:J
    invoke-static {v1, v2, v3}, Landroid/widget/Editor;->access$2902(Landroid/widget/Editor;J)J

    .line 5504
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 5506
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5509
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x753a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 5514
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$MzInsertionPointCursorController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5515
    iget-object v1, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 5517
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$MzInsertionPointCursorController;->getMagnifier()Lcom/meizu/widget/MagnifierPopupWindow;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$MzInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 0
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 5587
    return-void
.end method
