.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0xfaL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d


# instance fields
.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field mNextAppCustomTransitionEnter:Landroid/view/WindowAnimationInfo;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. The custom window animation."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mNextAppCustomTransitionExit:Landroid/view/WindowAnimationInfo;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. The custom window animation."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

.field public mWindowInterpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. The custom window animation interpolation."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 132
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 150
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 156
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 158
    new-instance v0, Landroid/view/WindowAnimationInfo;

    invoke-direct {v0}, Landroid/view/WindowAnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppCustomTransitionEnter:Landroid/view/WindowAnimationInfo;

    .line 164
    new-instance v0, Landroid/view/WindowAnimationInfo;

    invoke-direct {v0}, Landroid/view/WindowAnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppCustomTransitionExit:Landroid/view/WindowAnimationInfo;

    .line 1000
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mWindowInterpolator:Landroid/view/animation/Interpolator;

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 175
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 729
    :pswitch_0
    const-string v0, "APP_STATE_IDLE"

    goto :goto_0

    .line 731
    :pswitch_1
    const-string v0, "APP_STATE_READY"

    goto :goto_0

    .line 733
    :pswitch_2
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_0

    .line 735
    :pswitch_3
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 680
    sparse-switch p0, :sswitch_data_0

    .line 721
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 682
    :sswitch_0
    const-string v0, "TRANSIT_UNSET"

    goto :goto_0

    .line 685
    :sswitch_1
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    .line 688
    :sswitch_2
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_0

    .line 691
    :sswitch_3
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_0

    .line 694
    :sswitch_4
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_0

    .line 697
    :sswitch_5
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_0

    .line 700
    :sswitch_6
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_0

    .line 703
    :sswitch_7
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_0

    .line 706
    :sswitch_8
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_0

    .line 709
    :sswitch_9
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_0

    .line 712
    :sswitch_a
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_0

    .line 715
    :sswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_0

    .line 718
    :sswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_0

    .line 680
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1006 -> :sswitch_3
        0x1008 -> :sswitch_5
        0x100a -> :sswitch_7
        0x100d -> :sswitch_a
        0x100e -> :sswitch_b
        0x2000 -> :sswitch_2
        0x2007 -> :sswitch_4
        0x2009 -> :sswitch_6
        0x200b -> :sswitch_8
        0x200c -> :sswitch_9
        0x200f -> :sswitch_c
    .end sparse-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 345
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 346
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 347
    int-to-float v1, p0

    .line 349
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 354
    const/4 v11, 0x0

    .line 355
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 358
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 359
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 362
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 364
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 365
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 367
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 368
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 369
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 370
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 371
    move-object v11, v15

    .line 389
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 395
    const-wide/16 v13, 0xfa

    .line 398
    .local v13, "duration":J
    :goto_1
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 399
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 401
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 402
    return-object v11

    .line 372
    .end local v13    # "duration":J
    :cond_0
    const/16 v6, 0x100e

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    const/16 v6, 0x200f

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 378
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 379
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 382
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 392
    :sswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    .line 393
    .restart local v13    # "duration":J
    goto :goto_1

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 267
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    const-string v4, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading animations: layout params pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " resId=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    if-eqz p1, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_3

    .line 274
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 275
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 276
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_1

    .line 277
    const-string v0, "android"

    .line 279
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_2

    const-string v2, "AppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 284
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_3
    return-object v3

    :cond_4
    move-object v2, v3

    .line 267
    goto :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_1

    .line 274
    :cond_6
    const-string v0, "android"

    goto :goto_2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 288
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    if-eqz p1, :cond_3

    .line 291
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    .line 292
    const-string p1, "android"

    .line 294
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 321
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 323
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 324
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 325
    move v0, p2

    .line 328
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 329
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 331
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 742
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 744
    :pswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    .line 746
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_0

    .line 748
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_0

    .line 750
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_0

    .line 752
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 256
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 258
    return-void
.end method

