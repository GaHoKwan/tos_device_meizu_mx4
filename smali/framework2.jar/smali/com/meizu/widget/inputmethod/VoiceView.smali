.class public Lcom/meizu/widget/inputmethod/VoiceView;
.super Lcom/meizu/widget/inputmethod/CoverView;
.source "VoiceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;,
        Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;
    }
.end annotation


# static fields
.field public static final ACTION_AMP_REFRESH:Ljava/lang/String; = "action_amp_refresh"

.field public static final ACTION_BEGIN_RECORD:Ljava/lang/String; = "action_begin_record"

.field public static final ACTION_CANCEL_RECORD:Ljava/lang/String; = "action_cancel_record"

.field public static final ACTION_PAUSE_RECORD:Ljava/lang/String; = "action_pause_record"

.field public static final ACTION_RESUME_RECORD:Ljava/lang/String; = "action_resume_record"

.field public static final ACTION_STOP_RECORD:Ljava/lang/String; = "action_stop_record"

.field private static final AMP_COLOR:I = -0xaa4386

.field private static final ANIMATE_STATE_START:I = 0x2

.field private static final ANIMATE_STATE_STOPED:I = 0x0

.field private static final ANIMATE_STATE_STOPING:I = 0x1

.field private static final ANIM_TIME:I = 0x19

.field private static final DEBUG:Z = false

.field private static final DIRECTION_DOWN:I = 0x1

.field private static final DIRECTION_UP:I = 0x0

.field private static final DIRECTION_UPDOWN:I = 0x2

.field private static final FIXED_POINT_SIZE:I = 0x0

.field public static final KEY_AMP_MAX_RADIUS:Ljava/lang/String; = "key_amp_max_radius"

.field public static final KEY_AMP_MIN_RADIUS:Ljava/lang/String; = "key_amp_min_radius"

.field public static final KEY_CURRENT_COLOR:Ljava/lang/String; = "key_current_time_color"

.field public static final KEY_CURRENT_RADIUX:Ljava/lang/String; = "key_current_radiux"

.field public static final KEY_CURRENT_RECORD_TIME:Ljava/lang/String; = "key_current_record_time"

.field public static final KEY_RECORD_TOKEN:Ljava/lang/String; = "key_record_token"

.field private static final LINE_COLOR_CANCLE:I = -0x7f139ca8

.field private static final LINE_COLOR_NORMAL:I = 0x33000000

.field private static final LINE_COLOR_PRESSED:I = -0x7faa4386

.field private static final LONG_CLICK_FLAG:I = 0x1

.field private static final MAX_SPECTRUM_NUM:I = 0x64

.field private static final MSEC_RUN_GAP:I = 0xa

.field private static final NOT_CLICK_FLAG:I = -0x1

.field private static final SCALE_VALUE:F = 0.9f

.field private static final SHORT_CLICK_FLAG:I = 0x0

.field public static final STATE_CANCEL:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceView"

.field private static final TEXT_BACKGROUND_CANCLE:I = 0x19ec6358

.field private static final TEXT_BACKGROUND_NORMAL:I = -0x25000001

.field private static final TEXT_BACKGROUND_PRESSED:I = 0x1955bc7a

.field private static final TEXT_CANCLE_TIP:I = 0x4d000000

.field private static final TEXT_COLOR:I = -0xaa4386

.field private static final TEXT_COLOR_CANCEL:I = -0xa000

.field public static final TIME_COLOR:I = -0xaa4386

.field private static final TIME_LIMIT_COLOR:I = -0x5f005b00

.field private static final TOUCH_SLOP:I = 0x14

.field private static cancleTipSize:I

.field private static textSize:I

.field private static timeSize:I


# instance fields
.field private clickAeraPaddingBottom:I

.field private clickAeraPaddingTop:I

.field private drCancel:Landroid/graphics/drawable/Drawable;

.field private drNormal:Landroid/graphics/drawable/Drawable;

.field private drPressed:Landroid/graphics/drawable/Drawable;

.field private isDoScaleLarger:Z

.field private isDoScaleLittle:Z

.field private mCancleTextPaint:Landroid/graphics/Paint;

.field private mClickFlag:I

