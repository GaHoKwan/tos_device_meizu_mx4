.class public Lcom/android/server/wm/ActionbarAnimator;
.super Ljava/lang/Object;
.source "ActionbarAnimator.java"


# static fields
.field static final DEBUG_ACTIONBAR_ANIMATION:Z = false

.field private static final FOR_ALL_WINDOW:I = 0x4

.field private static final FOR_EXIT_WINDOW:I = 0x1

.field private static final FOR_FIRST_WINDOW:I = 0x3

.field private static final FOR_STARTING_WINDOW:I = 0x2

.field static final TAG:Ljava/lang/String; = "ActionbarAnimator"


# instance fields
.field mCurrentTime:J

.field mDuration:J

.field mEnter:Z

.field mFirstShowed:Z

.field final mFxSession:Landroid/view/SurfaceSession;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field mPosition:F

.field mShowing:I

.field mShown:Z

.field private mSplitActionBar:Z

.field mStartShowed:Z

.field mStartTime:J

.field mSurface:Landroid/view/SurfaceControl;

.field private mUserAnimateLayer:I

.field mWholeShowed:Z

.field final mWinToken:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V
    .locals 8
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "enter"    # Z
    .param p4, "duration"    # J
    .param p6, "split"    # Z

    .prologue
    const-wide/16 v5, -0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartShowed:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mFirstShowed:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    .line 36
    iput v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 39
    iput-wide v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    .line 40
    iput-wide v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    .line 41
    iput v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    .line 48
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mSplitActionBar:Z

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mFxSession:Landroid/view/SurfaceSession;

    .line 172
    iput-object p2, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    .line 173
    iput-boolean p3, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    .line 174
    iput-wide p4, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    .line 175
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 176
    iput-boolean p6, p0, Lcom/android/server/wm/ActionbarAnimator;->mSplitActionBar:Z

    .line 179
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findNonStartingMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 185
    .local v7, "wstate":Lcom/android/server/wm/WindowState;
    :goto_0
    if-nez v7, :cond_1

    .line 212
    :goto_1
    return-void

    .line 182
    .end local v7    # "wstate":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .restart local v7    # "wstate":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 190
    .local v3, "winWidth":I
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 193
    .local v4, "winHeight":I
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "ActionbarAnimator"

    const/4 v5, -0x3

    const v6, 0x40004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 205
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    if-nez v0, :cond_2

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActionbarAnimator;->onDrawStateChange()V

    .line 210
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private getAlpha()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    iget-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 65
    .local v0, "alpha":F
    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    :cond_1
    return v0

    .line 63
    .end local v0    # "alpha":F
    :cond_2
    iget v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    sub-float v0, v2, v1

    goto :goto_0
.end method

.method private prepareTarget(I)V
    .locals 16
    .param p1, "reason"    # I

    .prologue
    .line 104
    const/4 v13, 0x0

    .line 105
    .local v13, "targetId":I
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findNonStartingMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v15

    .line 111
    .local v15, "wstate":Lcom/android/server/wm/WindowState;
    :goto_0
    if-nez v15, :cond_2

    .line 168
    :cond_0
    :goto_1
    return-void

    .line 108
    .end local v15    # "wstate":Lcom/android/server/wm/WindowState;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v15

    .restart local v15    # "wstate":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 116
    .local v4, "winWidth":I
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 117
    .local v5, "winHeight":I
    const/4 v12, 0x0

    .line 118
    .local v12, "surface":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z

    if-eqz v1, :cond_3

    .line 120
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    .line 121
    new-instance v1, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ActionbarAnimator;->mFxSession:Landroid/view/SurfaceSession;

    const-string v3, "ActionbarAnimator"

    const/4 v6, -0x3

    const v7, 0x40004

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    .line 124
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_3
    :goto_2
    iget-boolean v1, v15, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_5

    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getIdentity()I

    move-result v13

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v13}, Landroid/view/SurfaceControl;->setTargetSurface(I)V

    .line 134
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    if-lez v1, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 139
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActionbarAnimator;->getAlpha()F

    move-result v8

    .line 140
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 142
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v9, "crop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSplitActionBar:Z

    if-eqz v1, :cond_8

    .line 144
    const/4 v11, 0x0

    .line 145
    .local v11, "splitHeight":I
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_7

    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    if-lez v1, :cond_7

    .line 147
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    .line 151
    :goto_4
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "crop":Landroid/graphics/Rect;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int v3, v5, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v9, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .end local v11    # "splitHeight":I
    .restart local v9    # "crop":Landroid/graphics/Rect;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v9}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 160
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 165
    .end local v8    # "alpha":F
    .end local v9    # "crop":Landroid/graphics/Rect;
    :cond_5
    if-eqz v12, :cond_0

    .line 166
    invoke-virtual {v12}, Landroid/view/SurfaceControl;->destroy()V

    goto/16 :goto_1

    .line 125
    :catch_0
    move-exception v10

    .line 126
    .local v10, "e":Landroid/view/Surface$OutOfResourcesException;
    const/4 v12, 0x0

    goto :goto_2

    .line 137
    .end local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_3

    .line 149
    .restart local v8    # "alpha":F
    .restart local v9    # "crop":Landroid/graphics/Rect;
    .restart local v11    # "splitHeight":I
    :cond_7
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getActionbarHeight()I

    move-result v11

    goto :goto_4

    .line 153
    .end local v11    # "splitHeight":I
    :cond_8
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v14, v1, Lcom/android/server/wm/WindowStateAnimator;->mWindowOriginalTop:I

    .line 154
    .local v14, "top":I
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "crop":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getActionbarHeight()I

    move-result v2

    add-int/2addr v2, v14

    invoke-direct {v9, v1, v14, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .restart local v9    # "crop":Landroid/graphics/Rect;
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 156
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getActionbarHeight()I

    move-result v3

    iget-object v6, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getStatusbarHeight()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v9, v1, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5
.end method

.method private reasonString(I)Ljava/lang/String;
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 58
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "exit window"

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "enter window starting showed"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "enter window first showed"

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "enter window all showed"

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    .line 251
    :cond_0
    return-void
.end method

.method public onDrawStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    if-eqz v0, :cond_0

    .line 216
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_2

    .line 219
    invoke-direct {p0, v4}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 220
    iput v4, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 221
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    goto :goto_0

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mFirstShowed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_3

    .line 223
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 224
    iput v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 225
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mFirstShowed:Z

    goto :goto_0

    .line 226
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartShowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 228
    iput v2, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 229
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartShowed:Z

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 254
    iput-wide p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    .line 255
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    .line 77
    return-void
.end method

.method public stepAnimation(J)V
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 80
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 81
    iput v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    .line 85
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 86
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    iput-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    .line 88
    :cond_2
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    iget-wide v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 89
    iput v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    goto :goto_0

    .line 92
    :cond_3
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    iget-wide v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v5

    iget-wide v2, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 93
    .local v0, "position":F
    iget-object v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 94
    iget v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    .line 95
    iput v6, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 97
    :cond_4
    iget v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    .line 98
    iput v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    goto :goto_0
.end method

.method public updateAnimation()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/ActionbarAnimator;->onDrawStateChange()V

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/server/wm/ActionbarAnimator;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 239
    :cond_0
    return-void
.end method

.method public updateLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 258
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 260
    iput p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    .line 262
    :cond_0
    return-void
.end method
