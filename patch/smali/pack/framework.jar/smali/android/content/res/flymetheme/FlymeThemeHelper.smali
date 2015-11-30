.class public Landroid/content/res/flymetheme/FlymeThemeHelper;
.super Ljava/lang/Object;
.source "FlymeThemeHelper.java"


# static fields
.field public static LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String; = null

.field public static MEIZU_CALENDAR_ICON:Z = false

.field private static SCALE_VALUE:F = 0.0f

.field private static final THEME_ICON_FLAG_BACKGROUND:I = 0x2

.field private static final THEME_ICON_FLAG_BB:I = 0x3

.field private static final THEME_ICON_FLAG_BORDER:I = 0x1

.field private static final THEME_ICON_FLAG_DEFAULT:I = 0x0

.field private static final THEME_ICON_FLAG_MASK:I = 0x4

.field private static final THEME_ICON_FLAG_MBB:I = 0x7

.field private static final THEME_ICON_FLAG_M_BACKGROUND:I = 0x6

.field private static final THEME_ICON_FLAG_M_BORDER:I = 0x5

.field private static mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

.field private static mMBBFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    .line 53
    const-string v0, "draw_date"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String;

    .line 57
    const-string v0, "draw_icon_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String;

    .line 61
    const-string v0, "draw_bg_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "statusbar_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String;

    .line 70
    const-string v0, "calendar_dayofweek_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    .line 77
    const v0, 0x3f558106    # 0.834f

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    .line 84
    const/4 v0, 0x0

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "backguard"    # Landroid/graphics/Bitmap;
    .param p1, "top"    # Landroid/graphics/Bitmap;
    .param p2, "isBorder"    # Z

    .prologue
    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 147
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 148
    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 149
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 152
    .local v11, "w":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 153
    .local v7, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 154
    .local v12, "w_2":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 155
    .local v8, "h_2":I
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .restart local v5    # "paint":Landroid/graphics/Paint;
    sub-int v1, v11, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v10, 0x0

    .line 172
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "h":I
    .end local v8    # "h_2":I
    .end local v11    # "w":I
    .end local v12    # "w_2":I
    :cond_0
    :goto_0
    return-object v9

    .line 159
    :catch_0
    move-exception v6

    .line 160
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz p2, :cond_1

    .line 162
    move-object v9, p0

    .line 167
    :goto_1
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v10, 0x0

    goto :goto_0

    .line 164
    :cond_1
    move-object v9, p1

    goto :goto_1

    .line 167
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v10, 0x0

    :cond_2
    throw v1
.end method

