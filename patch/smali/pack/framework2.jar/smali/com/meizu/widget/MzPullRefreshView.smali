.class public Lcom/meizu/widget/MzPullRefreshView;
.super Ljava/lang/Object;
.source "MzPullRefreshView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "jiangjunlei@SDK.MzPullRefreshView.Feature class used by pulling refresh"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field private static DEFAULT_COLOR:Ljava/lang/String;

.field private static DRAW_ARC_VIEW:I

.field private static DRAW_LINE_VIEW:I

.field private static INVALID:I


# instance fields
.field private COST_TIME_ARC:I

.field private COST_TIME_LINE:I

.field private colorArray:[Ljava/lang/String;

.field private mAngleAnim:Landroid/animation/ObjectAnimator;

.field private mAnimHeight:F

.field private mAnimSign:F

.field private mAnimationDistance:I

.field private mArcAnimationRun:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCentX:F

.field private mCentY:F

.field private mCircleBounds:Landroid/graphics/RectF;

.field private mColorValueArray:Landroid/content/res/TypedArray;

.field private mCurrentOverScrollDistance:I

.field private mDrawType:I

.field private mEndLine:I

.field private mEndPointArray:Landroid/content/res/TypedArray;

.field private mExtraOffset:I

.field private mForegroundColor:I

.field private mHandler:Landroid/os/Handler;

.field private mIsSpringBack:Z

.field private mLineAnimationRun:Z

.field private mLineRect:Landroid/graphics/RectF;

.field private mMaxPullHeight:F

.field private mMinPullHeight:F

.field private mOverscrollDistance:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintArc:Landroid/graphics/Paint;

.field private mPaintArcBack:Landroid/graphics/Paint;

.field private mPaintLine:Landroid/graphics/Paint;

.field private mPaintLineBack:Landroid/graphics/Paint;

.field private mPaintLineWidth:F

.field private mPaintOffset:F

.field private mPaintWidth:I

.field private mPull2Refresh:Ljava/lang/String;

.field private mPullGoRefresh:Ljava/lang/String;

.field private mRadius:F

.field private mRefreshing:Ljava/lang/String;

.field private mRingWidth:F

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowArcDistance:I

.field private mStartLine:I

.field private mStartPoint:F

.field private mStartPointArray:Landroid/content/res/TypedArray;

.field private mStartTime:J

.field private mTextColor:I

.field private mTextMarginTop:I

.field private mTextSize:I

.field private mTextWidth:I

.field private mTotalFrame:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    sput v0, Lcom/meizu/widget/MzPullRefreshView;->INVALID:I

    .line 69
    const-string v0, "dodgerBlue"

    sput-object v0, Lcom/meizu/widget/MzPullRefreshView;->DEFAULT_COLOR:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/meizu/widget/MzPullRefreshView;->DRAW_LINE_VIEW:I

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/meizu/widget/MzPullRefreshView;->DRAW_ARC_VIEW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "colorValue"    # I
    .param p3, "drawType"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    .line 32
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineRect:Landroid/graphics/RectF;

    .line 33
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    .line 34
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    .line 35
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 36
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLine:Landroid/graphics/Paint;

    .line 37
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    .line 38
    iput v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    .line 49
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    .line 50
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    .line 51
    iput v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    .line 52
    iput v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimSign:F

    .line 53
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mAngleAnim:Landroid/animation/ObjectAnimator;

    .line 54
    iput-boolean v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    .line 55
    iput-boolean v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    .line 56
    iput-boolean v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mIsSpringBack:Z

    .line 57
    iput-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCanvas:Landroid/graphics/Canvas;

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextWidth:I

    .line 61
    const/16 v0, 0x28

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextSize:I

    .line 62
    const/16 v0, 0x1e

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextMarginTop:I

    .line 64
    iput v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    .line 66
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintOffset:F

    .line 72
    iput v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextColor:I

    .line 73
    sget v0, Lcom/meizu/widget/MzPullRefreshView;->INVALID:I

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mForegroundColor:I

    .line 74
    sget v0, Lcom/meizu/widget/MzPullRefreshView;->DRAW_ARC_VIEW:I

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mDrawType:I

    .line 87
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_LINE:I

    .line 88
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_ARC:I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chocolate"

    aput-object v1, v0, v4

    const-string v1, "coral"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "dodgerBlue"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fireBrick"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "forestGreeen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LimeGreen"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "peru"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tomato"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->colorArray:[Ljava/lang/String;

    .line 383
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mHandler:Landroid/os/Handler;

    .line 385
    new-instance v0, Lcom/meizu/widget/MzPullRefreshView$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/MzPullRefreshView$1;-><init>(Lcom/meizu/widget/MzPullRefreshView;)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mRunnable:Ljava/lang/Runnable;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mOverscrollDistance:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mColorValueArray:Landroid/content/res/TypedArray;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mMinPullHeight:F

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimHeight:F

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextSize:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextMarginTop:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mStartPointArray:Landroid/content/res/TypedArray;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mEndPointArray:Landroid/content/res/TypedArray;

    .line 108
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mEndPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTotalFrame:I

    .line 109
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintOffset:F

    .line 111
    iput p3, p0, Lcom/meizu/widget/MzPullRefreshView;->mDrawType:I

    .line 112
    iput p2, p0, Lcom/meizu/widget/MzPullRefreshView;->mForegroundColor:I

    .line 113
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mColorValueArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPull2Refresh:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mRefreshing:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPullGoRefresh:Ljava/lang/String;

    .line 118
    iput v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mStartLine:I

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 125
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 132
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLine:Landroid/graphics/Paint;

    .line 138
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLine:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    invoke-virtual {p0, p4}, Lcom/meizu/widget/MzPullRefreshView;->initView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/MzPullRefreshView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/MzPullRefreshView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/MzPullRefreshView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/MzPullRefreshView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/MzPullRefreshView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/MzPullRefreshView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_LINE:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/MzPullRefreshView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mTotalFrame:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/MzPullRefreshView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzPullRefreshView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawArcView(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 193
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v23

    .line 194
    .local v23, "nowTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    const/16 v19, 0x0

    .line 196
    .local v19, "currentCircleY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    mul-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    add-int v19, v3, v4

    .line 203
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v26

    .line 204
    .local v26, "restoreCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int v4, v4, v19

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    if-ge v3, v4, :cond_2

    .line 251
    :goto_1
    return-void

    .line 198
    .end local v26    # "restoreCount":I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    mul-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    mul-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    add-int v19, v3, v4

    goto :goto_0

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    add-int v19, v3, v4

    goto/16 :goto_0

    .line 210
    .restart local v26    # "restoreCount":I
    :cond_2
    const/4 v10, 0x0

    .line 211
    .local v10, "distance":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 213
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    if-gt v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    if-lt v3, v4, :cond_4

    .line 214
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    sub-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x168

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    sub-int/2addr v4, v7

    div-int/2addr v3, v4

    int-to-float v10, v3

    .line 220
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v17, v3, v4

    .line 221
    .local v17, "baseX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v18, v3, v4

    .line 222
    .local v18, "baseY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v20

    .line 223
    .local v20, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v21, v3, v4

    .line 224
    .local v21, "fontTotalHeight":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v21, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    add-float v25, v3, v4

    .line 225
    .local v25, "offY":F
    add-float v3, v18, v25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mTextMarginTop:I

    int-to-float v4, v4

    add-float v22, v3, v4

    .line 228
    .local v22, "newY":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    if-eqz v3, :cond_6

    .line 229
    const-wide/16 v3, -0x5a

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mStartTime:J

    sub-long v7, v23, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_ARC:I

    int-to-long v11, v9

    rem-long/2addr v7, v11

    const-wide/16 v11, 0x168

    mul-long/2addr v7, v11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_ARC:I

    int-to-long v11, v9

    div-long/2addr v7, v11

    add-long/2addr v3, v7

    long-to-float v5, v3

    .line 230
    .local v5, "startPoint":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/widget/MzPullRefreshView;->getArcDistance(F)F

    move-result v6

    .line 231
    .local v6, "arcAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mRefreshing:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    .end local v5    # "startPoint":F
    .end local v6    # "arcAngle":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40a00000    # 5.0f

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x40a00000    # 5.0f

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    move/from16 v0, v19

    int-to-float v8, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->mTextWidth:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x40a00000    # 5.0f

    add-float/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    move/from16 v0, v19

    int-to-float v11, v0

    add-float/2addr v9, v11

    add-float v9, v9, v22

    add-float v9, v9, v21

    float-to-int v9, v9

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 250
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 215
    .end local v17    # "baseX":F
    .end local v18    # "baseY":F
    .end local v20    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v21    # "fontTotalHeight":F
    .end local v22    # "newY":F
    .end local v25    # "offY":F
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    if-ge v3, v4, :cond_5

    .line 216
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 217
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    if-le v3, v4, :cond_3

    .line 218
    const/high16 v10, 0x43b40000    # 360.0f

    goto/16 :goto_2

    .line 233
    .restart local v17    # "baseX":F
    .restart local v18    # "baseY":F
    .restart local v20    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v21    # "fontTotalHeight":F
    .restart local v22    # "newY":F
    .restart local v25    # "offY":F
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    if-lt v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mIsSpringBack:Z

    if-nez v3, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPullGoRefresh:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 236
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mIsSpringBack:Z

    if-eqz v3, :cond_8

    .line 237
    const-wide/16 v3, -0x5a

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/meizu/widget/MzPullRefreshView;->mStartTime:J

    sub-long v7, v23, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_ARC:I

    int-to-long v11, v9

    rem-long/2addr v7, v11

    const-wide/16 v11, 0x168

    mul-long/2addr v7, v11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_ARC:I

    int-to-long v11, v9

    div-long/2addr v7, v11

    add-long/2addr v3, v7

    long-to-float v5, v3

    .line 238
    .restart local v5    # "startPoint":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    float-to-int v4, v10

    mul-int/lit16 v4, v4, 0xff

    div-int/lit16 v4, v4, 0x168

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPull2Refresh:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v14, 0x42900000    # 72.0f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v13, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 243
    .end local v5    # "startPoint":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzPullRefreshView;->mPull2Refresh:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/MzPullRefreshView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private drawLineView(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    .line 163
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 164
    .local v8, "nowTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 166
    .local v10, "restoreCount":I
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    div-float/2addr v2, v11

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 167
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    int-to-float v0, v0

    iget v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    iget-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    if-eqz v0, :cond_0

    .line 177
    iget-wide v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mStartTime:J

    sub-long v4, v8, v4

    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_LINE:I

    int-to-long v11, v0

    rem-long/2addr v4, v11

    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/MzPullRefreshView;->getArrayIndex(J)I

    move-result v7

    .line 178
    .local v7, "index":I
    const/4 v3, 0x0

    .line 179
    .local v3, "startX":F
    const/4 v6, 0x0

    .line 181
    .local v6, "endX":F
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mStartPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mEndPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mStartPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v0, v2

    .line 183
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mEndPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 185
    .end local v6    # "endX":F
    .local v1, "endX":F
    :goto_1
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    int-to-float v2, v0

    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    int-to-float v0, v0

    iget v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintOffset:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineBack:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    .end local v1    # "endX":F
    .end local v3    # "startX":F
    .end local v7    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    iget v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    iget-object v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v11, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0xa

    iget v12, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v2, v4, v5, v11}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 188
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 189
    return-void

    .line 168
    :cond_1
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    div-float/2addr v2, v11

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    if-gt v0, v2, :cond_2

    .line 169
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    div-float/2addr v0, v11

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v11

    iget v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    goto/16 :goto_0

    .line 171
    :cond_2
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintLineWidth:F

    goto/16 :goto_0

    .restart local v3    # "startX":F
    .restart local v6    # "endX":F
    .restart local v7    # "index":I
    :cond_3
    move v1, v6

    .end local v6    # "endX":F
    .restart local v1    # "endX":F
    goto :goto_1
.end method

.method private getArcDistance(F)F
    .locals 6
    .param p1, "startPoint"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "distance":F
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    cmpg-float v1, p1, v4

    if-gtz v1, :cond_1

    .line 299
    add-float v0, p1, v2

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    cmpl-float v1, p1, v4

    if-lez v1, :cond_2

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_2

    .line 301
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 302
    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_3

    .line 303
    sub-float v1, p1, v2

    div-float/2addr v1, v5

    sub-float v0, v2, v1

    goto :goto_0

    .line 304
    :cond_3
    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 305
    const/high16 v1, 0x42340000    # 45.0f

    sub-float v2, p1, v3

    div-float/2addr v2, v5

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method private getArrayIndex(J)I
    .locals 5
    .param p1, "ctime"    # J

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "index":I
    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mTotalFrame:I

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget v3, p0, Lcom/meizu/widget/MzPullRefreshView;->COST_TIME_LINE:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 279
    return v0
.end method

.method private getColorValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "colorName"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    sget-object p1, Lcom/meizu/widget/MzPullRefreshView;->DEFAULT_COLOR:Ljava/lang/String;

    .line 266
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->colorArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->colorArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mColorValueArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mColorValueArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/meizu/widget/MzPullRefreshView;->INVALID:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 273
    :goto_1
    return v1

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_2
    sget v1, Lcom/meizu/widget/MzPullRefreshView;->INVALID:I

    goto :goto_1
.end method

.method private getLineEndX(FI)F
    .locals 3
    .param p1, "startX"    # F
    .param p2, "viewWidth"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "endX":F
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    div-int/lit8 v1, p2, 0x4

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 286
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v0, v1, v2

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    div-int/lit8 v1, p2, 0x4

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 288
    mul-int/lit8 v1, p2, 0x7

    div-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    add-float v0, p1, v1

    goto :goto_0

    .line 289
    :cond_2
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float v1, p2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 290
    mul-int/lit8 v1, p2, 0x7

    int-to-float v1, v1

    const/high16 v2, 0x42140000    # 37.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private setCircleBounds()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 254
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentY:F

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentY:F

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 257
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentY:F

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 258
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 151
    iput-object p1, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineRect:Landroid/graphics/RectF;

    .line 154
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentX:F

    .line 155
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentY:F

    .line 156
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentX:F

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 157
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentY:F

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 158
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentX:F

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 159
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mCentY:F

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 160
    return-void
.end method

.method public resetSpringFlag(Z)V
    .locals 0
    .param p1, "isSpringBack"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/meizu/widget/MzPullRefreshView;->mIsSpringBack:Z

    .line 338
    return-void
.end method

.method public setAnimationDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    .line 381
    return-void
.end method

.method public setCurrentOverScrollDistance(ILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "currentOverScrollDistance"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 312
    if-lez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    .line 317
    sget v0, Lcom/meizu/widget/MzPullRefreshView;->DRAW_ARC_VIEW:I

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mDrawType:I

    if-ne v0, v1, :cond_4

    .line 318
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mShowArcDistance:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    if-ge v0, v1, :cond_3

    .line 319
    iput-boolean v3, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    .line 328
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/meizu/widget/MzPullRefreshView;->drawArcView(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 321
    :cond_3
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mAnimationDistance:I

    if-ge v0, v1, :cond_2

    .line 325
    iput-boolean v3, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    goto :goto_1

    .line 329
    :cond_4
    sget v0, Lcom/meizu/widget/MzPullRefreshView;->DRAW_LINE_VIEW:I

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mDrawType:I

    if-ne v0, v1, :cond_0

    .line 330
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mMaxPullHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 331
    iput-boolean v3, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    .line 332
    :cond_5
    invoke-direct {p0, p2}, Lcom/meizu/widget/MzPullRefreshView;->drawLineView(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setExtraOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/meizu/widget/MzPullRefreshView;->mExtraOffset:I

    .line 369
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/meizu/widget/MzPullRefreshView;->mOverscrollDistance:I

    .line 377
    return-void
.end method

.method public setStartTime()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    iget-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mDrawType:I

    sget v1, Lcom/meizu/widget/MzPullRefreshView;->DRAW_LINE_VIEW:I

    if-ne v0, v1, :cond_3

    .line 353
    iput-boolean v3, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    .line 354
    iput-boolean v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    .line 360
    :cond_2
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mStartTime:J

    .line 362
    iget-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/widget/MzPullRefreshView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 355
    :cond_3
    iget v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mDrawType:I

    sget v1, Lcom/meizu/widget/MzPullRefreshView;->DRAW_ARC_VIEW:I

    if-ne v0, v1, :cond_2

    .line 356
    iput-boolean v2, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    .line 357
    iput-boolean v3, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    goto :goto_1
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "colorValue"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/meizu/widget/MzPullRefreshView;->mTextColor:I

    .line 373
    return-void
.end method

.method public stopDrawArcAnimation()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mArcAnimationRun:Z

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mIsSpringBack:Z

    .line 343
    return-void
.end method

.method public stopDrawLineAnimation()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzPullRefreshView;->mLineAnimationRun:Z

    .line 347
    return-void
.end method
