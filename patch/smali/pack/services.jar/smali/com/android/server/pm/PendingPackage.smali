.class final Lcom/android/server/pm/PendingPackage;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PendingPackage.java"


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "nativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "sharedId"    # I
    .param p7, "pVersionCode"    # I
    .param p8, "pkgFlags"    # I

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 28
    iput p6, p0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIII)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "nativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "sharedId"    # I
    .param p7, "pVersionCode"    # I
    .param p8, "pkgFlags"    # I
    .param p9, "mtkFlags"    # I

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V

    .line 36
    iput p6, p0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    .line 37
    return-void
.end method
