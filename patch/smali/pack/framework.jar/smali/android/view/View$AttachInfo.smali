.class Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field mAccessibilityFetchFlags:I

.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mApplicationScale:F

.field mBlurAlpha:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: BlurGlass Feature: Blur alpha"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mBlurIntensity:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: BlurGlass Feature: Blur intensity"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mBlurLevel:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: BlurGlass Feature: Blur level"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field final mDisplay:Landroid/view/Display;

.field mDrawingTime:J

.field mEnableBlurGlass:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: BlurGlass Feature: Blur Switch state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareCanvas:Landroid/view/HardwareCanvas;

.field mHardwareRenderer:Landroid/view/HardwareRenderer;

.field mHasNonEmptyGivenInternalInsets:Z

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mIWindowId:Landroid/view/IWindowId;

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field final mInvalidateChildLocation:[I

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field mLayoutTime:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: View Profile: Time consumed by processing of layout"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mMeasureTime:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: View Profile: Time consumed by processing of measuring"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field mScreenOn:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field mStaticBlurMode:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "HuangTao@Shell: BlurGlass Feature: Target blur mode which defined by user"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mSurface:Landroid/view/Surface;

.field mSurfaceViewCount:I

.field mSystemUiVisibility:I

.field mTargetBlurRect:Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: BlurGlass Feature: Target blur view rect which defined by user"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mTurnOffWindowResizeAnim:Z

.field mUse32BitDrawingCache:Z

.field mViewReqestingBlurGlass:Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Cui.Yingyun@Shell: BlurGlass Feature: Target blurred view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mViewRequestingLayout:Landroid/view/View;

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowId:Landroid/view/WindowId;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .locals 4
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const v2, -0x3a4b6800    # -5779.0f

    .line 20220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19890
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 19897
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 19904
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 19913
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 19926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 19928
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 19955
    iput-boolean v3, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 20019
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 20025
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 20032
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 20038
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 20060
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 20065
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 20070
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 20075
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 20080
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 20085
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 20103
    const-string v0, "debug.layout"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 20108
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 20221
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 20222
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 20223
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 20224
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 20225
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 20226
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 20227
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 20230
    iput v2, p0, Landroid/view/View$AttachInfo;->mBlurLevel:F

    .line 20231
    iput v2, p0, Landroid/view/View$AttachInfo;->mBlurIntensity:F

    .line 20232
    iput v2, p0, Landroid/view/View$AttachInfo;->mBlurAlpha:F

    .line 20233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTargetBlurRect:Landroid/graphics/Rect;

    .line 20234
    iput-boolean v3, p0, Landroid/view/View$AttachInfo;->mStaticBlurMode:Z

    .line 20236
    return-void
.end method
