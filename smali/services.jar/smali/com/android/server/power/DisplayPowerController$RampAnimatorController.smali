.class public Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RampAnimatorController"
.end annotation


# instance fields
.field private DEFUALT_DOWN_BY_PERENTS_FAST:F

.field private DEFUALT_DOWN_BY_PERENTS_SLOW:F

.field private mAnimationType:I

.field private mCurBrightness:I

.field private mDesiredAnimationType:I

.field private mIsReachThreshold:Z

.field private mIsScreenDim:Z

.field private mIsWantsScreenOn:Z

.field private mLastTargetBrightness:I

.field private mLock:Ljava/lang/Object;

.field private mMode:I

.field private mOldScreenState:I

.field private mRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mStartingBrightness:I

.field private mTargetBrightness:I

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/RampAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "r":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<Lcom/android/server/power/DisplayPowerState;>;"
    const/4 v1, 0x0

    .line 2388
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2380
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    .line 2381
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z

    .line 2382
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsScreenDim:Z

    .line 2383
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    .line 2384
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->DEFUALT_DOWN_BY_PERENTS_FAST:F

    .line 2385
    const v0, 0x3ccccccd    # 0.025f

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->DEFUALT_DOWN_BY_PERENTS_SLOW:F

    .line 2389
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 2390
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->goToSleep()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    .param p1, "x1"    # I

    .prologue
    .line 2370
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    return p1
.end method

