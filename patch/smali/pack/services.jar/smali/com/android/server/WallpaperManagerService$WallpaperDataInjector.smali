.class public Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "yfy@SHELL.WallpaperManagerService.Feature modify for lock wallpaper"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperDataInjector"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field imageWallpaperComponent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mHeightOfLockWallpaper:I

.field mImageWallpaperComponentOfLockWallpaper:Landroid/content/ComponentName;

.field mLockWallpaperComponent:Landroid/content/ComponentName;

.field mNameOfLockWallpaper:Ljava/lang/String;

.field mNextLockWallpaperComponent:Landroid/content/ComponentName;

.field mWidthOfLockWallpaper:I

.field wallpaperFileLock:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 2223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2203
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 2212
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.ImageWallpaper"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->imageWallpaperComponent:Landroid/content/ComponentName;

    .line 2215
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.ImageWallpaper"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mImageWallpaperComponentOfLockWallpaper:Landroid/content/ComponentName;

    .line 2218
    iput v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    .line 2219
    iput v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    .line 2220
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->callbacks:Landroid/os/RemoteCallbackList;

    .line 2225
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mContext:Landroid/content/Context;

    .line 2226
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2227
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2228
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2229
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2230
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    .line 2231
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    .line 2232
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WallpaperData-:  mWidthOfLockWallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHeightOfLockWallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    return-void
.end method
