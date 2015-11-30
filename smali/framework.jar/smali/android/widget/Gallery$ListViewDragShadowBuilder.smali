.class Landroid/widget/Gallery$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "Gallery.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.Gallery.Feature shadow for drag"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2634
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/Gallery$ListViewDragShadowBuilder;-><init>(Landroid/widget/Gallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 2635
    return-void
.end method

.method public constructor <init>(Landroid/widget/Gallery;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "needBg"    # Z
    .param p4, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2637
    iput-object p1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    .line 2638
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2628
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2629
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2724
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    .line 2639
    iput-boolean p3, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2640
    iput-object p4, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2641
    if-nez p2, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    if-eqz p3, :cond_3

    .line 2643
    invoke-virtual {p1}, Landroid/widget/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # getter for: Landroid/widget/Gallery;->mDragViewBackground:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$1800(Landroid/widget/Gallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2644
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2645
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2646
    iget-object v4, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2647
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2648
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2649
    .local v1, "height":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2650
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    .line 2651
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2653
    invoke-virtual {p1}, Landroid/widget/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # getter for: Landroid/widget/Gallery;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$1900(Landroid/widget/Gallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 2654
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2656
    invoke-virtual {p1}, Landroid/widget/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # getter for: Landroid/widget/Gallery;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$2000(Landroid/widget/Gallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 2657
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2664
    .end local v1    # "height":I
    .end local v4    # "padding":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :goto_1
    const/4 v6, 0x0

    # setter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/Gallery;->access$2102(Landroid/widget/Gallery;I)I

    .line 2665
    iget v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/Gallery;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 2666
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 2667
    .local v2, "listLocation":[I
    invoke-virtual {p1, v2}, Landroid/widget/Gallery;->getLocationOnScreen([I)V

    .line 2669
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 2670
    .local v0, "dragLocation":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2672
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v6, v7, :cond_2

    .line 2673
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    # setter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/Gallery;->access$2102(Landroid/widget/Gallery;I)I

    .line 2674
    iget v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/Gallery;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 2675
    .local v3, "maxDragScrollY":I
    # getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    # setter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/Gallery;->access$2102(Landroid/widget/Gallery;I)I

    .line 2678
    .end local v3    # "maxDragScrollY":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Gallery;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    goto/16 :goto_0

    .line 2660
    .end local v0    # "dragLocation":[I
    .end local v2    # "listLocation":[I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2661
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    goto :goto_1
.end method


# virtual methods
.method public getDragingState()I
    .locals 1

    .prologue
    .line 2731
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    return v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2697
    iget-boolean v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_2

    .line 2698
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_0

    .line 2699
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2705
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2706
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2707
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2719
    :goto_1
    return-void

    .line 2700
    :cond_0
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2701
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2703
    :cond_1
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2710
    :cond_2
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2712
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v1}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2713
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 2716
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2685
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2686
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2688
    iget-boolean v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/Gallery;->access$2300(Landroid/widget/Gallery;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2693
    :goto_0
    return-void

    .line 2691
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/Gallery;->access$2300(Landroid/widget/Gallery;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2727
    iput p1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    .line 2728
    return-void
.end method
