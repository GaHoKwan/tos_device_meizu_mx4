.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$OnSurfaceDestoyredListenner;,
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHadSurface:Z

.field private mLayer:Landroid/view/HardwareLayer;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mLock:[Ljava/lang/Object;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixChanged:Z

.field private mNativeWindow:I

.field private final mNativeWindowLock:[Ljava/lang/Object;

.field private mOpaque:Z

.field private mSaveCount:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

.field private mUpdateLayer:Z

.field private mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mUpdateSurface:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 128
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 140
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 128
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 128
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 168
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Landroid/view/TextureView;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/TextureView;

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/view/TextureView;->destroySurface()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/TextureView;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/TextureView;

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    return-void
.end method

.method private applyTransformMatrix()V
    .locals 2

    .prologue
    .line 536
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 540
    :cond_0
    return-void
.end method

.method private applyUpdate()V
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v0, :cond_2

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 482
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->update(IIZ)V

    .line 486
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 480
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private destroySurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 238
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->clearStorage()V

    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, "shouldRelease":Z
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 245
    :cond_1
    iget-object v2, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 246
    :try_start_0
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 247
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    .line 250
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 251
    :cond_2
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 252
    iput-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    .line 253
    iget-object v1, p0, Landroid/view/TextureView;->mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Landroid/view/TextureView;->mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$OnSurfaceDestoyredListenner;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    .line 257
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 259
    .end local v0    # "shouldRelease":Z
    :cond_4
    return-void

    .line 247
    .restart local v0    # "shouldRelease":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 173
    return-void
.end method

.method private native nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native nDestroyNativeWindow()V
.end method

.method private static native nLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V
.end method

.method private onSetSurfaceTextureError()Z
    .locals 3

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/view/TextureView;->mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Landroid/view/TextureView;->mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$OnSurfaceDestoyredListenner;->onSurfaceError(Landroid/graphics/SurfaceTexture;)V

    .line 435
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 436
    const/4 v0, 0x1

    .line 438
    :cond_0
    return v0
.end method

.method private updateLayer()V
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 460
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 461
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLayerAndInvalidate()V
    .locals 2

    .prologue
    .line 465
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 466
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 467
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 469
    return-void

    .line 467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public buildLayer()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 350
    invoke-direct {p0}, Landroid/view/TextureView;->destroySurface()V

    .line 351
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentCaches()V

    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 353
    return-void
.end method

.method destroyLayer(Z)Z
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method protected destroySurfaceSafely()V
    .locals 4

    .prologue
    .line 878
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_0

    .line 879
    new-instance v1, Landroid/view/TextureView$3;

    invoke-direct {v1, p0}, Landroid/view/TextureView$3;-><init>(Landroid/view/TextureView;)V

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->executeHardwareAction(Ljava/lang/Runnable;)Z

    move-result v0

    .line 886
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 887
    const-string v1, "TextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextureView was not able to detach from GLContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 313
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 314
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 315
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 591
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 621
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 623
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not acquire hardware rendering context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_0
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 631
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 637
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    .line 641
    :cond_1
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_2

    .line 642
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 645
    .end local v0    # "info":Landroid/view/View$AttachInfo;
    :cond_2
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 358
    iget v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v3, 0x8020

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 359
    iget v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v3, -0x600001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 361
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v2, :cond_4

    .line 362
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-nez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-object v1

    .line 366
    :cond_1
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v2, v3}, Landroid/view/HardwareRenderer;->createHardwareLayer(Z)Landroid/view/HardwareLayer;

    move-result-object v2

    iput-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    .line 367
    iget-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-nez v2, :cond_2

    .line 369
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2, v3}, Landroid/view/HardwareRenderer;->createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 371
    :cond_2
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 372
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v2}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 374
    new-instance v2, Landroid/view/TextureView$2;

    invoke-direct {v2, p0}, Landroid/view/TextureView$2;-><init>(Landroid/view/TextureView;)V

    iput-object v2, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 388
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 390
    iget-object v2, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-nez v2, :cond_3

    .line 391
    iget-object v2, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 393
    :cond_3
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 396
    :cond_4
    iget-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v2, :cond_6

    .line 400
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 404
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 405
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 406
    iget-object v2, p0, Landroid/view/TextureView;->mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_5

    .line 408
    :try_start_0
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    :cond_5
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3, v4}, Landroid/view/HardwareRenderer;->setSurfaceTexture(Landroid/view/HardwareLayer;Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 425
    :cond_6
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 426
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 428
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    goto/16 :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/view/TextureView;->onSetSurfaceTextureError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    throw v0

    .line 409
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x2

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 530
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 532
    return-object p1
.end method

.method hasStaticLayer()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 4
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    :goto_0
    return-object v0

    .line 706
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    .line 707
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    .line 710
    :cond_1
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    iget v2, p0, Landroid/view/TextureView;->mNativeWindow:I

    iget-object v3, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, p1}, Landroid/view/TextureView;->nLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 712
    monitor-exit v1

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 717
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 203
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "TextureView"

    const-string v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 212
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 216
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 217
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Landroid/view/TextureView$1;

    invoke-direct {v1, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->executeHardwareAction(Ljava/lang/Runnable;)Z

    move-result v0

    .line 225
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 226
    const-string v1, "TextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextureView was not able to destroy its surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 325
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 330
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 332
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 333
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 337
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 445
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 449
    if-nez p2, :cond_1

    .line 450
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 451
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v0, :cond_1

    .line 277
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    iput-object p2, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 278
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 280
    :cond_1
    return-void
.end method

.method public setOnSurfaceDestroyedListener(Landroid/view/TextureView$OnSurfaceDestoyredListenner;)V
    .locals 0
    .param p1, "l"    # Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    .prologue
    .line 811
    iput-object p1, p0, Landroid/view/TextureView;->mSurfaceDestoryedListener:Landroid/view/TextureView$OnSurfaceDestoyredListenner;

    .line 812
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_0

    .line 192
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 193
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 197
    :cond_0
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 775
    :cond_1
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 777
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 778
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 799
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 800
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 509
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 511
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 512
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 732
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_0

    .line 733
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 736
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_0
    iget v0, p0, Landroid/view/TextureView;->mNativeWindow:I

    iget-object v2, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2}, Landroid/view/TextureView;->nUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V

    .line 738
    monitor-exit v1

    .line 740
    :cond_0
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
