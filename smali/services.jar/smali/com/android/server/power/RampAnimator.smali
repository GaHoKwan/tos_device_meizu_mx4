.class final Lcom/android/server/power/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/RampAnimator$BrightnessObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AUTO:I = 0x1

.field public static final AUTO_INTERRUPT_BY_USER:I = 0x2

.field public static final BOOTING:I = 0x3

.field private static final FRAME_WARM_UP_TIME:J = 0x14L

.field private static final MSG_ACCELERATE_ANIMATION:I = 0x1

.field private static final MSG_DECELERATE_ANIMATION:I = 0x2

.field private static final MSG_START_ANIMATION:I = 0x5

.field private static final MSG_START_GOOGLE_ANIMATION:I = 0x3

.field private static final MSG_STOP_ANIMATION:I = 0x6

.field private static final MSG_STOP_GOOGLE_ANIMATION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RampAnimator"

.field public static final TYPE_ANIMATION_AC:I = 0x1

.field public static final TYPE_ANIMATION_DE:I = 0x2

.field public static final TYPE_ANIMATION_DOWN_BY_PERCENT:I = 0x10

.field public static final TYPE_ANIMATION_GOOGLE:I = 0x8

.field public static final TYPE_ANIMATION_LINEAR:I = 0x4

.field public static final USER:I


# instance fields
.field private final DEBUG:Z

.field private DEBUG_ANIMATION:Z

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private mAnimatingCount:I

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mAnimationType:I

.field private mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mCallbackStart:Ljava/lang/Runnable;

.field private final mCallbackStop:Ljava/lang/Runnable;

.field private mCanInterruptable:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field mHandler:Landroid/os/Handler;

.field private mHasStopped:Z

.field private mLastCmdTime:J

.field private mLastFrameTimeNanos:J

.field private mLastStopedTime:J

.field private mLastValue:I

.field private mLock:Ljava/lang/Object;

.field private mMode:I

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mStartRequested:Z

.field private mStartingValue:I

.field private mStopGoogleRequested:Z

.field private mStopRequested:Z

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 126
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 201
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG:Z

    .line 210
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 341
    new-instance v0, Lcom/android/server/power/RampAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$2;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallbackStart:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/android/server/power/RampAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$3;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallbackStop:Ljava/lang/Runnable;

    .line 371
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    .line 388
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mLastValue:I

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    .line 390
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    .line 391
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mHasStopped:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStartRequested:Z

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastStopedTime:J

    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    .line 398
    iput v3, p0, Lcom/android/server/power/RampAnimator;->mAnimationType:I

    .line 399
    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    .line 400
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    .line 787
    new-instance v0, Lcom/android/server/power/RampAnimator$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$8;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 72
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;Landroid/content/Context;)V
    .locals 4
    .param p3, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 126
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 201
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG:Z

    .line 210
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 341
    new-instance v0, Lcom/android/server/power/RampAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$2;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallbackStart:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/android/server/power/RampAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$3;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallbackStop:Ljava/lang/Runnable;

    .line 371
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    .line 388
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mLastValue:I

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    .line 390
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    .line 391
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mHasStopped:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStartRequested:Z

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastStopedTime:J

    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    .line 398
    iput v3, p0, Lcom/android/server/power/RampAnimator;->mAnimationType:I

    .line 399
    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    .line 400
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    .line 787
    new-instance v0, Lcom/android/server/power/RampAnimator$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$8;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    .line 213
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 214
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 215
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 217
    iput-object p3, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    .line 218
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->initObserver()V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    return v0
.end method

