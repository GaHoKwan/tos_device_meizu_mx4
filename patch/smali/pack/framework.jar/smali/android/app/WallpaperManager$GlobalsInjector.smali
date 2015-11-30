.class Landroid/app/WallpaperManager$GlobalsInjector;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "Globals injector to peek lock wallpaper"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalsInjector"
.end annotation


# static fields
.field static final SMART_WALLPAPER_TARGET:Ljava/lang/String; = "smart_wallpaper_target"


# instance fields
.field private SCREEN_H:I

.field private SCREEN_W:I

.field private mDefaultLockWallpaper:Landroid/graphics/Bitmap;

.field private mLockWallpaper:Landroid/graphics/Bitmap;

.field private mSmartWallpapaerTarget:Landroid/graphics/Bitmap;

.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 1324
    iput-object p1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->this$0:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput v3, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_W:I

    .line 1320
    iput v3, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_H:I

    .line 1326
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1327
    .local v1, "dm":Landroid/util/DisplayMetrics;
    # getter for: Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/app/WallpaperManager;->access$900(Landroid/app/WallpaperManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1328
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1329
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1330
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_W:I

    .line 1331
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_H:I

    .line 1332
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCREEN_W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_W:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SCREEN_H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_H:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-void
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$GlobalsInjector;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$GlobalsInjector;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1316
    iput-object p1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Landroid/app/WallpaperManager$GlobalsInjector;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$GlobalsInjector;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1316
    iput-object p1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1384
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1385
    .local v4, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$GlobalsInjector;->this$0:Landroid/app/WallpaperManager;

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v7

    # getter for: Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;
    invoke-static {}, Landroid/app/WallpaperManager;->access$1000()Landroid/app/WallpaperManager$Globals;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Landroid/app/IWallpaperManager;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1387
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3

    .line 1388
    const-string/jumbo v7, "width"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1389
    .local v5, "width":I
    const-string v7, "height"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1390
    .local v2, "height":I
    if-lez v5, :cond_0

    if-gtz v2, :cond_2

    .line 1391
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1394
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1397
    :goto_0
    if-eqz v0, :cond_1

    .line 1398
    :try_start_2
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1420
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "height":I
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "width":I
    :cond_1
    :goto_1
    return-object v0

    .line 1402
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "height":I
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1403
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1404
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1405
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1408
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1409
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1418
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "width":I
    :catch_1
    move-exception v7

    :cond_3
    move-object v0, v6

    .line 1420
    goto :goto_1

    .line 1395
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "height":I
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method private getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1433
    const/4 v3, 0x0

    .line 1434
    .local v3, "is":Ljava/io/InputStream;
    # invokes: Landroid/app/WallpaperManager;->checkMzWallpaperPath()Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$500()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1436
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/custom/meizu/wallpaper/default_lock_wallpaper.png"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 1445
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 1446
    iget v6, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_W:I

    .line 1447
    .local v6, "width":I
    iget v2, p0, Landroid/app/WallpaperManager$GlobalsInjector;->SCREEN_H:I

    .line 1448
    .local v2, "height":I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1449
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1450
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1451
    invoke-static {v3, v0, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1453
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1464
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    return-object v0

    .line 1437
    :catch_0
    move-exception v1

    .line 1439
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1442
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108022f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 1454
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedLockWallpaper()V
    .locals 1

    .prologue
    .line 1370
    monitor-enter p0

    .line 1371
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    .line 1373
    monitor-exit p0

    .line 1374
    return-void

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSmartWallpaperTarget()Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Globals injector to get smart wallpaper target"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1504
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1505
    .local v5, "params":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1506
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Ljava/io/File;

    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "smart_wallpaper_target"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1509
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-object v0

    .line 1513
    :cond_1
    const/high16 v6, 0x10000000

    :try_start_0
    invoke-static {v2, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1518
    :goto_1
    if-eqz v3, :cond_0

    .line 1519
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1520
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1521
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1522
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v0, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1524
    .local v0, "bm":Landroid/graphics/Bitmap;
    iput-object v0, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mSmartWallpapaerTarget:Landroid/graphics/Bitmap;

    .line 1526
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1527
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1514
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 1516
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 1343
    monitor-enter p0

    .line 1345
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 1365
    :goto_0
    return-object v1

    .line 1348
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1349
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 1366
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1351
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$GlobalsInjector;->getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1357
    :goto_1
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 1359
    :try_start_4
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$GlobalsInjector;->getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1363
    :goto_2
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1360
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 1361
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1365
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public setSmartWallpaperTarget(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "Globals injector to set smart wallpaper target"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1473
    # getter for: Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;
    invoke-static {}, Landroid/app/WallpaperManager;->access$1000()Landroid/app/WallpaperManager$Globals;

    move-result-object v5

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1474
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_0
    :goto_0
    return v4

    .line 1478
    :cond_1
    :try_start_0
    # getter for: Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;
    invoke-static {}, Landroid/app/WallpaperManager;->access$1000()Landroid/app/WallpaperManager$Globals;

    move-result-object v5

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1480
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 1483
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/app/WallpaperManager$GlobalsInjector;->mSmartWallpapaerTarget:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    const/4 v2, 0x0

    .line 1486
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1487
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1488
    const/4 v5, 0x1

    .line 1490
    if-eqz v3, :cond_2

    .line 1491
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    move v4, v5

    goto :goto_0

    .line 1490
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_3

    .line 1491
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1494
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1490
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
