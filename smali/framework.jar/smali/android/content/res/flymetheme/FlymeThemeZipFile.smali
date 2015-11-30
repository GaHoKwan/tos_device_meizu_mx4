.class public Landroid/content/res/flymetheme/FlymeThemeZipFile;
.super Ljava/lang/Object;
.source "FlymeThemeZipFile.java"


# static fields
.field private static final PROPERTY_KEY_USE_FLYME_ICON_STYLE:Ljava/lang/String; = "persist.sys.use.flyme.icon"


# instance fields
.field private USE_SYSTEM_DEF_THEME:Z

.field private mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

.field private mNeedLoadSystemFile:Z

.field private mNeedLoadThemeFile:Z

.field private mSystemDefZipfFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->USE_SYSTEM_DEF_THEME:Z

    .line 20
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 21
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    .line 24
    const-string/jumbo v0, "persist.sys.use.flyme.icon"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->USE_SYSTEM_DEF_THEME:Z

    .line 29
    return-void
.end method

.method private get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/com.meizu.customizecenter/theme/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "zipFilePath":Ljava/lang/String;
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    if-eqz v6, :cond_0

    .line 58
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 61
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 71
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_3

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "resPath":Ljava/lang/String;
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 84
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 85
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 87
    const/16 v6, 0x280

    iput v6, p3, Landroid/util/TypedValue;->density:I

    .line 92
    :cond_1
    if-nez v1, :cond_2

    .line 94
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 96
    :cond_2
    if-eqz v1, :cond_3

    .line 98
    :try_start_1
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 104
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "resPath":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v3

    .line 62
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    iput-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    goto :goto_1

    .line 99
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "resPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private getSystemRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 108
    iget-boolean v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->USE_SYSTEM_DEF_THEME:Z

    if-nez v9, :cond_1

    .line 109
    const/4 v3, 0x0

    .line 152
    :cond_0
    :goto_0
    return-object v3

    .line 114
    :cond_1
    const/4 v3, 0x0

    .line 115
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customizecenter/theme/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "zipDefFilePath":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    if-nez v9, :cond_2

    iget-boolean v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    if-eqz v9, :cond_2

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 118
    .local v6, "time2":J
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    .line 129
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v4, v9, v6

    .line 130
    .local v4, "time":J
    const-string v9, "icons"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 131
    const-string v9, "dada"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "&&&&&&&&********-------- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "time":J
    .end local v6    # "time2":J
    :cond_2
    iget-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v9, :cond_0

    .line 135
    if-nez v3, :cond_0

    iget-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v9, :cond_0

    .line 142
    iget-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 143
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 145
    :try_start_1
    iget-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 122
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "time2":J
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    goto :goto_2

    .line 146
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "time2":J
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    goto/16 :goto_0
.end method

.method private replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 159
    :try_start_0
    const-string v2, "440dpi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "xhdpi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "drawable-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawable-640dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "newPath":Ljava/lang/String;
    move-object p1, v1

    .line 169
    .end local v1    # "newPath":Ljava/lang/String;
    .end local p1    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 168
    .restart local p1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->USE_SYSTEM_DEF_THEME:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 186
    :try_start_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :goto_1
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    .line 192
    :cond_1
    iput-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 193
    iput-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    .line 194
    const-string/jumbo v1, "persist.sys.use.flyme.icon"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->USE_SYSTEM_DEF_THEME:Z

    .line 199
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EMPTY"
        }
    .end annotation

    .prologue
    .line 204
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 205
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    .line 206
    return-void
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "iStream":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 35
    .local v1, "time1":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getSystemRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :catchall_0
    move-exception v3

    throw v3

    .line 39
    :catch_0
    move-exception v3

    goto :goto_0
.end method
