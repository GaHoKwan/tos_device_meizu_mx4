.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field public static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the flag of scroll speed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the flag of scroll speed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the X value when draging"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragTouchDownY:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the Y value when draging"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mHalfThumbWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the default value of thumbwidth"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mInDragoning:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the falg of draging"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. The progress value after pressing"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTouchDownX:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the flag of touch mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTouchSlopSquare:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. initialization touch square"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 60
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 66
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 82
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 87
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 114
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 60
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 66
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 82
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 87
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 114
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK. calculate the touch square"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 60
    const/16 v3, 0x100

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 66
    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 77
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 82
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 87
    iput v4, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 114
    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 135
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 142
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    const/4 v3, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 153
    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 155
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 600
    :cond_0
    return-void
.end method

.method private getIntFromFloat(F)I
    .locals 1
    .param p1, "num"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. float converted to an integer."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 735
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6
    .param p1, "progress"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. return the position."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 744
    .local v2, "width":I
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v4, v5

    .line 745
    .local v0, "available":I
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 746
    .local v3, "x":I
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .line 747
    .local v1, "prog":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 760
    :goto_0
    return v4

    .line 751
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 752
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v4, v2, v4

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v3

    .line 756
    goto :goto_0

    .line 759
    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v4, v3

    .line 760
    goto :goto_0
.end method

