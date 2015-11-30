.class public Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;
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
    accessFlags = 0x1
    name = "LockWallpaperInjector"
.end annotation


# static fields
.field static final LOCK_WALLPAPER:Ljava/lang/String; = "lock_wallpaper"

.field public static final WALLPAPER_IMAGE_KEY_LOCK:Ljava/lang/String; = "/data/data/com.android.settings/files/lock_wallpaper"

.field public static final WALLPAPER_INFO_KEY_LOCK:Ljava/lang/String; = "/data/system/lock_wallpaper_info.xml"

.field static final WALLPAPER_LOCK_INFO:Ljava/lang/String; = "lock_wallpaper_info.xml"


# instance fields
.field mLockWallpaperFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;
    .param p1, "x1"    # I

    .prologue
    .line 1793
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->loadSettingsOfLockWallpaperLocked(I)V

    return-void
.end method

.method private backupFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;

    .prologue
    .line 2080
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v4, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2082
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2083
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2084
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2086
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2087
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 2088
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2089
    invoke-direct {p0, v4, v0}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "runtime":Ljava/lang/Runtime;
    .end local v4    # "wallpaperFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2091
    :catch_0
    move-exception v2

    .line 2093
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception--2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2098
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2099
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2101
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 2103
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 2104
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2106
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2107
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 2108
    return-void
.end method