.method static synthetic access$4002(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    .param p1, "x1"    # I

    .prologue
    .line 2370
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLastTargetBrightness:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    .param p1, "x1"    # I

    .prologue
    .line 2370
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I

    return p1
.end method

.method static synthetic access$4202(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    .param p1, "x1"    # I

    .prologue
    .line 2370
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    .param p1, "x1"    # Z

    .prologue
    .line 2370
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsReachThreshold:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRate:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->initAnimatorListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->getCurBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isAnimating()Z

    move-result v0

    return v0
.end method

.method private animateScreenBrightnessGoogle(III)Z
    .locals 3
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2550
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2551
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/power/RampAnimator;->animateTo(IIIZ)Z

    .line 2555
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/RampAnimator;->animateTo(III)Z

    move-result v0

    return v0

    .line 2551
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2552
    :cond_3
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2553
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/power/RampAnimator;->animateTo(IIIZ)Z

    goto :goto_1
.end method

.method private animateScreenBrightnessStrategy(IZIII)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "update"    # Z
    .param p3, "target"    # I
    .param p4, "animationType"    # I
    .param p5, "duration"    # I

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/RampAnimator;->animateTo(IZIII)Z

    move-result v0

    return v0
.end method

.method private computeNextAnimationTypeLocked(I)I
    .locals 6
    .param p1, "target"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 2408
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->getRampAnimationType()I

    move-result v0

    .line 2409
    .local v0, "animationType":I
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    sub-int v1, p1, v2

    .line 2411
    .local v1, "realDalta":I
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-nez v2, :cond_2

    .line 2412
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    .line 2436
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDesiredAnimationType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_1
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    :goto_1
    return v2

    .line 2413
    :cond_2
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-ne v2, v3, :cond_0

    .line 2414
    if-gez v1, :cond_3

    .line 2415
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    .line 2416
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    goto :goto_1

    .line 2418
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2419
    if-ne v0, v5, :cond_4

    .line 2421
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsReachThreshold:Z

    if-eqz v2, :cond_6

    .line 2422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsReachThreshold:Z

    .line 2423
    iput v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    .line 2424
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    goto :goto_1

    .line 2426
    :cond_4
    if-ne v0, v3, :cond_5

    .line 2427
    iput v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    .line 2428
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    goto :goto_1

    .line 2429
    :cond_5
    if-ne v0, v4, :cond_6

    .line 2430
    iput v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    .line 2431
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    goto :goto_1

    .line 2434
    :cond_6
    iput v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    goto :goto_0
.end method

.method private computeNextDurationsLocked(I)I
    .locals 7
    .param p1, "target"    # I

    .prologue
    const/4 v6, 0x0

    .line 2441
    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    sub-int v3, p1, v3

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2442
    .local v1, "realDalta":I
    if-gez v1, :cond_1

    .line 2443
    const-string v3, "PowerManagerDisplayController"

    const-string v4, "EROOR: target > mCurBrightness !"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const/16 v0, 0x960

    .line 2461
    :cond_0
    :goto_0
    return v0

    .line 2447
    :cond_1
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeNextDurationsLocked: target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", realDalta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_2
    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    if-le p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$2700(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$2700(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x5

    aget v3, v3, v4

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt p1, v3, :cond_4

    const/16 v3, 0x78

    if-ge v1, v3, :cond_4

    .line 2452
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeNextDurationsLocked: Enter shining, force brighten quickly in 2.5s ! mCurBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_3
    const/16 v0, 0x4b0

    goto/16 :goto_0

    .line 2457
    :cond_4
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurationsSpline:Landroid/util/Spline;
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$2800(Lcom/android/server/power/DisplayPowerController;)Landroid/util/Spline;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 2458
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$2900(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v3

    aget v3, v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 2459
    .local v0, "durations":I
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeNextDurationsLocked: realDalta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spline[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mDaltaBrightnessDurations:[I
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$2900(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", durations = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCurBrightness()I
    .locals 1

    .prologue
    .line 2622
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    return v0
.end method

.method private getDesiredAnimationType()I
    .locals 1

    .prologue
    .line 2627
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mDesiredAnimationType:I

    return v0
.end method

.method private getRampAnimationType()I
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->getCurrentAnimationType()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mAnimationType:I

    .line 2632
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mAnimationType:I

    return v0
.end method

.method private goToSleep()V
    .locals 3

    .prologue
    .line 2656
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2657
    :try_start_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    const-string v2, "OnAnimatorListener: goToSleep entered  "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLastTargetBrightness:I

    .line 2659
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    .line 2660
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-interface {v0, v2}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onScreenDimEnd(I)V

    .line 2661
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/RampAnimator;->setStartingValue(I)V

    .line 2662
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/RampAnimator;->setCurrentValue(I)V

    .line 2663
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/RampAnimator;->setTargetValue(I)V

    .line 2664
    monitor-exit v1

    .line 2665
    return-void

    .line 2664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initAnimatorListener()V
    .locals 2

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3600(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3600(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;-><init>(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/RampAnimator;->setAnimatorListener(Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;)V

    .line 2769
    :cond_0
    return-void
.end method

.method private isAnimating()Z
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->getAnimatorCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLsProximitySensorPositive()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 2393
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLsProximitySensor:I
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$2500(Lcom/android/server/power/DisplayPowerController;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2394
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$2600(Lcom/android/server/power/DisplayPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$2700(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessLevels:[I
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$2700(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v5

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2396
    .local v0, "brightness":I
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateScreenBrightness: mLsProximitySensor mCurBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 2399
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateScreenBrightness: cancel update because of mLsProximitySensor PROXIMITY_POSITIVE, mCurBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    .end local v0    # "brightness":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateScreenBrightness(III)Z
    .locals 10
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2545
    :goto_0
    return v0

    .line 2466
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isLsProximitySensorPositive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 2467
    :cond_2
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2468
    :try_start_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    sub-int v7, p1, v0

    .line 2469
    .local v7, "daltaTarget":I
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I

    sub-int v6, v0, v1

    .line 2470
    .local v6, "animDalta":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->getCurrentAnimationType()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mAnimationType:I

    .line 2472
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "PowerManagerDisplayController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenBrightness: target = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastTargetBrightness = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLastTargetBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTargetBrightness = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCurBrightness = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mStartingBrightness = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", daltaTarget = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", animDalta = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", percents = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAnimating = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isAnimating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_3
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-eqz v0, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsReachThreshold:Z

    if-nez v0, :cond_6

    .line 2481
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenBrightness: KEEP ANIMATION GOING ON !! percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_4
    const/4 v0, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 2546
    .end local v6    # "animDalta":I
    .end local v7    # "daltaTarget":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2472
    .restart local v6    # "animDalta":I
    .restart local v7    # "daltaTarget":I
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2487
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2489
    iput p3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    .line 2490
    iput p2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRate:I

    .line 2492
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "PowerManagerDisplayController"

    const-string v1, "animateScreenBrightness: START NEW ANIMATION NOW "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_7
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenBrightness: mCurBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStartingBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_8
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3100(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v8, 0x1

    .line 2500
    .local v8, "dimToBrighten":Z
    :goto_2
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenBrightness: dimToBrighten = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeUpRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_9
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v8, :cond_e

    .line 2504
    :cond_a
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    .line 2505
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v8, :cond_d

    .line 2507
    :cond_b
    mul-int/lit16 v0, p2, 0xff

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->getBrightnessSpline()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessGoogle(III)Z

    move-result v0

    monitor-exit v9

    goto/16 :goto_0

    .line 2497
    .end local v8    # "dimToBrighten":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 2509
    .restart local v8    # "dimToBrighten":Z
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessGoogle(III)Z

    move-result v0

    monitor-exit v9

    goto/16 :goto_0

    .line 2510
    :cond_e
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2512
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->computeNextAnimationTypeLocked(I)I

    move-result v4

    .line 2513
    .local v4, "type":I
    iput v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mAnimationType:I

    .line 2514
    const/16 v0, 0x10

    if-ne v4, v0, :cond_10

    .line 2515
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    if-eq v0, p1, :cond_f

    .line 2516
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    .line 2518
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->handleDownByPercentLocked()Z

    move-result v0

    monitor-exit v9

    goto/16 :goto_0

    .line 2521
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->computeNextDurationsLocked(I)I

    move-result v5

    .line 2522
    .local v5, "durations":I
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    .line 2525
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 2526
    int-to-float v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2530
    :cond_11
    :goto_3
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dalta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", durations = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_12
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessStrategy(IZIII)Z

    move-result v0

    monitor-exit v9

    goto/16 :goto_0

    .line 2527
    :cond_13
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 2528
    int-to-float v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400999999999999aL    # 3.2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v5, v0

    goto :goto_3

    .line 2545
    .end local v4    # "type":I
    .end local v5    # "durations":I
    :cond_14
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/RampAnimator;->animateTo(III)Z

    move-result v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getOldScreenState()I
    .locals 2

    .prologue
    .line 2616
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2617
    :try_start_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    monitor-exit v1

    return v0

    .line 2618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleDownByPercentLocked()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2588
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2589
    :try_start_0
    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    if-gt v3, v4, :cond_0

    .line 2590
    const-string v3, "PowerManagerDisplayController"

    const-string v4, " error: mCurBrightness < target should never happens !!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    monitor-exit v2

    .line 2612
    :goto_0
    return v1

    .line 2593
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->isLsProximitySensorPositive()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 2613
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2595
    :cond_1
    :try_start_1
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTargetBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "xx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->DEFUALT_DOWN_BY_PERENTS_FAST:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->DEFUALT_DOWN_BY_PERENTS_FAST:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_2
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    sub-int/2addr v1, v3

    const/16 v3, 0x1e

    if-le v1, v3, :cond_5

    .line 2600
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->DEFUALT_DOWN_BY_PERENTS_FAST:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v1, v3

    .line 2604
    .local v0, "move":I
    :goto_1
    const-string v1, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " move = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    if-ne v0, v1, :cond_3

    .line 2606
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    add-int/lit8 v0, v1, -0x1

    .line 2608
    :cond_3
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleDownByPercentLocked move from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTargetBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$3000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    const/16 v3, 0x65

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2612
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRate:I

    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessGoogle(III)Z

    move-result v1

    monitor-exit v2

    goto/16 :goto_0

    .line 2602
    .end local v0    # "move":I
    :cond_5
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->DEFUALT_DOWN_BY_PERENTS_SLOW:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v1, v3

    .restart local v0    # "move":I
    goto/16 :goto_1
.end method

.method public startAnimation(ZIII)Z
    .locals 6
    .param p1, "update"    # Z
    .param p2, "target"    # I
    .param p3, "animationType"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 2563
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-nez v0, :cond_0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2564
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessStrategy(IZIII)Z

    move-result v0

    .line 2568
    :goto_0
    return v0

    .line 2565
    :cond_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    if-ne v0, v2, :cond_1

    move-object v0, p0

    move v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2566
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessStrategy(IZIII)Z

    move-result v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2568
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightnessStrategy(IZIII)Z

    move-result v0

    goto :goto_0
.end method

.method public stopAnimation(ZI)Z
    .locals 2
    .param p1, "update"    # Z
    .param p2, "mode"    # I

    .prologue
    .line 2572
    iput p2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    .line 2573
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->getAnimatorCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2574
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRampAnimator:Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampMode:I
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$3400(Lcom/android/server/power/DisplayPowerController;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/RampAnimator;->stopAnimation(ZI)Z

    move-result v0

    .line 2576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateAnimatorController(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "cur"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2580
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLastTargetBrightness:I

    .line 2582
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I

    .line 2583
    iput p2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    .line 2584
    iput p3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I

    .line 2585
    return-void
.end method

.method public updateScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2644
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2645
    :try_start_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I

    .line 2646
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2648
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$3100(Lcom/android/server/power/DisplayPowerController;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I

    invoke-interface {v0, v2}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onScreenDimStart(I)V

    .line 2652
    :cond_0
    monitor-exit v1

    .line 2653
    return-void

    .line 2652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWantsScreenOn(Z)V
    .locals 0
    .param p1, "wants"    # Z

    .prologue
    .line 2640
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z

    .line 2641
    return-void
.end method