.method private invalidateThumb()V
    .locals 7
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.AbsSeekBar.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 839
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 846
    :goto_0
    return-void

    .line 842
    :cond_0
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int v0, v3, v4

    .line 843
    .local v0, "delta":I
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 844
    .local v2, "thumbBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 845
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private processTouchAction(FLandroid/view/MotionEvent;)V
    .locals 11
    .param p1, "pointX"    # F
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. process TouchAction."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 768
    move v6, p1

    .line 769
    .local v6, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v10, v7, :cond_4

    .line 770
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v7, v10, :cond_2

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v7, :cond_2

    .line 772
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v8}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    .line 775
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7, v10}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v7, v8

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v8}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 779
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7, v10}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 781
    :cond_2
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v7, v10, :cond_3

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-ne v7, v10, :cond_3

    .line 784
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 785
    .local v0, "available":I
    if-eqz v0, :cond_0

    .line 788
    iget v7, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v6, v7

    .line 789
    .local v1, "deltaX":F
    int-to-float v7, v0

    div-float v5, v1, v7

    .line 790
    .local v5, "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 792
    .local v3, "max":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-direct {p0, v8}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7, v10}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 794
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v3    # "max":I
    .end local v5    # "scale":F
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 796
    :cond_4
    const/4 v7, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 797
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v7, v10, :cond_6

    .line 799
    iget v7, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 800
    .restart local v1    # "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 802
    .local v2, "deltaY":F
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 803
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v7, :cond_5

    .line 804
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 805
    iput-boolean v10, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 809
    :cond_5
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v7, :cond_0

    .line 813
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 814
    .restart local v0    # "available":I
    if-eqz v0, :cond_0

    .line 817
    iget v7, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v7, v6, v7

    int-to-float v8, v0

    div-float v5, v7, v8

    .line 818
    .restart local v5    # "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 820
    .restart local v3    # "max":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-direct {p0, v8}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v8

    add-int v4, v7, v8

    .line 821
    .local v4, "progress":I
    invoke-virtual {p0, v4, v10}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 823
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "max":I
    .end local v4    # "progress":I
    .end local v5    # "scale":F
    :cond_6
    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 364
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 365
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 366
    .local v6, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 367
    .local v4, "thumbHeight":I
    sub-int/2addr v0, v6

    .line 370
    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 372
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p3

    int-to-float v9, v0

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v5, v0, v8

    .line 375
    .local v5, "thumbPos":I
    const/high16 v8, -0x80000000

    if-ne p4, v8, :cond_0

    .line 376
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 377
    .local v3, "oldBounds":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 378
    .local v7, "topBound":I
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 385
    .end local v3    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_1

    sub-int v2, v0, v5

    .line 386
    .local v2, "left":I
    :goto_1
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 387
    return-void

    .line 380
    .end local v1    # "bottomBound":I
    .end local v2    # "left":I
    .end local v7    # "topBound":I
    :cond_0
    move v7, p4

    .line 381
    .restart local v7    # "topBound":I
    add-int v1, p4, v4

    .restart local v1    # "bottomBound":I
    goto :goto_0

    :cond_1
    move v2, v5

    .line 385
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 563
    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 564
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 566
    .local v5, "x":I
    const/4 v2, 0x0

    .line 567
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_2

    .line 568
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    .line 569
    const/4 v3, 0x0

    .line 586
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 587
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 589
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 590
    return-void

    .line 570
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    .line 571
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 573
    .end local v3    # "scale":F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 574
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 577
    .end local v3    # "scale":F
    :cond_2
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 578
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_0

    .line 579
    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 580
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 582
    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 583
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v8, 0x0

    .line 326
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 328
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 331
    .local v6, "thumbHeight":I
    :goto_0
    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 333
    .local v7, "trackHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 334
    .local v3, "max":I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 336
    .local v4, "scale":F
    :goto_1
    if-le v6, v7, :cond_4

    .line 337
    if-eqz v5, :cond_0

    .line 338
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 340
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 341
    .local v2, "gapForCenteringTrack":I
    if-eqz v0, :cond_1

    .line 343
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    .end local v2    # "gapForCenteringTrack":I
    :cond_1
    :goto_2
    return-void

    .line 328
    .end local v3    # "max":I
    .end local v4    # "scale":F
    .end local v6    # "thumbHeight":I
    .end local v7    # "trackHeight":I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 334
    .restart local v3    # "max":I
    .restart local v6    # "thumbHeight":I
    .restart local v7    # "trackHeight":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 348
    .restart local v4    # "scale":F
    :cond_4
    if-eqz v0, :cond_5

    .line 350
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 354
    .local v1, "gap":I
    if-eqz v5, :cond_1

    .line 355
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 290
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 292
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 297
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 299
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 301
    .end local v1    # "state":[I
    :cond_1
    return-void

    .line 294
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.AbsSeekBar.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 857
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 859
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->invalidateThumb()V

    .line 861
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 285
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 286
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.AbsSeekBar.Feature recalculate the delta for thumb when height > thumbHeight"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 408
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 416
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 417
    .local v2, "thumbHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v1, v3, v4

    .line 418
    .local v1, "height":I
    const/4 v0, 0x0

    .line 419
    .local v0, "delta":I
    if-le v1, v2, :cond_0

    .line 420
    sub-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 422
    :cond_0
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v0    # "delta":I
    .end local v1    # "height":I
    .end local v2    # "thumbHeight":I
    :cond_1
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 647
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 648
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 649
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 654
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 656
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 658
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 659
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 662
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 665
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 625
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 627
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 642
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 629
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 630
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 631
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 635
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 636
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 637
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 431
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 434
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 435
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 436
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 437
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 438
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 439
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 441
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 442
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 444
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 433
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 431
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 305
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 306
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 307
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 316
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 396
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 399
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 702
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 703
    .local v0, "max":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 705
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 706
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, v1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 713
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 715
    :cond_0
    return-void

    .line 703
    .end local v1    # "scale":F
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 322
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 323
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 607
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 615
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Process the touch event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 558
    :cond_1
    :goto_0
    return v1

    .line 458
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 459
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 461
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 464
    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 465
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v3, v1, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 467
    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 469
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 470
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 471
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 476
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 481
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->invalidateThumb()V

    .line 484
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 487
    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 488
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v3, v1, :cond_5

    .line 489
    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 491
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 492
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 497
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 494
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 504
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_6

    .line 505
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsSeekBar;->processTouchAction(FLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 507
    :cond_6
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 508
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 509
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 514
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->invalidateThumb()V

    .line 517
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 518
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 519
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .line 528
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 529
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsSeekBar;->processTouchAction(FLandroid/view/MotionEvent;)V

    .line 530
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 531
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 543
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 546
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    goto/16 :goto_0

    .line 535
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 536
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 537
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_2

    .line 551
    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_9

    .line 552
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 553
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 555
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 669
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 695
    :goto_0
    return v2

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 673
    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 676
    .local v1, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 677
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 695
    goto :goto_0

    .line 679
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 680
    goto :goto_0

    .line 682
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 683
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 687
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 688
    goto :goto_0

    .line 690
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 691
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 677
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 251
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 252
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 270
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Sets the thumb that will be drawn at the end of the progress meter within the SeekBar."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 174
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    .line 175
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 176
    const/4 v0, 0x1

    .line 180
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 181
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 182
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 192
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 195
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 200
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 203
    :cond_3
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 205
    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 207
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 211
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 214
    .end local v1    # "state":[I
    :cond_4
    return-void

    .line 178
    .end local v0    # "needUpdate":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 240
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 241
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 242
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 724
    iput p1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 725
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 728
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
