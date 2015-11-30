.class Lcom/android/internal/telephony/uicc/AdnByteArray;
.super Ljava/lang/Object;
.source "AdnRecord.java"


# static fields
.field static final HEX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 649
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnByteArray;->HEX:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringToAdnUcs2StartsWith80(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 654
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 655
    .local v4, "strlen":I
    const/4 v3, 0x0

    .line 657
    .local v3, "septets":I
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 660
    new-array v2, v3, [B

    .line 661
    .local v2, "ret":[B
    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v2, v5

    .line 663
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 664
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 665
    .local v0, "c":C
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-byte v6, v0

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 666
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "c":C
    :cond_0
    return-object v2
.end method

.method public static stringToAdnUcs2StartsWith81(Ljava/lang/String;)[B
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 673
    .local v6, "strlen":I
    add-int/lit8 v8, v6, 0x3

    new-array v5, v8, [B

    .line 675
    .local v5, "ret":[B
    const/4 v8, 0x0

    const/16 v9, -0x7f

    aput-byte v9, v5, v8

    .line 676
    const/4 v8, 0x1

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 678
    const/4 v2, 0x3

    .line 679
    .local v2, "offset":I
    const/4 v0, 0x0

    .line 680
    .local v0, "base":C
    const/4 v4, 0x0

    .local v4, "pos":I
    move v3, v2

    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 681
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 682
    .local v1, "c":C
    const v8, 0xff80

    and-int/2addr v8, v1

    if-nez v8, :cond_0

    .line 683
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    .line 680
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 684
    :cond_0
    const v8, 0x8000

    and-int/2addr v8, v1

    if-eqz v8, :cond_2

    move-object v5, v7

    .line 699
    .end local v1    # "c":C
    .end local v5    # "ret":[B
    :cond_1
    :goto_2
    return-object v5

    .line 687
    .restart local v1    # "c":C
    .restart local v5    # "ret":[B
    :cond_2
    if-nez v0, :cond_3

    .line 688
    and-int/lit16 v8, v1, 0x7f80

    int-to-char v0, v8

    .line 689
    const/4 v8, 0x2

    shr-int/lit8 v9, v0, 0x7

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 690
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v8, v1, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    goto :goto_1

    .line 691
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    and-int/lit16 v8, v1, 0x7f80

    int-to-char v8, v8

    if-ne v0, v8, :cond_4

    .line 692
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v8, v1, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    move-object v5, v7

    .line 694
    goto :goto_2
.end method

.method public static stringToAdnUcs2StartsWith82(Ljava/lang/String;)[B
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const v9, 0xff80

    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 704
    .local v6, "strlen":I
    add-int/lit8 v7, v6, 0x4

    new-array v5, v7, [B

    .line 706
    .local v5, "ret":[B
    const/4 v7, 0x0

    const/16 v8, -0x7e

    aput-byte v8, v5, v7

    .line 707
    const/4 v7, 0x1

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 709
    const/4 v2, 0x4

    .line 710
    .local v2, "offset":I
    const/4 v0, 0x0

    .line 711
    .local v0, "base":C
    const/4 v4, 0x0

    .local v4, "pos":I
    move v3, v2

    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 712
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 713
    .local v1, "c":C
    and-int v7, v1, v9

    if-nez v7, :cond_0

    .line 714
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 711
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 716
    :cond_0
    if-nez v0, :cond_1

    .line 717
    and-int v7, v1, v9

    int-to-char v0, v7

    .line 718
    const/4 v7, 0x2

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 719
    const/4 v7, 0x3

    and-int/lit16 v8, v0, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 720
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v7, v1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    goto :goto_1

    .line 721
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    and-int v7, v1, v9

    int-to-char v7, v7

    if-ne v0, v7, :cond_2

    .line 722
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v7, v1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    goto :goto_1

    .line 724
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/4 v5, 0x0

    .line 729
    .end local v1    # "c":C
    .end local v5    # "ret":[B
    :cond_3
    return-object v5
.end method
