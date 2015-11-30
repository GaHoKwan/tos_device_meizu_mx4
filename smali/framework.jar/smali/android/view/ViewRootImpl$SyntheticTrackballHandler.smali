.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    .prologue
    .line 5212
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5213
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 5214
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5320
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 5325
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 5326
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5328
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5220
    .local v3, "curTime":J
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v11, 0xfa

    add-long/2addr v5, v11

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    .line 5223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5224
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5225
    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 5228
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    .line 5229
    .local v26, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 5230
    .local v10, "metaState":I
    packed-switch v26, :pswitch_data_0

    .line 5249
    :goto_0
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TB X="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " step="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " acc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " move="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " step="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " acc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " move="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v11, "X"

    invoke-virtual {v2, v5, v6, v7, v11}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v28

    .line 5256
    .local v28, "xOff":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v11, "Y"

    invoke-virtual {v2, v5, v6, v7, v11}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 5264
    .local v29, "yOff":F
    const/4 v8, 0x0

    .line 5265
    .local v8, "keycode":I
    const/16 v27, 0x0

    .line 5266
    .local v27, "movement":I
    const/high16 v24, 0x3f800000    # 1.0f

    .line 5267
    .local v24, "accel":F
    cmpl-float v2, v28, v29

    if-lez v2, :cond_9

    .line 5268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v27

    .line 5269
    if-eqz v27, :cond_2

    .line 5270
    if-lez v27, :cond_8

    const/16 v8, 0x16

    .line 5272
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v0, v2, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v24, v0

    .line 5273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5285
    :cond_2
    :goto_2
    if-eqz v8, :cond_c

    .line 5286
    if-gez v27, :cond_3

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 5287
    :cond_3
    move/from16 v0, v27

    int-to-float v2, v0

    mul-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v25, v0

    .line 5288
    .local v25, "accelMovement":I
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Move: movement="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accelMovement="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    :cond_4
    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 5292
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering fake DPAD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5294
    :cond_5
    add-int/lit8 v27, v27, -0x1

    .line 5295
    sub-int v9, v25, v27

    .line 5296
    .local v9, "repeatCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5301
    .end local v9    # "repeatCount":I
    :cond_6
    :goto_3
    if-lez v27, :cond_b

    .line 5302
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering fake DPAD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    :cond_7
    add-int/lit8 v27, v27, -0x1

    .line 5305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5306
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x400

    const/16 v23, 0x101

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, v8

    move/from16 v19, v10

    invoke-direct/range {v11 .. v23}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v2, v11}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5310
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x400

    const/16 v23, 0x101

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, v8

    move/from16 v19, v10

    invoke-direct/range {v11 .. v23}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v2, v11}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_3

    .line 5232
    .end local v8    # "keycode":I
    .end local v24    # "accel":F
    .end local v25    # "accelMovement":I
    .end local v27    # "movement":I
    .end local v28    # "xOff":F
    .end local v29    # "yOff":F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5233
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5234
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    .line 5240
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5241
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5242
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    .line 5270
    .restart local v8    # "keycode":I
    .restart local v24    # "accel":F
    .restart local v27    # "movement":I
    .restart local v28    # "xOff":F
    .restart local v29    # "yOff":F
    :cond_8
    const/16 v8, 0x15

    goto/16 :goto_1

    .line 5275
    :cond_9
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-lez v2, :cond_2

    .line 5276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v27

    .line 5277
    if-eqz v27, :cond_2

    .line 5278
    if-lez v27, :cond_a

    const/16 v8, 0x14

    .line 5280
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v0, v2, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v24, v0

    .line 5281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_2

    .line 5278
    :cond_a
    const/16 v8, 0x13

    goto :goto_4

    .line 5315
    .restart local v25    # "accelMovement":I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 5317
    .end local v25    # "accelMovement":I
    :cond_c
    return-void

    .line 5230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