.method private loadSettingsOfLockWallpaperLocked(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 1811
    const-string v11, "WallpaperManagerService"

    const-string v12, "loadSettingsOflockWallpaperLocked"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 1813
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    .line 1814
    .local v5, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 1815
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->migrateFromOldLock()V

    .line 1819
    :cond_0
    iget-object v11, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v11, v11, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v11, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1820
    .local v10, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v10, :cond_1

    .line 1821
    new-instance v10, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v10    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v11, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {v10, v11, p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 1822
    .restart local v10    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v11, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v11, v11, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v11, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1825
    :cond_1
    const/4 v7, 0x0

    .line 1827
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1828
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1829
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1833
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1834
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 1835
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1836
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "lwp"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1837
    iget-object v11, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    const/4 v12, 0x0

    const-string v13, "width"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    .line 1839
    iget-object v11, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    const/4 v12, 0x0

    const-string v13, "height"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    .line 1841
    iget-object v11, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 1842
    const/4 v11, 0x0

    const-string v12, "component"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    .local v0, "comp":Ljava/lang/String;
    iget-object v12, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    :goto_0
    iput-object v11, v12, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNextLockWallpaperComponent:Landroid/content/ComponentName;

    .line 1847
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mWidthOfLockWallpaper:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget v13, v13, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mHeightOfLockWallpaper:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget v13, v13, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mNameOfLockWallpaper:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget-object v13, v13, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNameOfLockWallpaper:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mNextLockWallpaperComponent:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget-object v13, v13, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNextLockWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1856
    .end local v0    # "comp":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 1857
    const/4 v7, 0x1

    move-object v5, v6

    .line 1870
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_4

    .line 1871
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1882
    :cond_4
    :goto_2
    return-void

    .line 1843
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "comp":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 1858
    .end local v0    # "comp":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1859
    .local v1, "e":Ljava/lang/NullPointerException;
    :goto_3
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1860
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1861
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_4
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1862
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 1863
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1864
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v1

    .line 1865
    .local v1, "e":Ljava/io/IOException;
    :goto_6
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1866
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1867
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1873
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v11

    goto/16 :goto_2

    .line 1866
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1864
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1862
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1860
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 1858
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_wallpaper_info.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOldLock()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1968
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1969
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/lock_wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1970
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1971
    new-instance v1, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "lock_wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1972
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1974
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1975
    new-instance v0, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "lock_wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1976
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1978
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1895
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v6, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    invoke-static {v5, v6}, Lcom/android/server/WallpaperManagerService;->access$1300(Lcom/android/server/WallpaperManagerService;I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1896
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1898
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1900
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1901
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1903
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1904
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1905
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1906
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1907
    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1909
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1912
    :cond_0
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1914
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1915
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1916
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1927
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1917
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 1920
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1925
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 1922
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1917
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveSettingsOfLockWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1934
    iget v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1935
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1938
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1940
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1941
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1943
    const/4 v5, 0x0

    const-string v6, "lwp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1944
    const/4 v5, 0x0

    const-string v6, "width"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget v7, v7, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1945
    const/4 v5, 0x0

    const-string v6, "height"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget v7, v7, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1946
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNameOfLockWallpaper:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1947
    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget-object v5, v5, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mLockWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 1948
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mLockWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1950
    :cond_0
    const/4 v5, 0x0

    const-string v6, "lwp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1952
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1953
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1954
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1965
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1955
    :catch_0
    move-exception v0

    .line 1957
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 1958
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1963
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 1960
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1955
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public chmodFile(I)V
    .locals 13
    .param p1, "flag"    # I

    .prologue
    .line 2029
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 2031
    .local v6, "userId":I
    new-instance v7, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v11

    const-string v12, "wallpaper"

    invoke-direct {v7, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2032
    .local v7, "wallpaperFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v11

    const-string v12, "lock_wallpaper"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2034
    .local v9, "wallpaperLockFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v11

    const-string v12, "wallpaper_info.xml"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2035
    .local v8, "wallpaperFileInfo":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v11

    const-string v12, "lock_wallpaper_info.xml"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2037
    .local v10, "wallpaperLockFileInfo":Ljava/io/File;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 2039
    .local v5, "runtime":Ljava/lang/Runtime;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2040
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2042
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2043
    invoke-virtual {v5, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2045
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2046
    invoke-virtual {v5, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2048
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2049
    invoke-virtual {v5, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2051
    if-nez p1, :cond_0

    .line 2052
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/data/system/wallpaper"

    invoke-direct {p0, v11, v12}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->backupFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/data/system/lock_wallpaper"

    invoke-direct {p0, v11, v12}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->backupFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    .end local v2    # "command":Ljava/lang/String;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    .end local v6    # "userId":I
    .end local v7    # "wallpaperFile":Ljava/io/File;
    .end local v8    # "wallpaperFileInfo":Ljava/io/File;
    .end local v9    # "wallpaperLockFile":Ljava/io/File;
    .end local v10    # "wallpaperLockFileInfo":Ljava/io/File;
    :goto_0
    return-void

    .line 2054
    .restart local v2    # "command":Ljava/lang/String;
    .restart local v5    # "runtime":Ljava/lang/Runtime;
    .restart local v6    # "userId":I
    .restart local v7    # "wallpaperFile":Ljava/io/File;
    .restart local v8    # "wallpaperFileInfo":Ljava/io/File;
    .restart local v9    # "wallpaperLockFile":Ljava/io/File;
    .restart local v10    # "wallpaperLockFileInfo":Ljava/io/File;
    :cond_0
    const/4 v11, 0x1

    if-ne p1, v11, :cond_1

    .line 2055
    const-string v11, "/data/system/wallpaper"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->backupFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string v11, "/data/system/lock_wallpaper"

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->backupFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2072
    .end local v2    # "command":Ljava/lang/String;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    .end local v6    # "userId":I
    .end local v7    # "wallpaperFile":Ljava/io/File;
    .end local v8    # "wallpaperFileInfo":Ljava/io/File;
    .end local v9    # "wallpaperLockFile":Ljava/io/File;
    .end local v10    # "wallpaperLockFileInfo":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 2074
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2058
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "command":Ljava/lang/String;
    .restart local v5    # "runtime":Ljava/lang/Runtime;
    .restart local v6    # "userId":I
    .restart local v7    # "wallpaperFile":Ljava/io/File;
    .restart local v8    # "wallpaperFileInfo":Ljava/io/File;
    .restart local v9    # "wallpaperLockFile":Ljava/io/File;
    .restart local v10    # "wallpaperLockFileInfo":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/system/wallpaper"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2059
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2060
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2062
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "com":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 2064
    .local v4, "rtime":Ljava/lang/Runtime;
    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2065
    new-instance v0, Ljava/io/File;

    .end local v0    # "backupFile":Ljava/io/File;
    const-string v11, "/data/system/lock_wallpaper"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2066
    .restart local v0    # "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 2067
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2069
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2070
    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 1996
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1997
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1998
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1999
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_1

    .line 2000
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, v7, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 2004
    :goto_0
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    .local v3, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 2007
    :try_start_1
    const-string v7, "width"

    iget-object v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget v8, v8, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mWidthOfLockWallpaper:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2008
    const-string v7, "height"

    iget-object v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iget v8, v8, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mHeightOfLockWallpaper:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2010
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$1100(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2012
    new-instance v2, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "lock_wallpaper"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2014
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 2015
    :try_start_2
    monitor-exit v6

    .line 2023
    .end local v2    # "f":Ljava/io/File;
    :goto_1
    return-object v5

    .line 2002
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 2018
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v7, 0x10000000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 2024
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2019
    .restart local v0    # "callingUid":I
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :catch_0
    move-exception v1

    .line 2021
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error getting lock_wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public initLockWallpaperFile(Ljava/io/File;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 1802
    new-instance v0, Ljava/io/File;

    const-string v1, "lock_wallpaper"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->mLockWallpaperFile:Ljava/io/File;

    .line 1803
    return-void
.end method

.method public notifyLockWallpaperChangeLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2172
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$1100(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2173
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2175
    :try_start_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$1100(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onLockWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2181
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$1100(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2182
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2183
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2184
    const-string v3, "WallpaperManagerService"

    const-string v4, "sendBroadcast---sync settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return-void

    .line 2176
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method onRemoveUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1981
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1982
    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1983
    :try_start_0
    new-instance v0, Ljava/io/File;

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string v3, "wallpaper_info.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1984
    .local v0, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1985
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2117
    const-string v5, "WallpaperManagerService"

    const-string v6, "setLockWallpaper"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2119
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v5, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 2120
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 2121
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper not yet initialized for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2123
    :cond_0
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    const-string v6, "android.permission.SET_WALLPAPER"

    # invokes: Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/WallpaperManagerService;->access$1400(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;)V

    .line 2124
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v5, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2125
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2128
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2129
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 2131
    invoke-direct {p0, v4}, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 2133
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$LockWallpaperInjector;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v5, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "smart_wallpaper_enabled"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2137
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2135
    monitor-exit v6

    return-object v2

    .line 2137
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2139
    .end local v0    # "ident":J
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2149
    if-nez p1, :cond_0

    .line 2150
    const-string p1, ""

    .line 2152
    :cond_0
    :try_start_0
    iget v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    .line 2153
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2154
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2155
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2161
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "lock_wallpaper"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v4, 0x38000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2163
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->mDataInjector:Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;

    iput-object p1, v3, Lcom/android/server/WallpaperManagerService$WallpaperDataInjector;->mNameOfLockWallpaper:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 2165
    :catch_0
    move-exception v1

    .line 2166
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Error setting lock_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2168
    const/4 v2, 0x0

    goto :goto_0
.end method
