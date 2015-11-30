.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static mInternalList:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add mInternalList"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysCheck:Landroid/widget/CheckBox;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add mAlwaysCheck"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mAlwaysUseOption:Z

.field private mContainer:Landroid/widget/ScrollView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add mContainer"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mGrid:Lcom/meizu/widget/DragGridView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add mGrid"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

.field private mRegistered:Z

.field mReturnResult:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add mReturnResult"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mShowExtended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mReturnResult:Z

    .line 144
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1378
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ResolverActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/mediatek/common/media/IRCSePriorityExt;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private ensureDraggable(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1405
    if-nez p1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v3

    .line 1408
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "intentType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1413
    .local v2, "solveActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1421
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isInternalFlymeApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1439
    if-nez p1, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return v0

    .line 1443
    :cond_1
    sget-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    .line 1445
    sget-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.meizu.filemanager"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    sget-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    sget-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    sget-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    :cond_2
    sget-object v1, Lcom/android/internal/app/ResolverActivity;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    return-object v0
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0xf0

    .line 1544
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1574
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p1

    .line 1549
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1551
    .local v1, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1552
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1554
    .local v5, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1556
    .local v10, "newWidth":I
    move v9, v10

    .line 1558
    .local v9, "newHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1560
    .local v14, "systemIconSize":I
    if-eq v14, v4, :cond_2

    if-ne v4, v7, :cond_3

    :cond_2
    if-eq v14, v5, :cond_0

    if-eq v4, v7, :cond_0

    .line 1562
    :cond_3
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1563
    .local v6, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v10

    int-to-float v3, v4

    div-float v13, v2, v3

    .line 1564
    .local v13, "scaleWidth":F
    int-to-float v2, v9

    int-to-float v3, v5

    div-float v12, v2, v3

    .line 1565
    .local v12, "scaleHeight":F
    invoke-virtual {v6, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1566
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1568
    .local v11, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p1, v2

    goto :goto_0

    .line 1570
    .end local v1    # "BitmapOrg":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "newHeight":I
    .end local v10    # "newWidth":I
    .end local v11    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "scaleHeight":F
    .end local v13    # "scaleWidth":F
    .end local v14    # "systemIconSize":I
    :catch_0
    move-exception v8

    .line 1571
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;I)V
    .locals 6
    .param p1, "ap"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "paddingtop"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getSystemAppIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1500
    .local v0, "systemIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1503
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1505
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1541
    :goto_0
    return-void

    .line 1509
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900a1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 1510
    iget-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020369

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContainer:Landroid/widget/ScrollView;

    .line 1511
    new-instance v1, Lcom/meizu/widget/DragGridView;

    invoke-direct {v1, p0}, Lcom/meizu/widget/DragGridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    .line 1513
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setDraggable(Z)V

    .line 1514
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1515
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setOnItemClickListener(Lcom/meizu/widget/DragGridView$OnItemClickListener;)V

    .line 1530
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setOnItemPositionChangeListener(Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;)V

    .line 1536
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {v2}, Lcom/meizu/widget/DragGridView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragGridView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {v4}, Lcom/meizu/widget/DragGridView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/meizu/widget/DragGridView;->setPadding(IIII)V

    .line 1537
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setColumnWidth(I)V

    .line 1538
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setVerticalSpacing(I)V

    .line 1539
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContainer:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    goto/16 :goto_0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 321
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 328
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 322
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Couldn\'t find resources for package in getIcon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 340
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 370
    :goto_0
    return-object v3

    .line 347
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 350
    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 354
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 355
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_2

    .line 362
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIconForResolveInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 364
    goto :goto_0

    .line 367
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 460
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 168
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const v8, 0x10403f8

    .line 177
    .local v8, "titleResource":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 179
    return-void

    .line 174
    .end local v8    # "titleResource":I
    :cond_0
    const v8, 0x10403f7

    .restart local v8    # "titleResource":I
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v3, 0x103031b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 189
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 197
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 207
    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 208
    .local v16, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 212
    .local v17, "paddingtop":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 215
    const v3, 0x10805aa

    iput v3, v11, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 216
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    const/16 v17, 0x0

    .line 229
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 230
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 232
    const-string v3, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 233
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 234
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 236
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v13

    .line 239
    .local v13, "count":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 241
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 314
    :cond_2
    :goto_2
    return-void

    .line 193
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v13    # "count":I
    .end local v16    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "paddingtop":I
    :catch_0
    move-exception v15

    .line 194
    .local v15, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 220
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v16    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "paddingtop":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109009f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 223
    .local v14, "customTitle":Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v14}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 225
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 243
    .end local v14    # "customTitle":Landroid/widget/TextView;
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v13    # "count":I
    :cond_4
    const/4 v3, 0x1

    if-le v13, v3, :cond_5

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/app/ResolverActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    if-eqz v3, :cond_2

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 301
    if-eqz p6, :cond_2

    .line 302
    const v3, 0x102036a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 303
    .local v12, "checkBarLayout":Landroid/view/ViewGroup;
    if-eqz v12, :cond_7

    .line 304
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 305
    const v3, 0x102036b

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    const v4, 0x10403f9

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_2

    .line 261
    .end local v12    # "checkBarLayout":Landroid/view/ViewGroup;
    :cond_5
    const/4 v3, 0x1

    if-ne v13, v3, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 264
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_2

    .line 268
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 272
    const v3, 0x10403fd

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_2

    .line 309
    .restart local v12    # "checkBarLayout":Landroid/view/ViewGroup;
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_2
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 27
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 490
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 496
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    .line 497
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 498
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v12    # "cat":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 504
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 505
    .local v14, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_2

    .line 506
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 507
    .local v18, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 509
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 520
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 523
    :cond_3
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 528
    .local v20, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v20, :cond_5

    .line 529
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 530
    .local v26, "ssp":Ljava/lang/String;
    :cond_4
    if-eqz v26, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 532
    .local v19, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 538
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v26    # "ssp":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 539
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_7

    .line 540
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 541
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 542
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 543
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v22

    .line 544
    .local v22, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v22, :cond_b

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v22    # "port":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 551
    if-eqz v20, :cond_9

    .line 552
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 553
    .local v21, "path":Ljava/lang/String;
    :cond_8
    if-eqz v21, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 554
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 555
    .restart local v19    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 556
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 568
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "path":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 577
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v25, v0

    .line 578
    .local v25, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 579
    .local v7, "bestMatch":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_c

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 587
    .local v23, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v25, v16

    .line 589
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_a

    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 579
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 510
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v16    # "i":I
    .end local v23    # "r":Landroid/content/pm/ResolveInfo;
    .end local v25    # "set":[Landroid/content/ComponentName;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 511
    .local v15, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 544
    .end local v15    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v18    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v22    # "port":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 591
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_c
    if-eqz p3, :cond_10

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 607
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "data":Landroid/net/Uri;
    .end local v16    # "i":I
    .end local v25    # "set":[Landroid/content/ComponentName;
    :cond_d
    :goto_4
    if-eqz p2, :cond_f

    .line 611
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_e

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x2000001

    and-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 615
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 617
    :cond_f
    return-void

    .line 596
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "data":Landroid/net/Uri;
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_10
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 600
    :catch_1
    move-exception v24

    .line 601
    .local v24, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    .line 376
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 381
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 424
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 386
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 402
    :cond_1
    return-void
.end method

.method resizeGrid()V
    .locals 9
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1463
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 1464
    .local v0, "itemCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/16 v3, 0x9

    .line 1476
    .local v3, "numPreRow":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/meizu/widget/DragGridView;->setNumColumns(I)V

    .line 1477
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050126

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/DragGridView;->setHorizontalSpacing(I)V

    .line 1478
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105011c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/AlertController;->setWidth(I)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1481
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1482
    .local v5, "screenWidth":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1485
    .local v4, "screenHeight":I
    if-le v5, v4, :cond_1

    .line 1486
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1490
    .local v1, "mMaxHeight":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController;->setMaxHeight(I)V

    .line 1491
    return-void

    .line 1464
    .end local v1    # "mMaxHeight":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "numPreRow":I
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    .line 1488
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "numPreRow":I
    .restart local v4    # "screenHeight":I
    .restart local v5    # "screenWidth":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105011a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "mMaxHeight":I
    goto :goto_1
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 620
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 623
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    return-void
.end method

.method startSelected(IZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.requset_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mReturnResult:Z

    .line 473
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_1

    .line 474
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setResult(I)V

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 478
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method
