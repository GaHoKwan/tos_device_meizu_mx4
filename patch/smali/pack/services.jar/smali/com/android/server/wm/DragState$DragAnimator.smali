.class public Lcom/android/server/wm/DragState$DragAnimator;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.DragState.Feature drag animator "
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;
    }
.end annotation


# static fields
.field private static final ANIM_NFC_TIME:I = 0x14a

.field private static final DRAG_DISMISS_ANIM_MIN_SCALE:F = 0.0f

.field private static final DRAG_DISMISS_ANIM_TIME:I = 0x14d

.field private static final DRAG_END_ANIM_TIME:I = 0x1a1

.field private static final DRAG_END_MOVEMENT_SPEED:D = 2.0


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field mDragAnimator:Landroid/animation/ObjectAnimator;

.field private mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

.field private sInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 1

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    new-instance v0, Lcom/android/server/wm/DragState$DragAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragState$DragAnimator$1;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 945
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DragState$DragAnimator;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DragState$DragAnimator;

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/wm/DragState$DragAnimator;->createAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private createAnimation()Landroid/animation/AnimatorSet;
    .locals 27

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DragState;->access$300(Lcom/android/server/wm/DragState;)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 896
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    return-object v21

    .line 818
    :pswitch_0
    new-instance v21, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 821
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 822
    .local v10, "dragEndXPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 823
    .local v11, "dragEndYPHolder":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    const/16 v23, 0x1

    aput-object v11, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v19, v21, v22

    .line 826
    .local v19, "xDis":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v20, v21, v22

    .line 827
    .local v20, "yDis":F
    add-float v21, v19, v20

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 828
    .local v4, "dis":D
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v21, v4, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    .line 829
    .local v17, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 833
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 838
    .end local v4    # "dis":D
    .end local v10    # "dragEndXPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "dragEndYPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "time":J
    .end local v19    # "xDis":F
    .end local v20    # "yDis":F
    :pswitch_1
    new-instance v21, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 841
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 843
    .local v8, "dragDelXPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 845
    .local v9, "dragDelYPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v21, "scale"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 846
    .local v7, "dragDelWidthPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 847
    .local v6, "dragDelAlphaPHolder":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v8, v22, v23

    const/16 v23, 0x1

    aput-object v9, v22, v23

    const/16 v23, 0x2

    aput-object v7, v22, v23

    const/16 v23, 0x3

    aput-object v6, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x14d

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 855
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 862
    .end local v6    # "dragDelAlphaPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "dragDelWidthPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "dragDelXPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "dragDelYPHolder":Landroid/animation/PropertyValuesHolder;
    :pswitch_2
    new-instance v21, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 865
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitHeight:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 866
    .local v12, "dragSendYPHolder":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x14a

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 873
    const-string v21, "scale"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 875
    .local v16, "pvhScale":Landroid/animation/PropertyValuesHolder;
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x41200000    # 10.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 877
    .local v13, "dragXPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x41200000    # 10.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 879
    .local v14, "dragYPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_3

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 881
    .local v15, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x1

    aput-object v15, v22, v23

    const/16 v23, 0x2

    aput-object v13, v22, v23

    const/16 v23, 0x3

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x14a

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 882
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 883
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 884
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 886
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wm/DragState;->mRecoverAnimNfc:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DragState;->access$100(Lcom/android/server/wm/DragState;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v3, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 891
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 845
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 846
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 873
    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 879
    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 915
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 906
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 907
    iput-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 908
    iput-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/DragState;->mIsDragAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$502(Lcom/android/server/wm/DragState;Z)Z

    .line 910
    iput-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 911
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 919
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wm/DragState;->mIsDragAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$502(Lcom/android/server/wm/DragState;Z)Z

    .line 902
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, 0x0

    .line 923
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 935
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 927
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    # getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$300(Lcom/android/server/wm/DragState;)I

    move-result v0

    if-nez v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 934
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    # getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$300(Lcom/android/server/wm/DragState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    # getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$300(Lcom/android/server/wm/DragState;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 930
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getScale()F

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    goto :goto_1
.end method