.method static synthetic access$1210(Lcom/android/server/power/RampAnimator;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastStopedTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastStopedTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/RampAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mLastValue:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/power/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mLastValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->isReachedThreshold()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/RampAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->scheduleStartAnimation(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/RampAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->scheduleStartGoogleAnimation(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/RampAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->scheduleStopGoogleAnimation(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/power/RampAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->scheduleStopAnimation(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->handleBrightnessChangedByUserLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    return p1
.end method

.method private animateTo(ZIII)Z
    .locals 4
    .param p1, "update"    # Z
    .param p2, "target"    # I
    .param p3, "animationType"    # I
    .param p4, "duration"    # I

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x1

    .line 240
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 244
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 245
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 246
    monitor-exit v1

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/power/RampAnimator;->startAnimation(ZIII)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearAnimator()V
    .locals 1

    .prologue
    .line 762
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 765
    :cond_0
    return-void
.end method

.method private getStartingValue()I
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mStartingValue:I

    return v0
.end method

.method private handleBrightnessChangedByUserLocked()V
    .locals 4

    .prologue
    .line 838
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 839
    .local v0, "b":I
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq v0, v1, :cond_0

    .line 840
    iget-boolean v1, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v1, :cond_0

    const-string v1, "RampAnimator"

    const-string v2, "3th party changed settings, stop anmation right now ..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    return-void
.end method

.method private initAccelerateAnimation(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 720
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    const-string v1, " initAccelerateAnimation new animation ... "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    .line 722
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 723
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 724
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/power/RampAnimator$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/RampAnimator$6;-><init>(Lcom/android/server/power/RampAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/power/RampAnimator$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/RampAnimator$7;-><init>(Lcom/android/server/power/RampAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 759
    return-void
.end method

.method private initAnimation(III)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "type"    # I
    .param p3, "duration"    # I

    .prologue
    .line 657
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initAccelerateAnimation new animation ... mCurrentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    .line 660
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/RampAnimator;->setStartingValue(I)V

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/power/RampAnimator;->setTargetValue(I)V

    .line 662
    invoke-direct {p0, p2}, Lcom/android/server/power/RampAnimator;->setCurrentAnimationType(I)V

    .line 663
    packed-switch p2, :pswitch_data_0

    .line 678
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 679
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/power/RampAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/RampAnimator$4;-><init>(Lcom/android/server/power/RampAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 706
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/power/RampAnimator$5;

    invoke-direct {v1, p0}, Lcom/android/server/power/RampAnimator$5;-><init>(Lcom/android/server/power/RampAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 717
    return-void

    .line 666
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 669
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 672
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initObserver()V
    .locals 5

    .prologue
    .line 845
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 846
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/RampAnimator$BrightnessObserver;

    iget-object v4, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/RampAnimator$BrightnessObserver;-><init>(Lcom/android/server/power/RampAnimator;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 849
    return-void
.end method

.method private isReachedThreshold()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v3, 0x1

    .line 643
    iget v4, p0, Lcom/android/server/power/RampAnimator;->mAnimationType:I

    if-ne v4, v3, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/server/power/RampAnimator;->getTargetValue()I

    move-result v2

    .line 645
    .local v2, "target":I
    invoke-virtual {p0}, Lcom/android/server/power/RampAnimator;->getCurrentValue()I

    move-result v0

    .line 646
    .local v0, "current":I
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->getStartingValue()I

    move-result v1

    .line 648
    .local v1, "starting":I
    sub-int v4, v2, v1

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v5

    mul-int/lit8 v5, v5, 0x50

    if-lt v4, v5, :cond_0

    sub-int v4, v2, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    sub-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 653
    .end local v0    # "current":I
    .end local v1    # "starting":I
    .end local v2    # "target":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private postCallback()V
    .locals 4

    .prologue
    .line 123
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method private postCallbackDelayed(J)V
    .locals 6
    .param p1, "delayMillis"    # J

    .prologue
    .line 222
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 223
    return-void
.end method

.method private postCallbackStart()V
    .locals 4

    .prologue
    .line 327
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallbackStart:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method private postCallbackStartDelayed(J)V
    .locals 6
    .param p1, "delayMillis"    # J

    .prologue
    .line 334
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallbackStart:Ljava/lang/Runnable;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 335
    return-void
.end method

.method private postCallbackStop()V
    .locals 4

    .prologue
    .line 330
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallbackStop:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method private postCallbackStopDelayed(J)V
    .locals 6
    .param p1, "delayMillis"    # J

    .prologue
    .line 338
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallbackStop:Ljava/lang/Runnable;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 339
    return-void
.end method

.method private prepareAnimator()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v2, 0x1

    .line 772
    iget-boolean v3, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v3, :cond_0

    const-string v3, "RampAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearAnimator : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAnimating = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAnimatingCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->clearAnimator()V

    .line 775
    iget v3, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-nez v3, :cond_2

    .line 777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 778
    .local v0, "time":J
    iget-wide v3, p0, Lcom/android/server/power/RampAnimator;->mLastStopedTime:J

    const-wide/16 v5, 0x14

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 779
    iget-boolean v3, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v3, :cond_1

    const-string v3, "RampAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do it right now ! mLastCmdTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mHasStopped:Z

    .line 784
    .end local v0    # "time":J
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeAllPendingMessages()V
    .locals 2

    .prologue
    .line 818
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 821
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 823
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    return-void
.end method

.method private scheduleStartAnimation(Z)V
    .locals 4
    .param p1, "update"    # Z

    .prologue
    .line 501
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scheduleStartAnimation .. mAnimatingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", udpate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasStopped = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mHasStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    .line 508
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_1

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scheduleStartAnimation now ... mLastCmdTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->removeAllPendingMessages()V

    .line 511
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mHasStopped:Z

    if-eqz v0, :cond_5

    :cond_2
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-nez v0, :cond_5

    .line 512
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mHasStopped:Z

    .line 514
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallbackStart()V

    .line 515
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    .line 516
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_3

    const-string v0, "RampAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " scheduleStartAnimation mAnimatingCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_3
    monitor-exit v1

    .line 524
    :cond_4
    :goto_0
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 519
    :cond_5
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq v0, v1, :cond_4

    .line 520
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private scheduleStartGoogleAnimation(Z)V
    .locals 7
    .param p1, "update"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const-wide/16 v5, 0x14

    const/4 v4, 0x2

    .line 403
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scheduleStartGoogleAnimation mStopGoogleRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimatingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCanInterruptable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->removeAllPendingMessages()V

    .line 409
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-nez v0, :cond_8

    .line 410
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    if-nez v0, :cond_6

    .line 412
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/power/RampAnimator;->setCurrentAnimationType(I)V

    .line 416
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    invoke-virtual {p0}, Lcom/android/server/power/RampAnimator;->getCurrentValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/power/RampAnimator;->getTargetValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimationStart(II)V

    .line 417
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 419
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 424
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    if-eqz v0, :cond_3

    .line 425
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 428
    :cond_3
    if-eqz p1, :cond_7

    .line 429
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    .line 433
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    .line 434
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_4

    const-string v0, "RampAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " google start time ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAnimatingCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_4
    monitor-exit v1

    .line 441
    :cond_5
    :goto_2
    return-void

    .line 413
    :cond_6
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    if-ne v0, v4, :cond_1

    .line 414
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/power/RampAnimator;->setCurrentAnimationType(I)V

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 431
    :cond_7
    const-wide/16 v2, 0x14

    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/RampAnimator;->postCallbackDelayed(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 437
    :cond_8
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq v0, v1, :cond_5

    .line 438
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method private scheduleStopAnimation(Z)V
    .locals 5
    .param p1, "update"    # Z

    .prologue
    .line 474
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scheduleStopAnimation mStopRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimatingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v0, :cond_2

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    .line 483
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_1

    const-string v0, "RampAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " scheduleStopAnimation now ... mLastCmdTime ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->removeAllPendingMessages()V

    .line 486
    if-eqz p1, :cond_3

    .line 487
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallbackStop()V

    .line 493
    :cond_2
    :goto_0
    monitor-exit v1

    .line 494
    return-void

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleStopGoogleAnimation(Z)V
    .locals 5
    .param p1, "update"    # Z

    .prologue
    .line 444
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scheduleStopGoogleAnimation mStopGoogleRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimatingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",update =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    .line 453
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->removeAllPendingMessages()V

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    .line 459
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_1

    const-string v0, "RampAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " scheduleStopGoogleAnimation now ... mLastCmdTime ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/RampAnimator;->mLastCmdTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    if-eqz p1, :cond_3

    .line 461
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    .line 466
    :cond_2
    :goto_0
    monitor-exit v1

    .line 467
    return-void

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCurrentAnimationType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 631
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimationType:I

    .line 632
    return-void
.end method

.method private startAnimation(ZIII)Z
    .locals 6
    .param p1, "update"    # Z
    .param p2, "target"    # I
    .param p3, "animationType"    # I
    .param p4, "duration"    # I

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-boolean v3, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v3, :cond_0

    const-string v3, "RampAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAnimation ...... update = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animationType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const/4 v0, 0x1

    .line 538
    .local v0, "canStart":Z
    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 539
    :try_start_0
    iget v4, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v4, :cond_1

    .line 540
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/power/RampAnimator;->stopAnimation(Z)Z

    move-result v0

    .line 542
    :cond_1
    if-eqz v0, :cond_3

    .line 543
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 544
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->prepareAnimator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/power/RampAnimator;->initAnimation(III)V

    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->scheduleStartAnimation(Z)V

    .line 551
    :goto_0
    monitor-exit v3

    .line 553
    :goto_1
    return v1

    .line 548
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/power/RampAnimator;->initAnimation(III)V

    .line 549
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/power/RampAnimator;->scheduleStartAnimation(Z)V

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 553
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_1
.end method

.method private stopAnimation(Z)Z
    .locals 2
    .param p1, "update"    # Z

    .prologue
    .line 595
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->stopAnimationLocked(Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopAnimationLocked(Z)Z
    .locals 5
    .param p1, "update"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v2, :cond_0

    const-string v2, "RampAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopAnimation ... mMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStopGoogleRequested = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", update = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAnimatingCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAnimating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStopRequested = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mStopRequested:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    if-nez v2, :cond_4

    .line 564
    :cond_1
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_2

    .line 565
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->clearAnimator()V

    .line 566
    invoke-direct {p0, v0}, Lcom/android/server/power/RampAnimator;->scheduleStopAnimation(Z)V

    :cond_2
    move v0, v1

    .line 579
    :cond_3
    :goto_0
    return v0

    .line 571
    :cond_4
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v2, :cond_3

    .line 572
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_5

    .line 573
    invoke-direct {p0, v1}, Lcom/android/server/power/RampAnimator;->scheduleStopGoogleAnimation(Z)V

    goto :goto_0

    .line 575
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->clearAnimator()V

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->scheduleStopAnimation(Z)V

    goto :goto_0
.end method

.method private stopAnimationLocked(ZI)Z
    .locals 3
    .param p1, "update"    # Z
    .param p2, "callerMode"    # I

    .prologue
    .line 583
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnimation ... mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", update = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimatingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/RampAnimator;->stopAnimationLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    if-eqz v0, :cond_1

    .line 587
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 588
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_0

    .line 88
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 89
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 90
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 119
    :goto_0
    return v1

    .line 101
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_3

    .line 105
    :cond_2
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 108
    :cond_3
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_4

    move v0, v1

    .line 109
    .local v0, "changed":Z
    :cond_4
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 112
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_5

    .line 113
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 114
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 116
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_5
    move v1, v0

    .line 119
    goto :goto_0
.end method

.method public animateTo(III)Z
    .locals 8
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "mode"    # I

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 274
    iget-object v4, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 276
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v5, :cond_0

    .line 277
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 278
    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v5, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v3, v5, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 279
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 280
    monitor-exit v4

    .line 322
    :goto_0
    return v1

    .line 290
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v5, :cond_2

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v5, :cond_1

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v5, v6, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v5, v6, :cond_3

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v5, p1, :cond_3

    .line 294
    :cond_2
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 297
    :cond_3
    iget v5, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v5, p1, :cond_6

    .line 299
    .local v1, "changed":Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/RampAnimator;->setTargetValue(I)V

    .line 300
    iput p3, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 304
    const/4 v0, 0x1

    .line 305
    .local v0, "canStop":Z
    iget v3, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    if-lez v3, :cond_4

    .line 306
    const/4 v3, 0x1

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/power/RampAnimator;->stopAnimation(ZI)Z

    move-result v0

    .line 308
    :cond_4
    if-nez p3, :cond_7

    .line 312
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/power/RampAnimator;->scheduleStartGoogleAnimation(Z)V

    .line 322
    :cond_5
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 323
    .end local v0    # "canStop":Z
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_6
    move v1, v3

    .line 297
    goto :goto_1

    .line 313
    .restart local v0    # "canStop":Z
    .restart local v1    # "changed":Z
    :cond_7
    if-ne p3, v7, :cond_8

    if-eqz v0, :cond_8

    :try_start_1
    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-ge p1, v3, :cond_8

    .line 315
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/power/RampAnimator;->scheduleStartGoogleAnimation(Z)V

    goto :goto_2

    .line 316
    :cond_8
    if-ne p3, v7, :cond_5

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-le p1, v3, :cond_5

    .line 317
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->prepareAnimator()Z

    move-result v2

    .line 318
    .local v2, "update":Z
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/power/RampAnimator;->setCurrentAnimationType(I)V

    .line 319
    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    invoke-direct {p0, v3, v5}, Lcom/android/server/power/RampAnimator;->initAccelerateAnimation(II)V

    .line 320
    invoke-direct {p0, v2}, Lcom/android/server/power/RampAnimator;->scheduleStartAnimation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public animateTo(IIIZ)Z
    .locals 2
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "mode"    # I
    .param p4, "interruptable"    # Z

    .prologue
    .line 254
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 259
    :goto_0
    return v0

    .line 258
    :cond_0
    iput-boolean p4, p0, Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/RampAnimator;->animateTo(III)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateTo(IZIII)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "update"    # Z
    .param p3, "target"    # I
    .param p4, "animationType"    # I
    .param p5, "duration"    # I

    .prologue
    .line 227
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 229
    .local v0, "oldMode":I
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 230
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/power/RampAnimator;->animateTo(ZIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x1

    monitor-exit v2

    .line 234
    :goto_0
    return v1

    .line 233
    :cond_0
    iput v0, p0, Lcom/android/server/power/RampAnimator;->mMode:I

    .line 234
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 236
    .end local v0    # "oldMode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAnimatorCount()I
    .locals 4

    .prologue
    .line 527
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimatorCount  mAnimatingCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatingCount:I

    monitor-exit v1

    return v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentAnimationType()I
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimationType:I

    return v0
.end method

.method public getCurrentValue()I
    .locals 1

    .prologue
    .line 611
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method public getTargetValue()I
    .locals 1

    .prologue
    .line 635
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method public setAnimatorListener(Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    .prologue
    .line 814
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    .line 815
    return-void
.end method

.method public setCurrentValue(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 615
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 616
    return-void
.end method

.method public setStartingValue(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 619
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mStartingValue:I

    .line 620
    return-void
.end method

.method public setTargetValue(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    .line 639
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 640
    return-void
.end method

.method public stopAnimation(ZI)Z
    .locals 2
    .param p1, "update"    # Z
    .param p2, "callerMode"    # I

    .prologue
    .line 605
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v1, p0, Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/RampAnimator;->stopAnimationLocked(ZI)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
