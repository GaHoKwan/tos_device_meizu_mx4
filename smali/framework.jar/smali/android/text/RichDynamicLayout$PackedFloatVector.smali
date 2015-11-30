.class public Landroid/text/RichDynamicLayout$PackedFloatVector;
.super Ljava/lang/Object;
.source "RichDynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/RichDynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackedFloatVector"
.end annotation


# instance fields
.field private mLength:I

.field private mValues:[F

.field final synthetic this$0:Landroid/text/RichDynamicLayout;


# direct methods
.method constructor <init>(Landroid/text/RichDynamicLayout;I)V
    .locals 1
    .param p2, "need"    # I

    .prologue
    .line 771
    iput-object p1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->this$0:Landroid/text/RichDynamicLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    if-gtz p2, :cond_0

    .line 773
    const/16 p2, 0xa

    .line 775
    :cond_0
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    .line 776
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .line 777
    return-void
.end method

.method private increaseCapacity(I)V
    .locals 4
    .param p1, "need"    # I

    .prologue
    const/4 v3, 0x0

    .line 861
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v1

    new-array v0, v1, [F

    .line 862
    .local v0, "grov":[F
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    iput-object v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    .line 864
    return-void
.end method


# virtual methods
.method public addValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 780
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 781
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/RichDynamicLayout$PackedFloatVector;->increaseCapacity(I)V

    .line 783
    :cond_0
    iget-object v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    aput p1, v0, v1

    .line 784
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .line 785
    return-void
.end method

.method public delete(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 829
    if-lez p2, :cond_0

    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    add-int v1, p1, p2

    iget v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    if-le v1, v2, :cond_2

    .line 833
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    sub-int p2, v1, p1

    .line 835
    :cond_2
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int v1, v0, p2

    iget v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    if-ge v1, v2, :cond_3

    .line 836
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget-object v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    add-int v3, v0, p2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 838
    :cond_3
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    sub-int/2addr v1, p2

    iput v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .line 839
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    const/4 v3, 0x0

    aput v3, v1, v2

    goto :goto_0
.end method

.method public insertValue(IF)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 788
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 789
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->increaseCapacity(I)V

    .line 791
    :cond_0
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    if-lt p1, v1, :cond_1

    .line 792
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    aput p2, v1, v2

    .line 793
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .line 795
    :cond_1
    if-gez p1, :cond_2

    .line 796
    const/4 p1, 0x0

    .line 798
    :cond_2
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_3

    .line 799
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget-object v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 798
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    :cond_3
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    aput p2, v1, p1

    .line 802
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .line 803
    return-void
.end method

.method public insertValues(I[FII)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "src"    # [F
    .param p3, "srcStart"    # I
    .param p4, "srcLength"    # I

    .prologue
    .line 806
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    if-lez p4, :cond_0

    array-length v1, p2

    if-ge p3, v1, :cond_0

    add-int v1, p3, p4

    array-length v2, p2

    if-le v1, v2, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/2addr v1, p4

    iget-object v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 811
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->increaseCapacity(I)V

    .line 813
    :cond_2
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    if-le p1, v1, :cond_3

    .line 814
    iget p1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    .line 816
    :cond_3
    if-gez p1, :cond_4

    .line 817
    const/4 p1, 0x0

    .line 819
    :cond_4
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/2addr v1, p4

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    add-int v1, p1, p4

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    .line 820
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    iget-object v2, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    sub-int v3, v0, p4

    aget v2, v2, v3

    aput v2, v1, v0

    .line 819
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 822
    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p4, :cond_6

    .line 823
    iget-object v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    add-int v2, v0, p1

    add-int v3, v0, p3

    aget v3, p2, v3

    aput v3, v1, v2

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 825
    :cond_6
    iget v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/2addr v1, p4

    iput v1, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    return v0
.end method

.method public value(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 843
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    if-lt p1, v0, :cond_0

    .line 844
    iget v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mLength:I

    add-int/lit8 p1, v0, -0x1

    .line 846
    :cond_0
    if-gez p1, :cond_1

    .line 847
    const/4 p1, 0x0

    .line 849
    :cond_1
    iget-object v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public values()[F
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Landroid/text/RichDynamicLayout$PackedFloatVector;->mValues:[F

    return-object v0
.end method