.field private mCnt:I

.field private mColor:I

.field private mComposePathEffect:Landroid/graphics/ComposePathEffect;

.field private mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

.field private mCurrentRecordTime:J

.field private mCurrentState:I

.field private mCurrentTimeColor:I

.field private mDrawAnimaCnt:I

.field private mEnterDrawTimeLimtCnt:I

.field private mForePaint:Landroid/graphics/Paint;

.field private mInitialRingWidth:I

.field private mIsNormalWidth:Z

.field private volatile mIsRecording:Z

.field private mLastDownX:I

.field private mLastDownY:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

.field private mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

.field private mMaxHeight:F

.field private mMinHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPoints:[F

.field private mPreOffset:I

.field private mPreRingWidth:I

.field private mPressToken:J

.field mPressed:Z

.field private mRadius:I

.field private mRateY:F

.field private mRect:Landroid/graphics/Rect;

.field private mResetTimes:I

.field private mRingWidth:I

.field private mScaleLargerAnim:Landroid/animation/ObjectAnimator;

.field private mScaleLittleAnim:Landroid/animation/ObjectAnimator;

.field private mSpectrumNum:I

.field private mSpectrumSpacing:F

.field private mSpectrumWidth:F

.field private mStartTime:J

.field private mTextBackgroundPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimePaint:Landroid/graphics/Paint;

.field private mToken:J

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVolumeAnimator:Landroid/animation/ValueAnimator;

.field private mVolumes:[F

.field private maxRadius:I

.field private minRadius:I

.field private model:[F

.field private picHeight:I

.field private picNormalHeight:I

.field private picNormalWidth:I

.field private picWidth:I

.field pointInRecordRect:Z

.field private pointInterval:F

.field private pointRadius:F

.field private recordTimePaddingRight:I

.field private recordTimePaddingTop:I

.field private scale:F

.field private textCancel:Ljava/lang/String;

.field private textCancleTip:Ljava/lang/String;

.field private textNormal:Ljava/lang/String;

.field private textOver:Ljava/lang/String;

.field private textPaddingTop:I

.field private visualine_corner_width:F

.field private visualine_direction:I

.field private wavePaddingBottom:I

.field private wavePaddingLeft:I

.field private wavePaddingRight:I

.field private wavePixY:I

.field private width_dis:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x12

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    .line 148
    const/16 v0, 0x16

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    .line 150
    const/16 v0, 0xe

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->cancleTipSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, -0xaa4386

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;)V

    .line 74
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 78
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 80
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 82
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 83
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 85
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 86
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    .line 87
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    .line 88
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    .line 89
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mStartTime:J

    .line 90
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    .line 120
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 122
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mResetTimes:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 130
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 131
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 132
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 136
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 137
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 138
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 139
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 141
    const-string v0, "\u6309\u4f4f\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 142
    const-string v0, "\u677e\u5f00\u53d6\u6d88"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 143
    const-string v0, "\u653e\u5f00\u7ed3\u675f"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textOver:Ljava/lang/String;

    .line 144
    const-string v0, "\u6ed1\u52a8\u5230\u6b64\u533a\u57df\u53d6\u6d88"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancleTip:Ljava/lang/String;

    .line 152
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 154
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 155
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 157
    const/16 v0, 0x1e8

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    .line 159
    const/16 v0, 0x384

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingBottom:I

    .line 161
    const/16 v0, 0x21

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingLeft:I

    .line 162
    const/4 v0, 0x7

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingRight:I

    .line 163
    const/16 v0, 0x226

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingBottom:I

    .line 164
    const/16 v0, 0x26

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePixY:I

    .line 180
    iput v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    .line 199
    const v0, 0x40a66666    # 5.2f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumWidth:F

    .line 200
    const/16 v0, 0x2b

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    .line 201
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumSpacing:F

    .line 202
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRateY:F

    .line 203
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    .line 204
    const v0, 0x42816666    # 64.7f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMaxHeight:F

    .line 205
    iput v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mColor:I

    .line 212
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->scale:F

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->width_dis:F

    .line 214
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->visualine_direction:I

    .line 445
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 1117
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    .line 1118
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    .line 1119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 1126
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, -0xaa4386

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 78
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 80
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 82
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 83
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 85
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 86
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    .line 87
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    .line 88
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    .line 89
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mStartTime:J

    .line 90
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    .line 120
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 122
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mResetTimes:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 130
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 131
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 132
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 136
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 137
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 138
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 139
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 141
    const-string v0, "\u6309\u4f4f\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 142
    const-string v0, "\u677e\u5f00\u53d6\u6d88"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 143
    const-string v0, "\u653e\u5f00\u7ed3\u675f"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textOver:Ljava/lang/String;

    .line 144
    const-string v0, "\u6ed1\u52a8\u5230\u6b64\u533a\u57df\u53d6\u6d88"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancleTip:Ljava/lang/String;

    .line 152
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 154
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 155
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 157
    const/16 v0, 0x1e8

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    .line 159
    const/16 v0, 0x384

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingBottom:I

    .line 161
    const/16 v0, 0x21

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingLeft:I

    .line 162
    const/4 v0, 0x7

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingRight:I

    .line 163
    const/16 v0, 0x226

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingBottom:I

    .line 164
    const/16 v0, 0x26

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePixY:I

    .line 180
    iput v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    .line 199
    const v0, 0x40a66666    # 5.2f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumWidth:F

    .line 200
    const/16 v0, 0x2b

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    .line 201
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumSpacing:F

    .line 202
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRateY:F

    .line 203
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    .line 204
    const v0, 0x42816666    # 64.7f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMaxHeight:F

    .line 205
    iput v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mColor:I

    .line 212
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->scale:F

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->width_dis:F

    .line 214
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->visualine_direction:I

    .line 445
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 1117
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    .line 1118
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    .line 1119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 1126
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 232
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->init()V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v6, -0xaa4386

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 78
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 80
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 82
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 83
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 85
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 86
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    .line 87
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    .line 88
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    .line 89
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mStartTime:J

    .line 90
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    .line 120
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 122
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mResetTimes:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 130
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 131
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 132
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 136
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 137
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 138
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 139
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 141
    const-string v0, "\u6309\u4f4f\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 142
    const-string v0, "\u677e\u5f00\u53d6\u6d88"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 143
    const-string v0, "\u653e\u5f00\u7ed3\u675f"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textOver:Ljava/lang/String;

    .line 144
    const-string v0, "\u6ed1\u52a8\u5230\u6b64\u533a\u57df\u53d6\u6d88"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancleTip:Ljava/lang/String;

    .line 152
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 154
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 155
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 157
    const/16 v0, 0x1e8

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    .line 159
    const/16 v0, 0x384

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingBottom:I

    .line 161
    const/16 v0, 0x21

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingLeft:I

    .line 162
    const/4 v0, 0x7

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingRight:I

    .line 163
    const/16 v0, 0x226

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingBottom:I

    .line 164
    const/16 v0, 0x26

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePixY:I

    .line 180
    iput v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    .line 199
    const v0, 0x40a66666    # 5.2f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumWidth:F

    .line 200
    const/16 v0, 0x2b

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    .line 201
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumSpacing:F

    .line 202
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRateY:F

    .line 203
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    .line 204
    const v0, 0x42816666    # 64.7f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMaxHeight:F

    .line 205
    iput v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mColor:I

    .line 212
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->scale:F

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->width_dis:F

    .line 214
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->visualine_direction:I

    .line 445
    iput-wide v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 1117
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    .line 1118
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    .line 1119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 1126
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/inputmethod/VoiceView;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/widget/inputmethod/VoiceView;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/inputmethod/VoiceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/inputmethod/VoiceView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/widget/inputmethod/VoiceView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/inputmethod/VoiceView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/inputmethod/VoiceView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    return p1
.end method

.method static synthetic access$402(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/inputmethod/VoiceView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    return p1
.end method

.method private cancelRecord()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "action_cancel_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 681
    return-void
.end method

.method private cancleScaleLittle()V
    .locals 1

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1180
    :cond_0
    return-void
.end method

.method private checkForLongClick(I)V
    .locals 3
    .param p1, "delayOffset"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    iget-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->rememberPressToken(J)V

    .line 478
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    return-void
.end method

.method private createAnim()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x6e

    const/4 v3, 0x2

    .line 1129
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    const-string v1, "scale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    .line 1130
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1131
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1132
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/widget/inputmethod/VoiceView$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/inputmethod/VoiceView$1;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1146
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    const-string v1, "scale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    .line 1147
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1148
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1149
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/widget/inputmethod/VoiceView$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/inputmethod/VoiceView$2;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1161
    return-void

    .line 1129
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 1146
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawAmpCircle(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 918
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleRadius()V

    .line 920
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 921
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 923
    .local v1, "dy":I
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 929
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 930
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 933
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 934
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 936
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 875
    const-string v0, "VoiceView"

    const-string v1, "drawBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 877
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    if-nez v0, :cond_1

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x25000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 884
    :goto_0
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    int-to-float v2, v0

    .line 885
    .local v2, "top":F
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    .line 886
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    .line 887
    .local v4, "bottom":F
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 889
    return-void

    .line 879
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x19ec6358

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x1955bc7a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private drawButton(Landroid/graphics/Canvas;II)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 750
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 751
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 752
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawCancleText(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 979
    const-string v1, "VoiceView"

    const-string v2, "drawCancleText()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    const v2, -0xa000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 985
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 986
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancleTip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 987
    .local v0, "textWidth":I
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancleTip:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 989
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 990
    return-void

    .line 983
    .end local v0    # "textWidth":I
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 893
    const-string v0, "VoiceView"

    const-string v5, "drawLine()"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 895
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    int-to-float v2, v0

    .line 896
    .local v2, "startY":F
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    .line 897
    .local v3, "stopX":F
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    int-to-float v4, v0

    .line 898
    .local v4, "stopY":F
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    if-nez v0, :cond_1

    .line 899
    :cond_0
    const/16 v6, 0x2d

    .line 900
    .local v6, "padding":I
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    int-to-float v1, v6

    int-to-float v0, v6

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    .end local v3    # "stopX":F
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 909
    .end local v6    # "padding":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 910
    return-void

    .line 902
    .restart local v3    # "stopX":F
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    const v5, -0x7f139ca8

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 904
    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    const v5, -0x7faa4386

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 907
    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawRecordTime(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const v1, -0xa000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 949
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    .line 951
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 952
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const v1, -0xaa4386

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private drawRecordTimeAnima(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 958
    const/16 v1, 0xa

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 959
    .local v0, "arry":[F
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const v2, -0x5f005b00

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 960
    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    if-ge v1, p2, :cond_0

    .line 961
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    .line 962
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const v2, -0xaa4386

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 969
    :goto_0
    const-string v1, "VoiceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v1, "VoiceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDrawAnimaCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    aget v3, v0, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 972
    const-wide/16 v1, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidateDelayed(J)V

    .line 973
    return-void

    .line 963
    :cond_0
    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    .line 964
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCnt:I

    .line 965
    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    goto/16 :goto_0

    .line 967
    :cond_1
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mDrawAnimaCnt:I

    goto/16 :goto_0

    .line 958
    :array_0
    .array-data 4
        0x0
        0x40a5fcb9    # 5.1871f
        0x41200000    # 10.0f
        -0x442b020c    # -0.0065f
        -0x3ee00000    # -10.0f
        -0x442b020c    # -0.0065f
        0x41200000    # 10.0f
        0x40d09100
        0x3fabb2ff    # 1.3414f
        0x0
    .end array-data
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v6, -0xaa4386

    .line 847
    const-string v4, "VoiceView"

    const-string v5, "drawText()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 849
    const-string v2, ""

    .line 850
    .local v2, "text":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    if-nez v4, :cond_2

    .line 851
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 852
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 860
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 861
    .local v3, "textWidth":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x2

    .line 863
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v1, v4, 0x8

    .line 865
    .local v1, "dy":I
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 866
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    add-int/2addr v1, v4

    .line 868
    :cond_1
    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 870
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 871
    return-void

    .line 853
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v3    # "textWidth":I
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v4, :cond_3

    .line 854
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 855
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    const v5, -0xa000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textOver:Ljava/lang/String;

    .line 858
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 245
    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->visualine_corner_width:F

    invoke-direct {v0, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 246
    .local v0, "cornerPathEffect":Landroid/graphics/CornerPathEffect;
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointRadius:F

    aput v6, v4, v5

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInterval:F

    aput v5, v4, v7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 249
    .local v1, "effects":Landroid/graphics/PathEffect;
    new-instance v4, Landroid/graphics/ComposePathEffect;

    invoke-direct {v4, v0, v1}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    iput-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mComposePathEffect:Landroid/graphics/ComposePathEffect;

    .line 251
    const-string v4, "VoiceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSpectrumWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 254
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 258
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    .line 259
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    if-ge v3, v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    aput v5, v4, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    .line 264
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    new-array v4, v4, [Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    iput-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    if-ge v2, v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    new-instance v5, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    invoke-direct {v5, p0}, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    aput-object v5, v4, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_1
    return-void
.end method

.method private initCircleDrawable(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v1, 0x3f666666    # 0.9f

    const-wide v4, 0x3fe999999999999aL    # 0.8

    const/4 v3, 0x0

    .line 316
    const v0, 0x10800c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 317
    const v0, 0x10800ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 318
    const v0, 0x10800c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 320
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 321
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 322
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 323
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 325
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastWidth:I

    .line 326
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastHeight:I

    .line 328
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 331
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 332
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 348
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 351
    :cond_0
    invoke-direct {p0, v3}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 353
    return-void
.end method

.method private initCircleRadius()V
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 410
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastHeight:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 412
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 415
    return-void
.end method

.method private initPaints()V
    .locals 4

    .prologue
    const v3, -0xaa4386

    const/4 v2, 0x1

    .line 361
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    .line 362
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 366
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 367
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x25000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    .line 371
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 373
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    .line 377
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 380
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 383
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    .line 384
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCancleTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->cancleTipSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 388
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    .line 389
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    return-void
.end method

.method private initScaleValue()V
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    .line 1112
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->createAnim()V

    .line 1113
    return-void
.end method

.method private initText(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 290
    const v0, 0x10406f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 291
    const v0, 0x10406f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 292
    const v0, 0x10406f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textOver:Ljava/lang/String;

    .line 293
    const v0, 0x10406f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancleTip:Ljava/lang/String;

    .line 294
    const v0, 0x10500b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    .line 295
    const v0, 0x10500b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    .line 296
    const v0, 0x10500b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->cancleTipSize:I

    .line 297
    const v0, 0x10500ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 298
    const v0, 0x10500ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 299
    const v0, 0x10500ad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 300
    const v0, 0x10500ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    .line 301
    const v0, 0x10500af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingBottom:I

    .line 302
    const v0, 0x10500b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingLeft:I

    .line 303
    const v0, 0x10500b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingBottom:I

    .line 304
    const v0, 0x10500b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePixY:I

    .line 305
    const v0, 0x10500b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    .line 306
    const v0, 0x10500b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMaxHeight:F

    .line 308
    return-void
.end method

.method private isDoingAnim()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isPointInCircle(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, p1, v3

    .line 590
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, p2, v3

    .line 591
    .local v1, "dy":I
    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v2, v3, 0x2

    .line 592
    .local v2, "r":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final isPointInRect(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 597
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingTop:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->clickAeraPaddingBottom:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelRecordModule(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 690
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 691
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 692
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 693
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    .line 694
    return-void
.end method

.method private onRefreshAmp(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 702
    const-string v0, "key_current_radiux"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 703
    const-string v0, "key_current_record_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 705
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 707
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    if-eq v0, v1, :cond_0

    .line 708
    const/16 v0, 0x19

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->startVolumeAnim(III)V

    .line 710
    :cond_0
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 714
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    .line 715
    return-void
.end method

.method private onStartRecordModule(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 636
    const-string v2, "key_record_token"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 637
    .local v0, "tokenFromApp":J
    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 639
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 640
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mResetTimes:I

    .line 641
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    goto :goto_0
.end method

.method private onStopRecordModule(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 665
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 666
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 667
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 668
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 669
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    .line 670
    return-void
.end method

.method private pauseRecord()V
    .locals 2

    .prologue
    .line 622
    const-string v0, "action_pause_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 623
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 483
    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 484
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 486
    :cond_0
    return-void
.end method

.method private resetArry(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1040
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    if-ge v0, v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    aput v2, v1, v0

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    :cond_0
    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 1044
    const-string v1, "VoiceView"

    const-string v2, "resetArry():postInvalidateDelayed(10)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidateDelayed(J)V

    .line 1047
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->volumeUpdateDraw(Landroid/graphics/Canvas;)V

    .line 1048
    return-void
.end method

.method private resumeRecord()V
    .locals 2

    .prologue
    .line 627
    const-string v0, "action_resume_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 628
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 418
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    if-ne v0, p1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 420
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 433
    :goto_1
    iput p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 434
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->invalidate()V

    goto :goto_0

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 430
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startRecord()V
    .locals 5

    .prologue
    .line 606
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 609
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "key_amp_min_radius"

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    const-string v1, "key_amp_max_radius"

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    iget-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 613
    const-string v1, "key_record_token"

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 615
    const-string v1, "action_begin_record"

    invoke-virtual {p0, v1, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 618
    return-void
.end method

.method private startScaleLarger()V
    .locals 1

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancleScaleLittle()V

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 1185
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1186
    return-void
.end method

.method private startScaleLittle()V
    .locals 1

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->isDoingAnim()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 1170
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleRadius()V

    .line 1171
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startValueAnimator()V

    .line 1172
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1174
    :cond_2
    return-void
.end method

.method private startValueAnimator()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1194
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1195
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    .line 1197
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 1198
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1199
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1200
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1201
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1202
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1205
    return-void
.end method

.method private startVolumeAnim(III)V
    .locals 3
    .param p1, "duration"    # I
    .param p2, "start"    # I
    .param p3, "target"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 722
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 724
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->setFrameDelay(J)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 730
    :cond_1
    if-ge p2, p3, :cond_2

    .line 731
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 732
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 738
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 739
    return-void

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    mul-int/lit8 v1, p1, 0x4

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 735
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 655
    const-string v0, "action_stop_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 657
    return-void
.end method

.method private volumeUpdateDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 757
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    if-nez v8, :cond_0

    .line 820
    :goto_0
    return-void

    .line 761
    :cond_0
    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingLeft:I

    .line 762
    .local v1, "dx":I
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePixY:I

    .line 763
    .local v2, "dy":I
    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 764
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    array-length v8, v8

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x4

    if-ge v8, v9, :cond_2

    .line 765
    :cond_1
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x4

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    .line 768
    :cond_2
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/meizu/widget/inputmethod/VoiceView;->wavePaddingBottom:I

    invoke-virtual {v8, v1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 769
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/meizu/widget/inputmethod/VoiceView;->scale:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->width_dis:F

    .line 770
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->scale:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v0, v8

    .line 771
    .local v0, "baseX":I
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 772
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    if-ge v4, v8, :cond_8

    .line 773
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_3

    .line 774
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->getFinal()F

    move-result v8

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    .line 775
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    add-int/lit8 v11, v4, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v11, v11, v4

    invoke-virtual {v9, v10, v11}, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->loadData(FF)F

    move-result v9

    aput v9, v8, v4

    .line 780
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v12

    if-gtz v8, :cond_4

    .line 781
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    iget v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    aput v9, v8, v4

    .line 783
    :cond_4
    iget v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->visualine_direction:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 784
    mul-int v8, v0, v4

    div-int/lit8 v9, v0, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->width_dis:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 785
    .local v7, "xi":I
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v9, v9, v4

    add-float/2addr v8, v9

    int-to-float v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 786
    .local v5, "pointY0":F
    int-to-float v8, v3

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v9, v9, v4

    sub-float/2addr v8, v9

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 787
    .local v6, "pointY1":F
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    int-to-float v10, v7

    aput v10, v8, v9

    .line 788
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x1

    aput v5, v8, v9

    .line 790
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v7

    aput v10, v8, v9

    .line 791
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x3

    aput v6, v8, v9

    .line 772
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 776
    .end local v5    # "pointY0":F
    .end local v6    # "pointY1":F
    .end local v7    # "xi":I
    :cond_5
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v8, v8, v4

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->getNext()F

    move-result v9

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    .line 777
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mList:[Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->getCur()F

    move-result v9

    aput v9, v8, v4

    goto :goto_2

    .line 792
    :cond_6
    iget v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->visualine_direction:I

    if-nez v8, :cond_7

    .line 793
    mul-int v8, v0, v4

    div-int/lit8 v9, v0, 0x2

    add-int v7, v8, v9

    .line 794
    .restart local v7    # "xi":I
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v9, v9, v4

    add-float/2addr v8, v9

    int-to-float v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 795
    .restart local v5    # "pointY0":F
    int-to-float v8, v3

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v9, v9, v4

    sub-float/2addr v8, v9

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 796
    .restart local v6    # "pointY1":F
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    int-to-float v10, v7

    aput v10, v8, v9

    .line 797
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x1

    aput v5, v8, v9

    .line 799
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v7

    aput v10, v8, v9

    .line 800
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x3

    aput v6, v8, v9

    goto :goto_3

    .line 802
    .end local v5    # "pointY0":F
    .end local v6    # "pointY1":F
    .end local v7    # "xi":I
    :cond_7
    mul-int v8, v0, v4

    div-int/lit8 v9, v0, 0x2

    add-int v7, v8, v9

    .line 803
    .restart local v7    # "xi":I
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v9, v9, v4

    add-float/2addr v8, v9

    int-to-float v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 804
    .restart local v5    # "pointY0":F
    int-to-float v8, v3

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumes:[F

    aget v9, v9, v4

    sub-float/2addr v8, v9

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 805
    .restart local v6    # "pointY1":F
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    int-to-float v10, v7

    aput v10, v8, v9

    .line 806
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x1

    aput v5, v8, v9

    .line 808
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v7

    aput v10, v8, v9

    .line 809
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x3

    aput v6, v8, v9

    goto/16 :goto_3

    .line 813
    .end local v5    # "pointY0":F
    .end local v6    # "pointY1":F
    .end local v7    # "xi":I
    :cond_8
    iget-boolean v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v8, :cond_9

    .line 814
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    const v9, -0xa000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 818
    :goto_4
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPoints:[F

    iget-object v9, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 819
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 816
    :cond_9
    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mForePaint:Landroid/graphics/Paint;

    const v9, -0xaa4386

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 491
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 492
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 569
    :cond_0
    :goto_0
    return v5

    .line 496
    :pswitch_0
    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownX:I

    .line 497
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownY:I

    .line 499
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInRect(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    .line 501
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-eqz v2, :cond_0

    .line 503
    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 504
    iput-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 505
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 507
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->checkForLongClick(I)V

    goto :goto_0

    .line 515
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_2

    .line 518
    :cond_1
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 519
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    .line 520
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 521
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_4

    .line 522
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInRect(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    .line 524
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-eqz v2, :cond_3

    .line 525
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->resumeRecord()V

    .line 526
    invoke-direct {p0, v5}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 528
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 529
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->pauseRecord()V

    goto :goto_0

    .line 533
    :cond_4
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 540
    :pswitch_2
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 541
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 545
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    .line 546
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_5

    .line 547
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInRect(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 548
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->stopRecord()V

    .line 552
    :cond_5
    :goto_1
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 550
    :cond_6
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    goto :goto_1

    .line 558
    :pswitch_3
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 559
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 563
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    .line 564
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_7

    .line 565
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    .line 566
    :cond_7
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto/16 :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    .line 1191
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1210
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    .line 1211
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    .line 1212
    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1078
    const-string v0, "action_begin_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onStartRecordModule(Landroid/os/Bundle;)V

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    const-string v0, "action_cancel_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onCancelRecordModule(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1084
    :cond_2
    const-string v0, "action_stop_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onStopRecordModule(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1087
    :cond_3
    const-string v0, "action_amp_refresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->updateVisualizer(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1100
    invoke-super {p0}, Lcom/meizu/widget/inputmethod/CoverView;->onAttachedToWindow()V

    .line 1102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1105
    invoke-super {p0}, Lcom/meizu/widget/inputmethod/CoverView;->onDetachedFromWindow()V

    .line 1107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 993
    invoke-super {p0, p1}, Lcom/meizu/widget/inputmethod/CoverView;->onDraw(Landroid/graphics/Canvas;)V

    .line 994
    const-string v5, "VoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDraw():startTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawCancleText(Landroid/graphics/Canvas;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawLine(Landroid/graphics/Canvas;)V

    .line 998
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawText(Landroid/graphics/Canvas;)V

    .line 999
    iget-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v5, :cond_5

    .line 1000
    iget-wide v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 1001
    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    if-nez v5, :cond_0

    .line 1002
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->resetArry(Landroid/graphics/Canvas;)V

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mStartTime:J

    .line 1005
    :cond_0
    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    .line 1006
    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mEnterDrawTimeLimtCnt:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1008
    .local v0, "currentTime":J
    iget-wide v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mStartTime:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    rem-int/lit16 v4, v5, 0x4b0

    .line 1009
    .local v4, "offset":I
    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    sub-int v2, v4, v5

    .line 1010
    .local v2, "diffTime":I
    const-string v5, "VoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", diffTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    if-lez v2, :cond_1

    const/16 v5, 0x3c

    if-ge v2, v5, :cond_1

    .line 1013
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    rsub-int/lit8 v5, v2, 0x3c

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    rem-int/lit16 v4, v5, 0x4b0

    .line 1015
    const-string v5, "VoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after sleep:offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->drawRecordTimeAnima(Landroid/graphics/Canvas;I)V

    .line 1021
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreOffset:I

    .line 1029
    .end local v0    # "currentTime":J
    .end local v2    # "diffTime":I
    .end local v4    # "offset":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->volumeUpdateDraw(Landroid/graphics/Canvas;)V

    .line 1034
    :goto_2
    iget-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    if-nez v5, :cond_6

    .line 1037
    :cond_2
    :goto_3
    return-void

    .line 1016
    .restart local v0    # "currentTime":J
    .restart local v2    # "diffTime":I
    .restart local v4    # "offset":I
    :catch_0
    move-exception v3

    .line 1017
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1023
    .end local v0    # "currentTime":J
    .end local v2    # "diffTime":I
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "offset":I
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const v6, -0xaa4386

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1027
    :cond_4
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawRecordTime(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1031
    :cond_5
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->resetArry(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1035
    :cond_6
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->volumeUpdateDraw(Landroid/graphics/Canvas;)V

    .line 1036
    const-string v5, "VoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDraw():endTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/meizu/widget/inputmethod/CoverView;->onFinishInflate()V

    .line 274
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->initText(Landroid/content/res/Resources;)V

    .line 276
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleDrawable(Landroid/content/res/Resources;)V

    .line 277
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initPaints()V

    .line 281
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initScaleValue()V

    .line 282
    return-void
.end method

.method public onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1054
    invoke-super {p0, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1058
    iput-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 1059
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 1060
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    .line 1061
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 1070
    :goto_0
    return-void

    .line 1065
    :cond_0
    iput-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 1066
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 1067
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordRect:Z

    .line 1068
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1096
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->sendAccessibilityEvent(I)V

    .line 577
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startRecord()V

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->performHapticFeedback(I)Z

    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public updateVisualizer(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 823
    const-string v4, "key_current_radiux"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 824
    const-string v4, "key_current_record_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 825
    const-string v4, "VoiceView"

    const-string v5, "updateVisualizer():postInvalidateDelayed(10);"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 827
    .local v1, "random":Ljava/util/Random;
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 828
    .local v2, "temp":I
    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 829
    .local v3, "xtemp":I
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    mul-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 830
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    if-ge v0, v4, :cond_2

    .line 831
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, 0x0

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mSpectrumNum:I

    if-le v4, v5, :cond_1

    .line 832
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMinHeight:F

    aput v5, v4, v0

    .line 830
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->model:[F

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v5

    int-to-float v6, v3

    iget v7, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mMaxHeight:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    aput v5, v4, v0

    goto :goto_1

    .line 837
    :cond_2
    const-wide/16 v4, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidateDelayed(J)V

    .line 838
    return-void
.end method