.method createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;
    .locals 24
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "thumb"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 409
    const/4 v5, 0x0

    .line 500
    :goto_0
    return-object v5

    .line 412
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 413
    .local v23, "thumbWidthI":I
    if-lez v23, :cond_1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 414
    .local v22, "thumbWidth":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 415
    .local v21, "thumbHeightI":I
    if-lez v21, :cond_2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 416
    .local v20, "thumbHeight":F
    :goto_2
    if-eqz p3, :cond_4

    .line 419
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_3

    .line 420
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 421
    .local v6, "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 422
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 425
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 427
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 428
    .local v16, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 431
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 432
    .local v19, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 433
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 434
    move-object/from16 v5, v19

    .line 487
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v16    # "alpha":Landroid/view/animation/Animation;
    .end local v19    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_3
    sparse-switch p1, :sswitch_data_0

    .line 493
    const-wide/16 v17, 0xfa

    .line 496
    .local v17, "duration":J
    :goto_4
    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 497
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 499
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 413
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v17    # "duration":J
    .end local v20    # "thumbHeight":F
    .end local v21    # "thumbHeightI":I
    .end local v22    # "thumbWidth":F
    :cond_1
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 415
    .restart local v21    # "thumbHeightI":I
    .restart local v22    # "thumbWidth":F
    :cond_2
    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 436
    .restart local v20    # "thumbHeight":F
    :cond_3
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 437
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 438
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v8

    invoke-static {v11, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 441
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 442
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    :cond_4
    if-eqz p2, :cond_6

    .line 444
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_5

    .line 445
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 446
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 447
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v10, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v11, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 450
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 452
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    :cond_5
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 456
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_8

    .line 457
    const/16 v7, 0x100e

    move/from16 v0, p1

    if-ne v0, v7, :cond_7

    .line 461
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 464
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_7
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 467
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_8
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 468
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 469
    .restart local v8    # "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v7, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object v9, v4

    move v11, v6

    move v13, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 473
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 475
    .restart local v16    # "alpha":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 476
    .restart local v19    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 477
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 478
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 479
    move-object/from16 v5, v19

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 490
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v16    # "alpha":Landroid/view/animation/Animation;
    .end local v19    # "set":Landroid/view/animation/AnimationSet;
    :sswitch_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    .line 491
    .restart local v17    # "duration":J
    goto/16 :goto_4

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string v0, "  mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 795
    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 798
    :cond_1
    return-void

    .line 767
    :pswitch_0
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :pswitch_1
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 776
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 778
    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 780
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 785
    :pswitch_2
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 787
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 789
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 791
    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 264
    return-void
.end method

.method getActionBarAnimator(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;IZZI)Lcom/android/server/wm/ActionbarAnimator;
    .locals 8
    .param p1, "fxSession"    # Landroid/view/SurfaceSession;
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "winAnim"    # Landroid/view/animation/Animation;
    .param p4, "transit"    # I
    .param p5, "enter"    # Z
    .param p6, "splitActionBar"    # Z
    .param p7, "defaultAnimDuration"    # I

    .prologue
    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "animator":Lcom/android/server/wm/ActionbarAnimator;
    iget-boolean v1, p2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v1, :cond_0

    move-object v7, v0

    .line 936
    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    .local v7, "animator":Lcom/android/server/wm/ActionbarAnimator;
    :goto_0
    return-object v7

    .line 884
    .end local v7    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    :cond_0
    if-nez p6, :cond_4

    .line 885
    sparse-switch p4, :sswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    move-object v7, v0

    .line 936
    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    .restart local v7    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_0

    .line 888
    .end local v7    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    :sswitch_1
    if-eqz p5, :cond_2

    .line 889
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    int-to-long v4, p7

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 891
    :cond_2
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .line 893
    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 895
    :sswitch_2
    if-nez p5, :cond_3

    .line 896
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 898
    :cond_3
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    int-to-long v4, p7

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 903
    :cond_4
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 907
    sparse-switch p4, :sswitch_data_1

    goto :goto_1

    .line 915
    :sswitch_3
    if-eqz p5, :cond_5

    .line 916
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    int-to-long v4, p7

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 918
    :cond_5
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .line 920
    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 924
    :sswitch_4
    if-nez p5, :cond_6

    .line 925
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 927
    :cond_6
    new-instance v0, Lcom/android/server/wm/ActionbarAnimator;

    .end local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    int-to-long v4, p7

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActionbarAnimator;-><init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V

    .line 929
    .restart local v0    # "animator":Lcom/android/server/wm/ActionbarAnimator;
    goto :goto_1

    .line 885
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_1
        0x2007 -> :sswitch_2
    .end sparse-switch

    .line 907
    :sswitch_data_1
    .sparse-switch
        0x1006 -> :sswitch_3
        0x1008 -> :sswitch_3
        0x100a -> :sswitch_3
        0x100d -> :sswitch_0
        0x2007 -> :sswitch_4
        0x2009 -> :sswitch_4
        0x200b -> :sswitch_4
        0x200c -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnimationResourceId(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "animAttr":I
    const/4 v2, -0x1

    .line 811
    .local v2, "resId":I
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 812
    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 874
    :goto_0
    return v3

    .line 812
    :cond_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_0

    .line 814
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 867
    :goto_1
    if-ltz v0, :cond_2

    .line 868
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 869
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_2

    .line 870
    iget-object v3, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_2
    move v3, v2

    .line 874
    goto :goto_0

    .line 816
    :sswitch_0
    if-eqz p3, :cond_3

    const/4 v0, 0x4

    .line 819
    :goto_2
    goto :goto_1

    .line 816
    :cond_3
    const/4 v0, 0x5

    goto :goto_2

    .line 821
    :sswitch_1
    if-eqz p3, :cond_4

    const/4 v0, 0x6

    .line 824
    :goto_3
    goto :goto_1

    .line 821
    :cond_4
    const/4 v0, 0x7

    goto :goto_3

    .line 826
    :sswitch_2
    if-eqz p3, :cond_5

    const/16 v0, 0x8

    .line 829
    :goto_4
    goto :goto_1

    .line 826
    :cond_5
    const/16 v0, 0x9

    goto :goto_4

    .line 831
    :sswitch_3
    if-eqz p3, :cond_6

    const/16 v0, 0xa

    .line 834
    :goto_5
    goto :goto_1

    .line 831
    :cond_6
    const/16 v0, 0xb

    goto :goto_5

    .line 836
    :sswitch_4
    if-eqz p3, :cond_7

    const/16 v0, 0xc

    .line 839
    :goto_6
    goto :goto_1

    .line 836
    :cond_7
    const/16 v0, 0xd

    goto :goto_6

    .line 841
    :sswitch_5
    if-eqz p3, :cond_8

    const/16 v0, 0xe

    .line 844
    :goto_7
    goto :goto_1

    .line 841
    :cond_8
    const/16 v0, 0xf

    goto :goto_7

    .line 846
    :sswitch_6
    if-eqz p3, :cond_9

    const/16 v0, 0x10

    .line 849
    :goto_8
    goto :goto_1

    .line 846
    :cond_9
    const/16 v0, 0x11

    goto :goto_8

    .line 851
    :sswitch_7
    if-eqz p3, :cond_a

    const/16 v0, 0x12

    .line 854
    :goto_9
    goto :goto_1

    .line 851
    :cond_a
    const/16 v0, 0x13

    goto :goto_9

    .line 856
    :sswitch_8
    if-eqz p3, :cond_b

    const/16 v0, 0x14

    .line 859
    :goto_a
    goto :goto_1

    .line 856
    :cond_b
    const/16 v0, 0x15

    goto :goto_a

    .line 861
    :sswitch_9
    if-eqz p3, :cond_c

    const/16 v0, 0x16

    :goto_b
    goto :goto_1

    :cond_c
    const/16 v0, 0x17

    goto :goto_b

    .line 814
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionType()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 239
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 240
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 241
    return-void
.end method

.method goodToGo()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 251
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 252
    return-void
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 210
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 305
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 307
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 308
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 309
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 312
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 313
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 315
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK. process the case of meizu animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x3

    .line 511
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v4, v0, :cond_3

    .line 512
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 514
    .local v6, "a":Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    :goto_1
    return-object v6

    .line 512
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_2
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_0

    .line 519
    :cond_3
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 520
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v6

    .line 521
    .restart local v6    # "a":Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_4
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_5
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v4, v9, :cond_6

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v4, v1, :cond_a

    .line 528
    :cond_6
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v9, :cond_8

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, p4

    move v5, p5

    .line 530
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v6

    .line 531
    .restart local v6    # "a":Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    .line 532
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_9

    const-string v8, "ANIM_THUMBNAIL_SCALE_UP"

    .line 534
    .local v8, "animName":Ljava/lang/String;
    :goto_3
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v8    # "animName":Ljava/lang/String;
    :cond_8
    move v0, v3

    .line 528
    goto :goto_2

    .line 532
    .restart local v6    # "a":Landroid/view/animation/Animation;
    :cond_9
    const-string v8, "ANIM_THUMBNAIL_SCALE_DOWN"

    goto :goto_3

    .line 539
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_a
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v2, :cond_d

    .line 542
    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppCustomTransitionEnter:Landroid/view/WindowAnimationInfo;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->loadWindowAnimation(Landroid/view/WindowAnimationInfo;)Landroid/view/animation/Animation;

    move-result-object v6

    .line 543
    .restart local v6    # "a":Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_b
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation:  anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition=ANIM_CUSTOM_MEIZU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 542
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppCustomTransitionExit:Landroid/view/WindowAnimationInfo;

    goto :goto_4

    .line 550
    :cond_d
    const/4 v7, 0x0

    .line 551
    .local v7, "animAttr":I
    sparse-switch p2, :sswitch_data_0

    .line 603
    :goto_5
    if-eqz v7, :cond_19

    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 604
    .restart local v6    # "a":Landroid/view/animation/Animation;
    :goto_6
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_e
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " animAttr=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 553
    .end local v6    # "a":Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p3, :cond_f

    move v7, v1

    .line 556
    :goto_7
    goto :goto_5

    .line 553
    :cond_f
    const/4 v7, 0x5

    goto :goto_7

    .line 558
    :sswitch_1
    if-eqz p3, :cond_10

    const/4 v7, 0x6

    .line 561
    :goto_8
    goto :goto_5

    .line 558
    :cond_10
    const/4 v7, 0x7

    goto :goto_8

    .line 563
    :sswitch_2
    if-eqz p3, :cond_11

    const/16 v7, 0x8

    .line 566
    :goto_9
    goto :goto_5

    .line 563
    :cond_11
    const/16 v7, 0x9

    goto :goto_9

    .line 568
    :sswitch_3
    if-eqz p3, :cond_12

    move v7, v2

    .line 571
    :goto_a
    goto :goto_5

    .line 568
    :cond_12
    const/16 v7, 0xb

    goto :goto_a

    .line 573
    :sswitch_4
    if-eqz p3, :cond_13

    const/16 v7, 0xc

    .line 576
    :goto_b
    goto :goto_5

    .line 573
    :cond_13
    const/16 v7, 0xd

    goto :goto_b

    .line 578
    :sswitch_5
    if-eqz p3, :cond_14

    const/16 v7, 0xe

    .line 581
    :goto_c
    goto :goto_5

    .line 578
    :cond_14
    const/16 v7, 0xf

    goto :goto_c

    .line 583
    :sswitch_6
    if-eqz p3, :cond_15

    const/16 v7, 0x10

    .line 586
    :goto_d
    goto/16 :goto_5

    .line 583
    :cond_15
    const/16 v7, 0x11

    goto :goto_d

    .line 588
    :sswitch_7
    if-eqz p3, :cond_16

    const/16 v7, 0x12

    .line 591
    :goto_e
    goto/16 :goto_5

    .line 588
    :cond_16
    const/16 v7, 0x13

    goto :goto_e

    .line 593
    :sswitch_8
    if-eqz p3, :cond_17

    const/16 v7, 0x14

    .line 596
    :goto_f
    goto/16 :goto_5

    .line 593
    :cond_17
    const/16 v7, 0x15

    goto :goto_f

    .line 598
    :sswitch_9
    if-eqz p3, :cond_18

    const/16 v7, 0x16

    :goto_10
    goto/16 :goto_5

    :cond_18
    const/16 v7, 0x17

    goto :goto_10

    .line 603
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 551
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method loadWindowAnimation(Landroid/view/WindowAnimationInfo;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "lp"    # Landroid/view/WindowAnimationInfo;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. load animaitoninfo."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 965
    const/4 v11, 0x0

    .line 966
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    iget v2, p1, Landroid/view/WindowAnimationInfo;->animType:I

    if-eqz v2, :cond_2

    .line 967
    new-instance v11, Landroid/view/animation/AnimationSet;

    .end local v11    # "animSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 968
    .restart local v11    # "animSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mWindowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 969
    iget v2, p1, Landroid/view/WindowAnimationInfo;->animType:I

    and-int/lit8 v12, v2, 0x1

    .line 970
    .local v12, "type":I
    if-ne v12, v3, :cond_0

    .line 971
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p1, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    iget v2, p1, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    iget v3, p1, Landroid/view/WindowAnimationInfo;->translateToXType:I

    iget v4, p1, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    iget v5, p1, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    iget v6, p1, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    iget v7, p1, Landroid/view/WindowAnimationInfo;->translateToYType:I

    iget v8, p1, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 976
    .local v0, "translateAnim":Landroid/view/animation/TranslateAnimation;
    iget-wide v2, p1, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 977
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 979
    .end local v0    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget v2, p1, Landroid/view/WindowAnimationInfo;->animType:I

    and-int/lit8 v12, v2, 0x2

    .line 980
    const/4 v2, 0x2

    if-ne v12, v2, :cond_1

    .line 981
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v2, p1, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    iget v3, p1, Landroid/view/WindowAnimationInfo;->scaleToX:F

    iget v4, p1, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    iget v5, p1, Landroid/view/WindowAnimationInfo;->scaleToY:F

    iget v6, p1, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    iget v7, p1, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    iget v8, p1, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    iget v9, p1, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 986
    .local v1, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    iget-wide v2, p1, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 987
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 989
    .end local v1    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    :cond_1
    iget v2, p1, Landroid/view/WindowAnimationInfo;->animType:I

    and-int/lit8 v12, v2, 0x4

    .line 990
    const/4 v2, 0x4

    if-ne v12, v2, :cond_2

    .line 991
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    iget v2, p1, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    iget v3, p1, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 993
    .local v10, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    iget-wide v2, p1, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 994
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 997
    .end local v10    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "type":I
    :cond_2
    return-object v11
.end method

.method public overridePendingAppCustomTransition(Ljava/lang/String;Landroid/view/WindowAnimationInfo;Landroid/view/WindowAnimationInfo;Landroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # Landroid/view/WindowAnimationInfo;
    .param p3, "exitAnim"    # Landroid/view/WindowAnimationInfo;
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. process app custom transition."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 948
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 949
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppCustomTransitionEnter:Landroid/view/WindowAnimationInfo;

    invoke-virtual {v1, v0, p2}, Landroid/view/WindowAnimationInfo;->copyFrom(ILandroid/view/WindowAnimationInfo;)V

    .line 952
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppCustomTransitionExit:Landroid/view/WindowAnimationInfo;

    invoke-virtual {v1, v0, p3}, Landroid/view/WindowAnimationInfo;->copyFrom(ILandroid/view/WindowAnimationInfo;)V

    .line 953
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 954
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 958
    .end local v0    # "changes":I
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 625
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 627
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 628
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 630
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 640
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 641
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 642
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 643
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 644
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 645
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 646
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 647
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 649
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 657
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 658
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 659
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 660
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 661
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 662
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 666
    :goto_1
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 619
    :cond_0
    return-void
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 247
    :cond_0
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 207
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 801
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 802
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 224
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 216
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
