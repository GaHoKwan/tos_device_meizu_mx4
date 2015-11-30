.class public Lcom/meizu/widget/SmartBarConfiguration;
.super Ljava/lang/Object;
.source "SmartBarConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartBarConfiguration"

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/SmartBarConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mButtonPadding:I

.field private mButtonWidth:I

.field private mDensityScale:F

.field private mExpandedTouchWidth:I

.field private mPadding:I

.field private mPaddingFor4:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/meizu/widget/SmartBarConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    .line 35
    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPaddingFor4:I

    .line 36
    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    .line 37
    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    .line 43
    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mExpandedTouchWidth:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 49
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 50
    .local v1, "portScreenWidth":I
    iput p2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    .line 51
    iget v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    .line 52
    iget v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPaddingFor4:I

    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    .line 53
    iget v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    iget v3, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/meizu/widget/SmartBarConfiguration;->mExpandedTouchWidth:I

    .line 54
    return-void
.end method

.method private dp2Px(F)I
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mDensityScale:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 26
    .local v1, "padding":I
    sget-object v2, Lcom/meizu/widget/SmartBarConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/SmartBarConfiguration;

    .line 27
    .local v0, "config":Lcom/meizu/widget/SmartBarConfiguration;
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/meizu/widget/SmartBarConfiguration;

    .end local v0    # "config":Lcom/meizu/widget/SmartBarConfiguration;
    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/SmartBarConfiguration;-><init>(Landroid/content/Context;I)V

    .line 29
    .restart local v0    # "config":Lcom/meizu/widget/SmartBarConfiguration;
    sget-object v2, Lcom/meizu/widget/SmartBarConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_0
    return-object v0
.end method

.method private parseConfig(Ljava/lang/String;[I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "outConfig"    # [I

    .prologue
    const/4 v5, 0x0

    .line 65
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "valueArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 68
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 69
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "subString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/SmartBarConfiguration;->dp2Px(F)I

    move-result v4

    aput v4, p2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "subString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .restart local v2    # "subString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NumberFormatException;
    aput v5, p2, v1

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "subString":Ljava/lang/String;
    :cond_0
    aput v5, p2, v1

    goto :goto_1

    .line 79
    :cond_1
    aget v4, p2, v5

    return v4
.end method


# virtual methods
.method public getButtonPadding()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    return v0
.end method

.method public getButtonWidth()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    return v0
.end method

.method public getExpandedTouchWidth()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mExpandedTouchWidth:I

    return v0
.end method

.method public getHorizontalPadding()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    return v0
.end method

.method public getHorizontalPaddingFor4()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPaddingFor4:I

    return v0
.end method