.method private static addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 419
    const/4 v3, 0x0

    .line 420
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 421
    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 423
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v5, "calendar_mask"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 425
    const v5, 0x108021a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 427
    :cond_0
    if-nez v0, :cond_3

    .line 428
    move-object v3, p1

    .line 437
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 438
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    const/4 v4, 0x0

    .line 441
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    const/4 v2, 0x0

    .line 446
    :cond_2
    :goto_1
    return-object v3

    .line 430
    .restart local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 432
    const/4 v5, 0x1

    invoke-static {p1, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, p1

    .line 437
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 438
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    const/4 v4, 0x0

    .line 441
    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    const/4 v2, 0x0

    goto :goto_1

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 438
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    const/4 v4, 0x0

    .line 441
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 442
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    const/4 v2, 0x0

    :cond_6
    throw v5
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 319
    const/4 v10, 0x0

    .line 320
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 321
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 323
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 324
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 325
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 326
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 327
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateOfMonth()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42ce0000    # 103.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x43700000    # 240.0f

    div-float v16, v17, v18

    .line 331
    .local v16, "y":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 332
    .local v7, "nH":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 333
    .local v8, "nW":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 334
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 335
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 336
    .local v15, "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 344
    :goto_0
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v12, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 353
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    const/4 v10, 0x0

    .line 356
    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 357
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    const/4 v14, 0x0

    .line 361
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_1
    :goto_1
    return-object v13

    .line 338
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v16    # "y":F
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 339
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 340
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 341
    .restart local v15    # "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v15

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v3, v14, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_0
    move-exception v6

    .line 346
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    move-object/from16 v13, p0

    .line 352
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 353
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    const/4 v10, 0x0

    .line 356
    :cond_3
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 357
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    const/4 v14, 0x0

    goto :goto_1

    .line 348
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v5

    .line 349
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    move-object/from16 v13, p0

    .line 352
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_4

    .line 353
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    const/4 v10, 0x0

    .line 356
    :cond_4
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 357
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 352
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_5

    .line 353
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    const/4 v10, 0x0

    .line 356
    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_6

    .line 357
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    const/4 v14, 0x0

    :cond_6
    throw v17
.end method

.method public static addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 374
    const/16 v20, 0x0

    .line 375
    .local v20, "result":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 377
    .local v17, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 378
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    .line 379
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 380
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 381
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 382
    .local v4, "textPaint":Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 383
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 385
    const v5, 0x106008f

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 387
    .local v12, "color":I
    :try_start_1
    sget-object v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 388
    .local v18, "resColor":Ljava/lang/String;
    if-nez v18, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 389
    :cond_0
    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v15

    .line 390
    .local v15, "l":J
    long-to-int v12, v15

    .line 395
    .end local v15    # "l":J
    .end local v18    # "resColor":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 396
    invoke-static/range {v19 .. v19}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "date":Ljava/lang/String;
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 399
    .local v2, "sl":Landroid/text/StaticLayout;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x43700000    # 240.0f

    div-float v22, v5, v6

    .line 400
    .local v22, "tanslateY":F
    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 401
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 402
    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .local v21, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v5, v21

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_4

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    const/16 v17, 0x0

    move-object/from16 v20, v21

    .line 415
    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "result":Landroid/graphics/drawable/Drawable;
    .end local v22    # "tanslateY":F
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-object v20

    .line 392
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v13

    .line 393
    .local v13, "e":Ljava/lang/Exception;
    const v5, 0x106008f

    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    goto :goto_0

    .line 403
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v14

    .line 404
    .local v14, "er":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 405
    move-object/from16 v20, p0

    .line 410
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_2

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    const/16 v17, 0x0

    goto :goto_1

    .line 406
    .end local v14    # "er":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v13

    .line 407
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 408
    move-object/from16 v20, p0

    .line 410
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_2

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    const/16 v17, 0x0

    goto :goto_1

    .line 410
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v17

    if-eq v0, v6, :cond_3

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    const/16 v17, 0x0

    :cond_3
    throw v5

    .restart local v2    # "sl":Landroid/text/StaticLayout;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v21    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "tanslateY":F
    :cond_4
    move-object/from16 v20, v21

    .end local v21    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static cleanConfigHelper()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 788
    return-void
.end method

.method public static drawShadowToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 258
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 259
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_shadow"

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "hasDate":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    .end local v1    # "hasDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 262
    .restart local v1    # "hasDate":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v3, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "hasDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static generateThemeBitmap()[Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 757
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/Bitmap;

    .line 758
    .local v0, "themeBitmap":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const-string v2, "icon_mask.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 759
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 761
    :cond_0
    const/4 v1, 0x1

    const-string v2, "icon_background.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 762
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 764
    :cond_1
    const/4 v1, 0x2

    const-string v2, "icon_border.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 765
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 767
    :cond_2
    return-object v0
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v2, "com.android.calendar.nodate"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    const-string v2, "com.android.calendar"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isAddDateToIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConfigXmlByPackageName(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/ZipManager;

    invoke-direct {v2}, Landroid/content/res/flymetheme/ZipManager;-><init>()V

    .line 800
    .local v2, "mZipThemeManager":Landroid/content/res/flymetheme/ZipManager;
    const-string v3, "config.xml"

    .line 801
    .local v3, "resPath":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v5}, Landroid/content/res/flymetheme/ZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 805
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "mZipThemeManager":Landroid/content/res/flymetheme/ZipManager;
    .end local v3    # "resPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 803
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    .line 805
    goto :goto_0
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 184
    .local v7, "sysResources":Landroid/content/res/Resources;
    if-nez v7, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 202
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "resPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 190
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 192
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 193
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 197
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 198
    .local v4, "er":Ljava/lang/OutOfMemoryError;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v4    # "er":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 200
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 197
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C
    .param p2, "h"    # I
    .param p3, "w"    # I

    .prologue
    const/high16 v6, 0x43700000    # 240.0f

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 513
    invoke-static {p0, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 516
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 478
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const-string v2, "ic_launcher_calendar_0"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 479
    goto :goto_0

    .line 481
    :pswitch_2
    const-string v2, "ic_launcher_calendar_1"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 482
    goto :goto_0

    .line 484
    :pswitch_3
    const-string v2, "ic_launcher_calendar_2"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 485
    goto :goto_0

    .line 487
    :pswitch_4
    const-string v2, "ic_launcher_calendar_3"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 488
    goto :goto_0

    .line 490
    :pswitch_5
    const-string v2, "ic_launcher_calendar_4"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 491
    goto :goto_0

    .line 493
    :pswitch_6
    const-string v2, "ic_launcher_calendar_5"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 494
    goto :goto_0

    .line 496
    :pswitch_7
    const-string v2, "ic_launcher_calendar_6"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 497
    goto :goto_0

    .line 499
    :pswitch_8
    const-string v2, "ic_launcher_calendar_7"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 500
    goto :goto_0

    .line 502
    :pswitch_9
    const-string v2, "ic_launcher_calendar_8"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 503
    goto :goto_0

    .line 505
    :pswitch_a
    const-string v2, "ic_launcher_calendar_9"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    goto :goto_0

    .line 515
    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, p3

    const/high16 v4, 0x428c0000    # 70.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v4, p2

    const/high16 v5, 0x42b00000    # 88.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 516
    .local v1, "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 476
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private static getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 451
    .local v2, "today":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 452
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 453
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 454
    .local v0, "aDate":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 458
    const v5, 0x1070043

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "weekDays":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 462
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 463
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 464
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 465
    .local v3, "w":I
    if-gez v3, :cond_0

    .line 466
    const/4 v3, 0x0

    .line 467
    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "w":I
    :goto_0
    return-object v5

    .line 468
    :catch_0
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FlymeTheme-Liyd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_0
.end method

.method public static getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    :try_start_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    sput-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 283
    :cond_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-virtual {v2, p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->getLauncherConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    :goto_0
    return-object v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C

    .prologue
    .line 521
    const v0, 0x1080312

    .line 522
    .local v0, "dr":I
    packed-switch p1, :pswitch_data_0

    .line 558
    :goto_0
    :pswitch_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 524
    :pswitch_1
    const v0, 0x1080312

    .line 525
    goto :goto_0

    .line 527
    :pswitch_2
    const v0, 0x1080313

    .line 528
    goto :goto_0

    .line 530
    :pswitch_3
    const v0, 0x1080314

    .line 531
    goto :goto_0

    .line 533
    :pswitch_4
    const v0, 0x1080315

    .line 534
    goto :goto_0

    .line 536
    :pswitch_5
    const v0, 0x1080316

    .line 537
    goto :goto_0

    .line 539
    :pswitch_6
    const v0, 0x1080317

    .line 540
    goto :goto_0

    .line 542
    :pswitch_7
    const v0, 0x1080318

    .line 543
    goto :goto_0

    .line 545
    :pswitch_8
    const v0, 0x1080319

    .line 546
    goto :goto_0

    .line 548
    :pswitch_9
    const v0, 0x108031a

    .line 549
    goto :goto_0

    .line 551
    :pswitch_a
    const v0, 0x108031b

    .line 552
    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 776
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 783
    :goto_0
    return-object v1

    .line 778
    :cond_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 779
    .local v0, "defIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 780
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .line 781
    goto :goto_0

    .line 783
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAddDateToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 238
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 239
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_date"

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "hasDate":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const/4 v3, 0x0

    .line 247
    .end local v1    # "hasDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 300
    :try_start_0
    const-string v2, "/data/data/com.meizu.customizecenter/theme/icons"

    .line 301
    .local v2, "zipFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    const/4 v3, 0x1

    .line 308
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v3

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "maskBmp"    # Landroid/graphics/Bitmap;
    .param p1, "viewBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "resultBmp":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 98
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 102
    .local v4, "x":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 103
    .local v5, "y":I
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v0, p1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :goto_0
    return-object v3

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 106
    move-object v3, p1

    goto :goto_0
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 568
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_0

    .line 654
    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 570
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    move-object v10, p1

    .line 571
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 572
    .local v6, "src":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 573
    .local v7, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 574
    .local v8, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 576
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 577
    .local v9, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v10, :pswitch_data_0

    .line 636
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 637
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 638
    const/4 v7, 0x0

    .line 640
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 641
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 642
    const/4 v8, 0x0

    .line 645
    :cond_2
    move-object v0, v9

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 646
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 647
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 645
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 579
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 580
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 581
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 582
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 583
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 587
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 588
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 589
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 590
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 594
    :pswitch_2
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 595
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 596
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 597
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 601
    :pswitch_3
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 602
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 603
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 604
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 608
    :pswitch_4
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 609
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 610
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 614
    :pswitch_5
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 615
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 616
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 620
    :pswitch_6
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 621
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 622
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 626
    :pswitch_7
    if-eqz p2, :cond_4

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    .line 627
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, p0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 630
    :cond_4
    move-object v5, p1

    goto/16 :goto_1

    .line 652
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v10, v10, 0x0

    sput v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    move-object p1, v5

    .line 654
    goto/16 :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeThemeShortcut(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 664
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_0

    .line 750
    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 666
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    move-object v10, p1

    .line 667
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 668
    .local v6, "src":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 669
    .local v7, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 670
    .local v8, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 672
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 673
    .local v9, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v10, :pswitch_data_0

    .line 732
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 733
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 734
    const/4 v7, 0x0

    .line 736
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 737
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 738
    const/4 v8, 0x0

    .line 741
    :cond_2
    move-object v0, v9

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 742
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 743
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 741
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 675
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 676
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 677
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 678
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 679
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 683
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 684
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 685
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 686
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 690
    :pswitch_2
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 691
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 692
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 693
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 697
    :pswitch_3
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 698
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 699
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 700
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 704
    :pswitch_4
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 705
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 706
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 710
    :pswitch_5
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 711
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 712
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 716
    :pswitch_6
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 717
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 718
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 722
    :pswitch_7
    if-eqz p2, :cond_4

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    .line 723
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, p0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 726
    :cond_4
    move-object v5, p1

    goto/16 :goto_1

    .line 748
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v10, v10, 0x0

    sput v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    move-object p1, v5

    .line 750
    goto/16 :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v10, 0x0

    .line 817
    .local v10, "resizeBmp":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 818
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    move-object v11, p0

    .line 843
    :cond_0
    :goto_0
    return-object v11

    .line 822
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 824
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 825
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 826
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 827
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 828
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 830
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v12, v0, 0x2

    .line 831
    .local v12, "x":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 832
    .local v13, "y":I
    int-to-float v0, v12

    int-to-float v1, v13

    invoke-virtual {v7, v10, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v10, 0x0

    goto :goto_0

    .line 833
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v8

    .line 834
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    move-object v11, p0

    .line 837
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v10, 0x0

    goto :goto_0

    .line 837
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 838
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v10, 0x0

    :cond_2
    throw v0
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 120
    const/4 v8, 0x0

    .line 122
    .local v8, "newbmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 123
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 124
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v1, v3

    div-float v10, v0, v1

    .line 126
    .local v10, "scaleWidht":F
    int-to-float v0, p2

    int-to-float v1, v4

    div-float v9, v0, v1

    .line 127
    .local v9, "scaleHeight":F
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 128
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 133
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scaleHeight":F
    .end local v10    # "scaleWidht":F
    :goto_0
    return-object v8

    .line 129
    :catch_0
    move-exception v7

    .line 130
    .local v7, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 131
    move-object v8, p0

    goto :goto_0
.end method
