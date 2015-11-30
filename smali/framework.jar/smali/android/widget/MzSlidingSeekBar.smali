.class public Landroid/widget/MzSlidingSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "MzSlidingSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final DRAGGING_DURATION:I = 0x1

.field private static final DURATION:I = 0x12c

.field private static final MAX_LEVEL:F = 10000.0f

.field private static final MSG_ANIMATE_START:I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentEndLevel:I

.field private mCurrentStartLevel:I

.field private mEndLevel:I

.field private mHandler:Landroid/os/Handler;

.field private mIsDragging:Ljava/lang/reflect/Field;

.field private mMax:I

.field private mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mStartLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MzSlidingSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MzSlidingSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/16 v2, 0x64

    iput v2, p0, Landroid/widget/MzSlidingSeekBar;->mMax:I

    .line 63
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 123
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 127
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 131
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mIsDragging"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MzSlidingSeekBar;->mIsDragging:Ljava/lang/reflect/Field;

    .line 132
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar;->mIsDragging:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 63
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Landroid/widget/MzSlidingSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/MzSlidingSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Landroid/widget/MzSlidingSeekBar;->mCurrentStartLevel:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/MzSlidingSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzSlidingSeekBar;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/MzSlidingSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/MzSlidingSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Landroid/widget/MzSlidingSeekBar;->mCurrentEndLevel:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/MzSlidingSeekBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzSlidingSeekBar;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/MzSlidingSeekBar;->mEndLevel:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/MzSlidingSeekBar;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzSlidingSeekBar;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mIsDragging:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/MzSlidingSeekBar;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzSlidingSeekBar;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 166
    iget v8, p0, Landroid/widget/MzSlidingSeekBar;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/MzSlidingSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 167
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 168
    .local v6, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 169
    .local v4, "thumbHeight":I
    sub-int/2addr v0, v6

    .line 172
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getThumbOffset()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 174
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p3

    int-to-float v9, v0

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v5, v0, v8

    .line 178
    .local v5, "thumbPos":I
    const/high16 v8, -0x80000000

    if-ne p4, v8, :cond_0

    .line 179
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 180
    .local v3, "oldBounds":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 181
    .local v7, "topBound":I
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 188
    .end local v3    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/MzSlidingSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_1

    sub-int v2, v0, v5

    .line 189
    .local v2, "left":I
    :goto_1
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    return-void

    .line 183
    .end local v1    # "bottomBound":I
    .end local v2    # "left":I
    .end local v7    # "topBound":I
    :cond_0
    move v7, p4

    .line 184
    .restart local v7    # "topBound":I
    add-int v1, p4, v4

    .restart local v1    # "bottomBound":I
    goto :goto_0

    :cond_1
    move v2, v5

    .line 188
    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 287
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MzSlidingSeekBar;->mEndLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 283
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 291
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 259
    .local v1, "scale":F
    iget v3, p0, Landroid/widget/MzSlidingSeekBar;->mCurrentEndLevel:I

    iget v4, p0, Landroid/widget/MzSlidingSeekBar;->mCurrentStartLevel:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Landroid/widget/MzSlidingSeekBar;->mCurrentStartLevel:I

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 261
    .local v0, "level":F
    iget-object v3, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 263
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 264
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getWidth()I

    move-result v3

    const v4, 0x461c4000    # 10000.0f

    div-float v4, v0, v4

    const/high16 v5, -0x80000000

    invoke-direct {p0, v3, v2, v4, v5}, Landroid/widget/MzSlidingSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->postInvalidate()V

    .line 274
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 224
    const-class v0, Landroid/widget/MzSlidingSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 230
    const-class v0, Landroid/widget/MzSlidingSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Landroid/widget/MzSlidingSeekBar$1;

    invoke-direct {v0, p0}, Landroid/widget/MzSlidingSeekBar$1;-><init>(Landroid/widget/MzSlidingSeekBar;)V

    iput-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mHandler:Landroid/os/Handler;

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onProgressRefresh(FZ)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    const v3, 0x461c4000    # 10000.0f

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 146
    mul-float v1, p1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MzSlidingSeekBar;->mEndLevel:I

    .line 148
    iget-object v1, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/MzSlidingSeekBar;->mStartLevel:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 150
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/MzSlidingSeekBar;->mStartLevel:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/MzSlidingSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 156
    iget-object v1, p0, Landroid/widget/MzSlidingSeekBar;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Landroid/widget/MzSlidingSeekBar;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :cond_0
    iget-object v1, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/MzSlidingSeekBar;IZ)V

    .line 163
    :cond_1
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 208
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/MzSlidingSeekBar;)V

    .line 211
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 216
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/MzSlidingSeekBar;)V

    .line 219
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 202
    iput-object p1, p0, Landroid/widget/MzSlidingSeekBar;->mOnSeekBarChangeListener:Landroid/widget/MzSlidingSeekBar$OnSeekBarChangeListener;

    .line 203
    return-void
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 238
    const/4 v2, 0x0

    .line 240
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    .line 241
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v0

    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/widget/MzSlidingSeekBar;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 248
    :cond_0
    if-eqz v2, :cond_2

    .end local v2    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iput-object v2, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object v3, p0, Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    iput v3, p0, Landroid/widget/MzSlidingSeekBar;->mStartLevel:I

    .line 252
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_1
    monitor-exit p0

    return-void

    .restart local v2    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v2, v1

    .line 248
    goto :goto_0

    .line 236
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
