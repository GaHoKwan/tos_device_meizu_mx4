.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field private static final USE_CLOSEGUARD:Z

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mAnimationBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimationBackgroundInterpolator:Landroid/view/animation/Interpolator;

.field private mAnimationBackgroundVisible:Z

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "log.closeguard.Animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 105
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 111
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 117
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 124
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 130
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 135
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 140
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 157
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 162
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 169
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 195
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 200
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 202
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 203
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 205
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 206
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 207
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 208
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 210
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 1178
    iput-object v4, p0, Landroid/view/animation/Animation;->mAnimationBackground:Landroid/graphics/drawable/Drawable;

    .line 1179
    iput-object v4, p0, Landroid/view/animation/Animation;->mAnimationBackgroundInterpolator:Landroid/view/animation/Interpolator;

    .line 222
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 105
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 111
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 117
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 124
    iput-boolean v6, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 130
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 135
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 140
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 157
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 162
    iput v5, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 169
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 195
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 200
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 202
    iput-boolean v6, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 203
    iput-boolean v6, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 205
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 206
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 207
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 208
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 210
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 1178
    iput-object v7, p0, Landroid/view/animation/Animation;->mAnimationBackground:Landroid/graphics/drawable/Drawable;

    .line 1179
    iput-object v7, p0, Landroid/view/animation/Animation;->mAnimationBackgroundInterpolator:Landroid/view/animation/Interpolator;

    .line 233
    sget-object v3, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 236
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 238
    const/16 v3, 0x9

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 239
    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 240
    const/4 v3, 0x4

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 242
    const/4 v3, 0x6

    iget v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 243
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 245
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 247
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 249
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 251
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 254
    .local v2, "resID":I
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/Animation;->mAnimationBackground:Landroid/graphics/drawable/Drawable;

    .line 257
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/animation/Animation;->mAnimationBackgroundVisible:Z

    .line 260
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 264
    .local v1, "backgroundInterpolatorResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    if-lez v2, :cond_0

    .line 267
    invoke-virtual {p0, p1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 271
    :cond_0
    if-lez v1, :cond_1

    .line 272
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/Animation;->mAnimationBackgroundInterpolator:Landroid/view/animation/Interpolator;

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 278
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationRepeat()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationStart()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 992
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 321
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 324
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 326
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 283
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 284
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 285
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 286
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 287
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 334
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 335
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 337
    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 830
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1072
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1078
    return-void

    .line 1076
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAnimationBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/view/animation/Animation;->mAnimationBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAnimationBackgroundInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/view/animation/Animation;->mAnimationBackgroundInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getAnimationBackgroundVisible()Z
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mAnimationBackgroundVisible:Z

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 702
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 1031
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1032
    .local v2, "tempRegion":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1034
    .local v0, "previousRegion":Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1035
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1037
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1038
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1039
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1041
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1043
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1044
    .local v3, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1046
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1047
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1048
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1049
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 712
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 692
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 853
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 854
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 857
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    .line 858
    .local v5, "startOffset":J
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 860
    .local v0, "duration":J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_9

    .line 861
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v7, v5

    sub-long v7, p1, v7

    long-to-float v7, v7

    long-to-float v8, v0

    div-float v4, v7, v8

    .line 868
    .local v4, "normalizedTime":F
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_b

    const/4 v2, 0x1

    .line 869
    .local v2, "expired":Z
    :goto_1
    if-nez v2, :cond_c

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 871
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 873
    :cond_1
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-gez v7, :cond_2

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v7, :cond_7

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-lez v7, :cond_3

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v7, :cond_7

    .line 874
    :cond_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v7, :cond_4

    .line 875
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 876
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 877
    sget-boolean v7, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    if-eqz v7, :cond_4

    .line 878
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v8, "cancel or detach or getTransformation"

    invoke-virtual {v7, v8}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 882
    :cond_4
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 884
    :cond_5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_6

    .line 885
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v4, v7, v4

    .line 888
    :cond_6
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 889
    .local v3, "interpolatedTime":F
    invoke-virtual {p0, v3, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 892
    .end local v3    # "interpolatedTime":F
    :cond_7
    if-eqz v2, :cond_8

    .line 893
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v8, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-ne v7, v8, :cond_d

    .line 894
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v7, :cond_8

    .line 895
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 896
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    .line 897
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 915
    :cond_8
    :goto_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v7, :cond_11

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v7, :cond_11

    .line 916
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 917
    const/4 v7, 0x1

    .line 920
    :goto_4
    return v7

    .line 865
    .end local v2    # "expired":Z
    .end local v4    # "normalizedTime":F
    :cond_9
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v7, p1, v7

    if-gez v7, :cond_a

    const/4 v4, 0x0

    .restart local v4    # "normalizedTime":F
    :goto_5
    goto/16 :goto_0

    .end local v4    # "normalizedTime":F
    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    .line 868
    .restart local v4    # "normalizedTime":F
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 869
    .restart local v2    # "expired":Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 900
    :cond_d
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v7, :cond_e

    .line 901
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 904
    :cond_e
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 905
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-nez v7, :cond_10

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 908
    :cond_f
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 909
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 911
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_3

    .line 905
    :cond_10
    const/4 v7, 0x0

    goto :goto_6

    .line 920
    :cond_11
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    goto :goto_4
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .prologue
    .line 958
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 959
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 367
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 1060
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1061
    .local v1, "region":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1063
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 1064
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v2, :cond_0

    .line 1065
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1066
    .local v0, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1068
    .end local v0    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 297
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 298
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 299
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 300
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 301
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 302
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 304
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .prologue
    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1014
    .end local p2    # "value":F
    :goto_0
    :pswitch_0
    return p2

    .line 1010
    .restart local p2    # "value":F
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr p2, v0

    goto :goto_0

    .line 1012
    :pswitch_2
    int-to-float v0, p4

    mul-float/2addr p2, v0

    goto :goto_0

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 9
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 464
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 465
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 466
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 467
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long v0, v2, v4

    .line 472
    .local v0, "dur":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    .line 473
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 474
    move-wide v0, p1

    .line 477
    :cond_2
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_3

    .line 478
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 479
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_0

    .line 485
    :cond_3
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 489
    :cond_4
    div-long v2, p1, v0

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 490
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v2, :cond_0

    .line 491
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 502
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 503
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 504
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 819
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 820
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "bg"    # I

    .prologue
    .line 645
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    .line 646
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .param p1, "detachWallpaper"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 672
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .param p1, "durationMillis"    # J

    .prologue
    .line 447
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 451
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .param p1, "fillAfter"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 625
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .param p1, "fillBefore"    # Z

    .prologue
    .line 608
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 609
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .param p1, "fillEnabled"    # Z

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 591
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 410
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 411
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 421
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 422
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 375
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 383
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 390
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 398
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 399
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 562
    if-gez p1, :cond_0

    .line 563
    const/4 p1, -0x1

    .line 565
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 566
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 549
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 550
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .param p1, "startOffset"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 435
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTimeMillis"    # J

    .prologue
    const/4 v0, 0x0

    .line 517
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 518
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 519
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 520
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 522
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .param p1, "zAdjustment"    # I

    .prologue
    .line 635
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 636
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 529
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 530
    return-void
.end method

.method public startNow()V
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 538
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x1

    return v0
.end method
