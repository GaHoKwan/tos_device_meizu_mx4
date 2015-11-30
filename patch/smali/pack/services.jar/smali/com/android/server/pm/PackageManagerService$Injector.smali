.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scanPackageForAccessControl(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p0, "accessActivity"    # Landroid/content/pm/ActivityInfo;
    .param p1, "accessInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "androidApplication"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 12643
    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12644
    const-string v0, "com.meizu.app.AccessApplication"

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 12645
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 12646
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 12647
    iput v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 12650
    const/16 v0, 0xa0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 12652
    iput v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 12653
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 12654
    const v0, 0x1030320

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 12655
    iput-boolean v2, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 12656
    iput-boolean v2, p0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 12657
    iput-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 12658
    iput v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 12659
    iput v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 12660
    iput v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 12661
    iput v2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 12662
    return-void
.end method
