.class Landroid/content/pm/PackageParser$Injector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyAccessArgs(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "src"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 4642
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 4643
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 4644
    return-void
.end method

.method static parseAccessArgsFromResource(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4658
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 4661
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 4664
    return-void
.end method

.method static parseActivity(Landroid/content/pm/PackageParser$Activity;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4652
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/16 v1, 0x1e

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->mFlymeApplicationInfo:Landroid/content/ApplicationInfoExt;

    iget v2, v2, Landroid/content/ApplicationInfoExt;->meizuSystemUIOptions:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    .line 4655
    return-void
.end method

.method static parseApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p0, "dst"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4647
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mFlymeApplicationInfo:Landroid/content/ApplicationInfoExt;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/ApplicationInfoExt;->meizuSystemUIOptions:I

    .line 4649
    return-void
.end method

.method static parseBelievePackagesFromResourse(Landroid/content/pm/ProviderInfo;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ProviderInfo;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4666
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->believepackages:Ljava/lang/String;

    .line 4668
    return-void
.end method
