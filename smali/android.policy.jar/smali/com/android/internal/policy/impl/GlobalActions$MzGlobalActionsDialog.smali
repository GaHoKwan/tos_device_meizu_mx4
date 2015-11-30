.class public Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "meizu globalactions dialog"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MzGlobalActionsDialog"
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x1f4L

.field private static final ANIM_IN_DURATION:J = 0x12cL

.field private static final BUTTON_ANIM_DURATION:J = 0x12cL

.field private static final DISMISS_DIAlOG_DELAYED_TIME:I = 0x320

.field private static final MESSAGE_MZ_DISMISS:I = 0x0

.field private static final MESSAGE_MZ_FADEOUT:I = 0x1


# instance fields
.field ai:Landroid/view/animation/AccelerateInterpolator;

.field private d:Landroid/view/Display;

.field di:Landroid/view/animation/DecelerateInterpolator;

.field private dm:Landroid/util/DisplayMetrics;

.field private mAttached:Z

.field private mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonView:Landroid/view/View;

.field mButtons:Landroid/widget/LinearLayout;

.field mContainer:Landroid/widget/LinearLayout;

.field private mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeInSet:Landroid/animation/AnimatorSet;

.field private mFadeOutSet:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimtor:Landroid/animation/ObjectAnimator;

.field private mMzLockPatternUtils:Lcom/meizu/internal/widget/MzLockPatternUtils;

.field mMzRecevier:Landroid/content/BroadcastReceiver;

.field private mOutAnimtor:Landroid/animation/ObjectAnimator;

.field mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

.field mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

.field private mzImageProcessing:Landroid/graphics/MZImageProcessing;

.field private newConfig:I

.field private oldConfig:I

.field private params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field private window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1220
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 1248
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mAttached:Z

    .line 1488
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    .line 1222
    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 1217
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private prepareAnimators()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x12c

    const/4 v3, 0x2

    .line 1549
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const-string v1, "blurAlpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 1550
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1551
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1553
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const-string v1, "blurAlpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 1554
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1555
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1557
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 1558
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1559
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1561
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1565
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1567
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1569
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 1570
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1571
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1573
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    .line 1574
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1575
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1602
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    .line 1603
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1604
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1633
    return-void

    .line 1549
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1553
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1557
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1561
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1565
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1569
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1281
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 1282
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1283
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 1284
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1285
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1286
    .local v3, "screen_w":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1287
    .local v2, "screen_h":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1288
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1289
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1290
    .local v1, "rot":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 1291
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1295
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1296
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1297
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1298
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1299
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1300
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1302
    return-void

    .line 1293
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private showPortrit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1304
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 1305
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1306
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 1307
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1308
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1309
    .local v2, "screen_w":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1310
    .local v1, "screen_h":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1311
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1312
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1313
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1314
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1315
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1316
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1317
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1318
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1320
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1324
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1325
    const v1, 0x1090073

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->setContentView(I)V

    .line 1326
    const v1, 0x1020327

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 1327
    const v1, 0x1020328

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    .line 1328
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMzDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    .line 1329
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    const/16 v2, 0x7e0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1330
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    .line 1331
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "GlobalActions"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1332
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 1333
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v2, v1, Landroid/view/MeizuLayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/MeizuLayoutParams;->flags:I

    .line 1334
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1335
    new-instance v1, Lcom/meizu/internal/widget/MzLockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/internal/widget/MzLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mMzLockPatternUtils:Lcom/meizu/internal/widget/MzLockPatternUtils;

    .line 1336
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMzDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1337
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMzDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1338
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    .line 1339
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    .line 1340
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1399
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1433
    const v1, 0x1020329

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    .line 1434
    const v1, 0x102032a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    .line 1435
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setCustomColor(I)V

    .line 1437
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10400c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setCustomColor(I)V

    .line 1439
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 1440
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1480
    .local v0, "mzFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1481
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1485
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->prepareAnimators()V

    .line 1486
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1540
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1541
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1546
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    .line 1515
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1517
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mMzLockPatternUtils:Lcom/meizu/internal/widget/MzLockPatternUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mMzLockPatternUtils:Lcom/meizu/internal/widget/MzLockPatternUtils;

    invoke-virtual {v1}, Lcom/meizu/internal/widget/MzLockPatternUtils;->isFindphoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setAlpha(F)V

    .line 1519
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setAlpha(F)V

    .line 1520
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setEnabled(Z)V

    .line 1521
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setEnabled(Z)V

    .line 1528
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1529
    .local v0, "Config":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1530
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->showLandscape()V

    .line 1534
    :goto_1
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->oldConfig:I

    .line 1535
    return-void

    .line 1523
    .end local v0    # "Config":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setEnabled(Z)V

    .line 1524
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setEnabled(Z)V

    .line 1525
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setAlpha(F)V

    .line 1526
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setAlpha(F)V

    goto :goto_0

    .line 1532
    .restart local v0    # "Config":I
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$MzGlobalActionsDialog;->showPortrit()V

    goto :goto_1
.end method
