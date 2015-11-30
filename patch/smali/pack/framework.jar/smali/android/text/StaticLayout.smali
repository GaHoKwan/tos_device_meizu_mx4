.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 155
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1205
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1231
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 157
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 158
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 159
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 161
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 74
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 96
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 86
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 110
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1205
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1231
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 125
    if-eqz p11, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 128
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 129
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 130
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 131
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 133
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 139
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 140
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 142
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 144
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 146
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 150
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    return-void

    .line 110
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 136
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 54
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 65
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 67
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 861
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 863
    return-void
.end method

.method private calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 23
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I
    .param p4, "widths"    # [F
    .param p5, "widthStart"    # I
    .param p6, "avail"    # F
    .param p7, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "line"    # I
    .param p9, "textWidth"    # F
    .param p10, "paint"    # Landroid/text/TextPaint;
    .param p11, "forceEllipsis"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "wangying@SDK.TextView.Feature modify for short ellipsis"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 879
    cmpg-float v20, p9, p6

    if-gtz v20, :cond_0

    if-nez p11, :cond_0

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p8

    add-int/lit8 v21, v21, 0x3

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p8

    add-int/lit8 v21, v21, 0x4

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 1068
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isTruncateAtSmall(Landroid/text/TextUtils$TruncateAt;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string/jumbo v20, "\u2025"

    move-object/from16 v0, p10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 898
    .local v6, "ellipsisWidth":F
    :goto_1
    const/4 v5, 0x0

    .line 899
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 900
    .local v4, "ellipsisCount":I
    sub-int v12, p3, p2

    .line 909
    .local v12, "len":I
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->START_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 912
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 913
    const/16 v18, 0x0

    .line 916
    .local v18, "sum":F
    move v7, v12

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_2

    .line 918
    add-int/lit8 v20, v7, -0x1

    add-int v20, v20, p2

    sub-int v8, v20, p5

    .line 919
    .local v8, "idx":I
    if-gez v8, :cond_7

    .line 932
    .end local v8    # "idx":I
    :cond_2
    const/4 v5, 0x0

    .line 933
    move v4, v7

    .line 1018
    .end local v7    # "i":I
    .end local v18    # "sum":F
    :cond_3
    :goto_3
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isTruncateAtSmall(Landroid/text/TextUtils$TruncateAt;)Z

    move-result v20

    if-eqz v20, :cond_15

    if-lez v4, :cond_15

    const-string/jumbo v20, "\u2025"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_15

    .line 1019
    const-string/jumbo v20, "\u2025"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v14, v20, v4

    .line 1020
    .local v14, "offset":I
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 1022
    :cond_4
    sub-int/2addr v5, v14

    .line 1023
    if-gez v5, :cond_5

    .line 1024
    const/4 v5, 0x0

    .line 1026
    :cond_5
    :goto_4
    if-lez v5, :cond_14

    add-int v20, v5, p2

    sub-int v20, v20, p5

    aget v20, p4, v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_14

    .line 1027
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 894
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v12    # "len":I
    .end local v14    # "offset":I
    :cond_6
    sget-object v20, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    goto/16 :goto_1

    .line 923
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v8    # "idx":I
    .restart local v12    # "len":I
    .restart local v18    # "sum":F
    :cond_7
    aget v19, p4, v8

    .line 925
    .local v19, "w":F
    add-float v20, v19, v18

    add-float v20, v20, v6

    cmpl-float v20, v20, p6

    if-gtz v20, :cond_2

    .line 929
    add-float v18, v18, v19

    .line 916
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 935
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v18    # "sum":F
    .end local v19    # "w":F
    :cond_8
    const-string v20, "StaticLayout"

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 936
    const-string v20, "StaticLayout"

    const-string v21, "Start Ellipsis only supported with one line"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 939
    :cond_9
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 941
    :cond_a
    const/16 v18, 0x0

    .line 944
    .restart local v18    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v12, :cond_b

    .line 946
    add-int v20, v7, p2

    sub-int v8, v20, p5

    .line 947
    .restart local v8    # "idx":I
    if-gez v8, :cond_c

    .line 959
    .end local v8    # "idx":I
    :cond_b
    move v5, v7

    .line 960
    sub-int v4, v12, v7

    .line 961
    if-eqz p11, :cond_3

    if-nez v4, :cond_3

    if-lez v12, :cond_3

    .line 963
    add-int/lit8 v20, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v20

    if-eqz v20, :cond_d

    const/4 v11, 0x2

    .line 964
    .local v11, "legnthOfChar":I
    :goto_6
    sub-int v5, v12, v11

    .line 965
    move v4, v11

    goto/16 :goto_3

    .line 950
    .end local v11    # "legnthOfChar":I
    .restart local v8    # "idx":I
    :cond_c
    aget v19, p4, v8

    .line 952
    .restart local v19    # "w":F
    add-float v20, v19, v18

    add-float v20, v20, v6

    cmpl-float v20, v20, p6

    if-gtz v20, :cond_b

    .line 956
    add-float v18, v18, v19

    .line 944
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 963
    .end local v8    # "idx":I
    .end local v19    # "w":F
    :cond_d
    const/4 v11, 0x1

    goto :goto_6

    .line 969
    .end local v7    # "i":I
    .end local v18    # "sum":F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 970
    const/4 v13, 0x0

    .local v13, "lsum":F
    const/16 v17, 0x0

    .line 971
    .local v17, "rsum":F
    const/4 v10, 0x0

    .local v10, "left":I
    move/from16 v16, v12

    .line 973
    .local v16, "right":I
    sub-float v20, p6, v6

    const/high16 v21, 0x40000000    # 2.0f

    div-float v15, v20, v21

    .line 974
    .local v15, "ravail":F
    move/from16 v16, v12

    :goto_7
    if-ltz v16, :cond_f

    .line 976
    add-int/lit8 v20, v16, -0x1

    add-int v20, v20, p2

    sub-int v8, v20, p5

    .line 977
    .restart local v8    # "idx":I
    if-gez v8, :cond_11

    .line 990
    .end local v8    # "idx":I
    :cond_f
    sub-float v20, p6, v6

    sub-float v9, v20, v17

    .line 991
    .local v9, "lavail":F
    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v10, v0, :cond_10

    .line 993
    add-int v20, v10, p2

    sub-int v8, v20, p5

    .line 994
    .restart local v8    # "idx":I
    if-gez v8, :cond_12

    .line 1007
    .end local v8    # "idx":I
    :cond_10
    move v5, v10

    .line 1008
    sub-int v4, v16, v10

    .line 1009
    goto/16 :goto_3

    .line 981
    .end local v9    # "lavail":F
    .restart local v8    # "idx":I
    :cond_11
    aget v19, p4, v8

    .line 983
    .restart local v19    # "w":F
    add-float v20, v19, v17

    cmpl-float v20, v20, v15

    if-gtz v20, :cond_f

    .line 987
    add-float v17, v17, v19

    .line 974
    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    .line 998
    .end local v19    # "w":F
    .restart local v9    # "lavail":F
    :cond_12
    aget v19, p4, v8

    .line 1000
    .restart local v19    # "w":F
    add-float v20, v19, v13

    cmpl-float v20, v20, v9

    if-gtz v20, :cond_10

    .line 1004
    add-float v13, v13, v19

    .line 991
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1010
    .end local v8    # "idx":I
    .end local v9    # "lavail":F
    .end local v10    # "left":I
    .end local v13    # "lsum":F
    .end local v15    # "ravail":F
    .end local v16    # "right":I
    .end local v17    # "rsum":F
    .end local v19    # "w":F
    :cond_13
    const-string v20, "StaticLayout"

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1011
    const-string v20, "StaticLayout"

    const-string v21, "Middle Ellipsis only supported with one line"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1029
    .restart local v14    # "offset":I
    :cond_14
    sub-int v4, v12, v5

    .line 1066
    .end local v14    # "offset":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p8

    add-int/lit8 v21, v21, 0x3

    aput v5, v20, v21

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p8

    add-int/lit8 v21, v21, 0x4

    aput v4, v20, v21

    goto/16 :goto_0

    .line 1030
    .restart local v14    # "offset":I
    :cond_16
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->START_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1031
    :cond_17
    add-int/2addr v4, v14

    .line 1032
    if-le v4, v12, :cond_18

    .line 1033
    move v4, v12

    .line 1035
    :cond_18
    :goto_9
    if-ge v4, v12, :cond_15

    add-int v20, v4, p2

    sub-int v20, v20, p5

    aget v20, p4, v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_15

    .line 1036
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1040
    :cond_19
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :cond_1a
    :goto_a
    if-ge v7, v14, :cond_1c

    .line 1041
    if-lez v5, :cond_1b

    .line 1042
    add-int/lit8 v5, v5, -0x1

    .line 1043
    add-int/lit8 v7, v7, 0x1

    .line 1045
    :cond_1b
    if-ge v7, v14, :cond_1a

    if-ge v4, v12, :cond_1a

    .line 1046
    add-int/lit8 v4, v4, 0x1

    .line 1047
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1050
    :cond_1c
    if-gez v5, :cond_1d

    .line 1051
    const/4 v5, 0x0

    .line 1053
    :cond_1d
    :goto_b
    if-lez v5, :cond_1e

    add-int v20, v5, p2

    sub-int v20, v20, p5

    aget v20, p4, v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_1e

    .line 1054
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 1056
    :cond_1e
    if-le v4, v12, :cond_1f

    .line 1057
    move v4, v12

    .line 1059
    :cond_1f
    :goto_c
    if-ge v4, v12, :cond_15

    add-int v20, v4, p2

    sub-int v20, v20, p5

    aget v20, p4, v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_15

    .line 1060
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 619
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 625
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 626
    if-nez p1, :cond_0

    .line 627
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 644
    goto :goto_0

    .line 649
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 650
    if-nez p1, :cond_0

    .line 651
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 669
    goto :goto_0

    .line 674
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 677
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 680
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 683
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 686
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 689
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 692
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 696
    goto :goto_0

    .line 627
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 651
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "wangying@SDK.TextView.Feature modify for short ellipsis"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 714
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 715
    .local v10, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v10, v2

    .line 716
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 717
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 719
    .local v24, "lines":[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 720
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 721
    .local v25, "nlen":I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 722
    .local v20, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 723
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 724
    move-object/from16 v24, v20

    .line 726
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v21, v0

    .line 727
    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 732
    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    .end local v25    # "nlen":I
    :cond_0
    if-eqz p11, :cond_3

    .line 733
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 734
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 735
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 736
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 738
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 739
    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 740
    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 738
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 744
    :cond_1
    aget-object v2, p11, v22

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 748
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 749
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 750
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 751
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 754
    .end local v22    # "i":I
    :cond_3
    if-nez v10, :cond_5

    .line 755
    if-eqz p21, :cond_4

    .line 756
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 759
    :cond_4
    if-eqz p20, :cond_5

    .line 760
    move/from16 p4, p6

    .line 763
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 764
    if-eqz p21, :cond_6

    .line 765
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 768
    :cond_6
    if-eqz p20, :cond_7

    .line 769
    move/from16 p5, p7

    .line 775
    :cond_7
    if-eqz p15, :cond_10

    .line 776
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 777
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_f

    .line 778
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .line 786
    .end local v16    # "ex":D
    .local v18, "extra":I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 787
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 788
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v18

    aput v3, v24, v2

    .line 790
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 791
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 792
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 794
    if-eqz p14, :cond_8

    .line 795
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 797
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 798
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 802
    .local v23, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v10

    .line 809
    :goto_3
    if-eqz p25, :cond_e

    .line 812
    if-nez v10, :cond_12

    const/16 v19, 0x1

    .line 813
    .local v19, "firstLine":Z
    :goto_4
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v14, 0x1

    .line 814
    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v13, 0x1

    .line 816
    .local v13, "forceEllipsis":Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v19, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v19, :cond_15

    if-nez v14, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_d

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_15

    const/4 v15, 0x1

    .line 830
    .local v15, "doEllipsis":Z
    :goto_7
    if-eqz v15, :cond_16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p23

    move/from16 v7, p24

    move/from16 v8, p26

    move-object/from16 v9, p25

    move/from16 v11, p27

    move-object/from16 v12, p28

    .line 832
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 851
    .end local v13    # "forceEllipsis":Z
    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "doEllipsis":Z
    .end local v19    # "firstLine":Z
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 852
    return p8

    .line 780
    .end local v18    # "extra":I
    .end local v23    # "linedirs":Landroid/text/Layout$Directions;
    .restart local v16    # "ex":D
    :cond_f
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_2

    .line 783
    .end local v16    # "ex":D
    .end local v18    # "extra":I
    :cond_10
    const/16 v18, 0x0

    .restart local v18    # "extra":I
    goto/16 :goto_2

    .line 805
    .restart local v23    # "linedirs":Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v10

    goto/16 :goto_3

    .line 812
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 813
    .restart local v19    # "firstLine":Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 814
    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_6

    .line 816
    .restart local v13    # "forceEllipsis":Z
    :cond_15
    const/4 v15, 0x0

    goto :goto_7

    .line 841
    .restart local v15    # "doEllipsis":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    if-eqz v2, :cond_17

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 844
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x4

    aget v2, v2, v3

    if-eqz v2, :cond_e

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    goto :goto_8
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1179
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 137
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "wangying@SDK.TextView.Feature modify for TextView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v112

    .line 179
    .local v112, "isProductInternational":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 181
    const/4 v13, 0x0

    .line 182
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_6

    :cond_0
    const/16 v20, 0x1

    .line 184
    .local v20, "needMultiply":Z
    :goto_0
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    .line 185
    const-wide/16 v5, 0x8

    const-string v14, "Text-generate"

    invoke-static {v5, v6, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 186
    const-string v5, "StaticLayout"

    const-string v6, "[generate] start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v94

    .line 189
    .local v94, "beforeTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 190
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 192
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v118, v0

    .line 194
    .local v118, "measured":Landroid/text/MeasuredText;
    const/16 v131, 0x0

    .line 195
    .local v131, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    move-object/from16 v131, p1

    .line 196
    check-cast v131, Landroid/text/Spanned;

    .line 198
    :cond_2
    const/16 v93, 0x1

    .line 201
    .local v93, "DEFAULT_DIR":I
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    .line 202
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-0-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_3
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_3c

    .line 205
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 206
    .local v38, "paraEnd":I
    if-gez v38, :cond_7

    .line 207
    move/from16 v38, p3

    .line 211
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v102, v5, 0x1

    .line 212
    .local v102, "firstWidthLineLimit":I
    move/from16 v101, p5

    .line 213
    .local v101, "firstWidth":I
    move/from16 v126, p5

    .line 215
    .local v126, "restWidth":I
    const/16 v16, 0x0

    .line 217
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v131, :cond_f

    .line 218
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v131

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v127

    check-cast v127, [Landroid/text/style/LeadingMarginSpan;

    .line 220
    .local v127, "sp":[Landroid/text/style/LeadingMarginSpan;
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_4

    .line 221
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-1-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_4
    const/16 v110, 0x0

    .local v110, "i":I
    :goto_3
    move-object/from16 v0, v127

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_8

    .line 224
    aget-object v115, v127, v110

    .line 225
    .local v115, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v127, v110

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v101, v101, v5

    .line 226
    aget-object v5, v127, v110

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v126, v126, v5

    .line 232
    move-object/from16 v0, v115

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_5

    move-object/from16 v116, v115

    .line 233
    check-cast v116, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 234
    .local v116, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v131

    move-object/from16 v1, v116

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v117

    .line 235
    .local v117, "lmsFirstLine":I
    invoke-interface/range {v116 .. v116}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v102, v117, v5

    .line 223
    .end local v116    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v117    # "lmsFirstLine":I
    :cond_5
    add-int/lit8 v110, v110, 0x1

    goto :goto_3

    .line 182
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v38    # "paraEnd":I
    .end local v93    # "DEFAULT_DIR":I
    .end local v94    # "beforeTime":J
    .end local v101    # "firstWidth":I
    .end local v102    # "firstWidthLineLimit":I
    .end local v110    # "i":I
    .end local v115    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v118    # "measured":Landroid/text/MeasuredText;
    .end local v126    # "restWidth":I
    .end local v127    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v131    # "spanned":Landroid/text/Spanned;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 209
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v38    # "paraEnd":I
    .restart local v93    # "DEFAULT_DIR":I
    .restart local v94    # "beforeTime":J
    .restart local v118    # "measured":Landroid/text/MeasuredText;
    .restart local v131    # "spanned":Landroid/text/Spanned;
    :cond_7
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 238
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v101    # "firstWidth":I
    .restart local v102    # "firstWidthLineLimit":I
    .restart local v110    # "i":I
    .restart local v126    # "restWidth":I
    .restart local v127    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_9

    .line 239
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-1-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_9
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v131

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 244
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_f

    .line 245
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_b

    .line 247
    :cond_a
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 250
    :cond_b
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_c

    .line 251
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-2-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_c
    const/16 v110, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_e

    .line 254
    aget-object v5, v16, v110

    move-object/from16 v0, v131

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v119

    .line 256
    .local v119, "o":I
    move/from16 v0, v119

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, v119

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v110

    .line 253
    :goto_5
    add-int/lit8 v110, v110, 0x1

    goto :goto_4

    .line 264
    :cond_d
    aput v13, v17, v110

    goto :goto_5

    .line 267
    .end local v119    # "o":I
    :cond_e
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_f

    .line 268
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-2-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v110    # "i":I
    .end local v127    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_f
    move-object/from16 v0, v118

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 274
    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 275
    .local v27, "chs":[C
    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 276
    .local v28, "widths":[F
    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 277
    .local v21, "chdirs":[B
    move-object/from16 v0, v118

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 278
    .local v22, "dir":I
    move-object/from16 v0, v118

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 280
    .local v23, "easy":Z
    move/from16 v136, v101

    .line 282
    .local v136, "width":I
    const/16 v62, 0x0

    .line 284
    .local v62, "w":F
    move/from16 v7, v29

    .line 288
    .local v7, "here":I
    move/from16 v120, v29

    .line 289
    .local v120, "ok":I
    move/from16 v125, v62

    .line 290
    .local v125, "okWidth":F
    const/16 v121, 0x0

    .local v121, "okAscent":I
    const/16 v123, 0x0

    .local v123, "okDescent":I
    const/16 v124, 0x0

    .local v124, "okTop":I
    const/16 v122, 0x0

    .line 294
    .local v122, "okBottom":I
    move/from16 v103, v29

    .line 295
    .local v103, "fit":I
    move/from16 v104, v62

    .line 296
    .local v104, "fitWidth":F
    const/16 v39, 0x0

    .local v39, "fitAscent":I
    const/16 v40, 0x0

    .local v40, "fitDescent":I
    const/16 v41, 0x0

    .local v41, "fitTop":I
    const/16 v42, 0x0

    .line 298
    .local v42, "fitBottom":I
    const/16 v19, 0x0

    .line 299
    .local v19, "hasTabOrEmoji":Z
    const/16 v109, 0x0

    .line 300
    .local v109, "hasTab":Z
    const/16 v133, 0x0

    .line 301
    .local v133, "tabStops":Landroid/text/Layout$TabStops;
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_10

    .line 302
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-3-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_10
    move/from16 v130, v29

    .local v130, "spanStart":I
    :goto_6
    move/from16 v0, v130

    move/from16 v1, v38

    if-ge v0, v1, :cond_38

    .line 306
    if-nez v131, :cond_16

    .line 307
    move/from16 v128, v38

    .line 308
    .local v128, "spanEnd":I
    sub-int v129, v128, v130

    .line 309
    .local v129, "spanLen":I
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_11

    .line 310
    const-string v5, "StaticLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[generate] addStyleRun-nospan-start "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v129

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_11
    move-object/from16 v0, v118

    move-object/from16 v1, p4

    move/from16 v2, v129

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 313
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_12

    .line 314
    const-string v5, "StaticLayout"

    const-string v6, "[generate] addStyleRun-nospan-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_12
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v108, v0

    .line 333
    .local v108, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    .line 334
    .local v106, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v105, v0

    .line 335
    .local v105, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v107, v0

    .line 336
    .local v107, "fmDescent":I
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_13

    .line 337
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-4-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_13
    move/from16 v114, v130

    .local v114, "j":I
    :goto_8
    move/from16 v0, v114

    move/from16 v1, v128

    if-ge v0, v1, :cond_14

    .line 343
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_18

    .line 538
    :cond_14
    :goto_9
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_15

    .line 539
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-4-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_15
    move/from16 v130, v128

    goto/16 :goto_6

    .line 317
    .end local v105    # "fmAscent":I
    .end local v106    # "fmBottom":I
    .end local v107    # "fmDescent":I
    .end local v108    # "fmTop":I
    .end local v114    # "j":I
    .end local v128    # "spanEnd":I
    .end local v129    # "spanLen":I
    :cond_16
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v131

    move/from16 v1, v130

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v128

    .line 319
    .restart local v128    # "spanEnd":I
    sub-int v129, v128, v130

    .line 320
    .restart local v129    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v131

    move/from16 v1, v130

    move/from16 v2, v128

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v132

    check-cast v132, [Landroid/text/style/MetricAffectingSpan;

    .line 322
    .local v132, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v132

    move-object/from16 v1, v131

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v132

    .end local v132    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v132, [Landroid/text/style/MetricAffectingSpan;

    .line 323
    .restart local v132    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_17

    .line 324
    const-string v5, "StaticLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[generate] addStyleRun-span-start "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v129

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_17
    move-object/from16 v0, v118

    move-object/from16 v1, p4

    move-object/from16 v2, v132

    move/from16 v3, v129

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 327
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_12

    .line 328
    const-string v5, "StaticLayout"

    const-string v6, "[generate] addStyleRun-span-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 348
    .end local v132    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v105    # "fmAscent":I
    .restart local v106    # "fmBottom":I
    .restart local v107    # "fmDescent":I
    .restart local v108    # "fmTop":I
    .restart local v114    # "j":I
    :cond_18
    sub-int v5, v114, v29

    aget-char v97, v27, v5

    .line 350
    .local v97, "c":C
    const/16 v5, 0xa

    move/from16 v0, v97

    if-ne v0, v5, :cond_26

    .line 401
    :goto_a
    const/16 v5, 0x20

    move/from16 v0, v97

    if-eq v0, v5, :cond_19

    const/16 v5, 0x9

    move/from16 v0, v97

    if-eq v0, v5, :cond_19

    const/16 v5, 0x200b

    move/from16 v0, v97

    if-ne v0, v5, :cond_2e

    :cond_19
    const/16 v113, 0x1

    .line 409
    .local v113, "isSpaceOrTab":Z
    :goto_b
    move/from16 v0, v136

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_1a

    if-eqz v113, :cond_31

    if-eqz v112, :cond_31

    .line 412
    :cond_1a
    move/from16 v104, v62

    .line 413
    add-int/lit8 v103, v114, 0x1

    .line 415
    move/from16 v0, v108

    move/from16 v1, v41

    if-ge v0, v1, :cond_1b

    .line 416
    move/from16 v41, v108

    .line 417
    :cond_1b
    move/from16 v0, v105

    move/from16 v1, v39

    if-ge v0, v1, :cond_1c

    .line 418
    move/from16 v39, v105

    .line 419
    :cond_1c
    move/from16 v0, v107

    move/from16 v1, v40

    if-le v0, v1, :cond_1d

    .line 420
    move/from16 v40, v107

    .line 421
    :cond_1d
    move/from16 v0, v106

    move/from16 v1, v42

    if-le v0, v1, :cond_1e

    .line 422
    move/from16 v42, v106

    .line 438
    :cond_1e
    const/16 v111, 0x0

    .line 439
    .local v111, "isLineBreak":Z
    if-eqz v112, :cond_30

    .line 440
    if-nez v113, :cond_21

    const/16 v5, 0x2f

    move/from16 v0, v97

    if-eq v0, v5, :cond_1f

    const/16 v5, 0x2d

    move/from16 v0, v97

    if-ne v0, v5, :cond_20

    :cond_1f
    add-int/lit8 v5, v114, 0x1

    move/from16 v0, v128

    if-ge v5, v0, :cond_21

    add-int/lit8 v5, v114, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_20
    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_2f

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v5, v114, 0x1

    move/from16 v0, v128

    if-ge v5, v0, :cond_2f

    add-int/lit8 v5, v114, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_21
    const/16 v111, 0x1

    .line 453
    :goto_c
    if-eqz v111, :cond_25

    .line 454
    move/from16 v125, v62

    .line 455
    add-int/lit8 v120, v114, 0x1

    .line 457
    move/from16 v0, v41

    move/from16 v1, v124

    if-ge v0, v1, :cond_22

    .line 458
    move/from16 v124, v41

    .line 459
    :cond_22
    move/from16 v0, v39

    move/from16 v1, v121

    if-ge v0, v1, :cond_23

    .line 460
    move/from16 v121, v39

    .line 461
    :cond_23
    move/from16 v0, v40

    move/from16 v1, v123

    if-le v0, v1, :cond_24

    .line 462
    move/from16 v123, v40

    .line 463
    :cond_24
    move/from16 v0, v42

    move/from16 v1, v122

    if-le v0, v1, :cond_25

    .line 464
    move/from16 v122, v42

    .line 339
    .end local v111    # "isLineBreak":Z
    :cond_25
    add-int/lit8 v114, v114, 0x1

    goto/16 :goto_8

    .line 352
    .end local v113    # "isSpaceOrTab":Z
    :cond_26
    const/16 v5, 0x9

    move/from16 v0, v97

    if-ne v0, v5, :cond_29

    .line 353
    if-nez v109, :cond_27

    .line 354
    const/16 v109, 0x1

    .line 355
    const/16 v19, 0x1

    .line 356
    if-eqz v131, :cond_27

    .line 358
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v131

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v132

    check-cast v132, [Landroid/text/style/TabStopSpan;

    .line 360
    .local v132, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v132

    array-length v5, v0

    if-lez v5, :cond_27

    .line 361
    new-instance v133, Landroid/text/Layout$TabStops;

    .end local v133    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v133

    move-object/from16 v1, v132

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 365
    .end local v132    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v133    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_27
    if-eqz v133, :cond_28

    .line 366
    move-object/from16 v0, v133

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_a

    .line 368
    :cond_28
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_a

    .line 370
    :cond_29
    const v5, 0xd800

    move/from16 v0, v97

    if-lt v0, v5, :cond_2d

    const v5, 0xdfff

    move/from16 v0, v97

    if-gt v0, v5, :cond_2d

    add-int/lit8 v5, v114, 0x1

    move/from16 v0, v128

    if-ge v5, v0, :cond_2d

    .line 372
    sub-int v5, v114, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v100

    .line 374
    .local v100, "emoji":I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v100

    if-lt v0, v5, :cond_2c

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v100

    if-gt v0, v5, :cond_2c

    .line 375
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v96

    .line 377
    .local v96, "bm":Landroid/graphics/Bitmap;
    if-eqz v96, :cond_2b

    .line 380
    if-nez v131, :cond_2a

    .line 381
    move-object/from16 v134, p4

    .line 386
    .local v134, "whichPaint":Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v135, v5, v6

    .line 388
    .local v135, "wid":F
    add-float v62, v62, v135

    .line 389
    const/16 v19, 0x1

    .line 390
    add-int/lit8 v114, v114, 0x1

    .line 391
    goto/16 :goto_a

    .line 383
    .end local v134    # "whichPaint":Landroid/graphics/Paint;
    .end local v135    # "wid":F
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v134, v0

    .restart local v134    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_d

    .line 392
    .end local v134    # "whichPaint":Landroid/graphics/Paint;
    :cond_2b
    sub-int v5, v114, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 395
    .end local v96    # "bm":Landroid/graphics/Bitmap;
    :cond_2c
    sub-int v5, v114, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 398
    .end local v100    # "emoji":I
    :cond_2d
    sub-int v5, v114, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 401
    :cond_2e
    const/16 v113, 0x0

    goto/16 :goto_b

    .line 440
    .restart local v111    # "isLineBreak":Z
    .restart local v113    # "isSpaceOrTab":Z
    :cond_2f
    const/16 v111, 0x0

    goto/16 :goto_c

    .line 449
    :cond_30
    sub-int v5, v114, v29

    sub-int v6, v7, v29

    sub-int v14, v128, v29

    const/4 v15, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v5, v6, v14, v15}, Landroid/text/MzTextUtils;->isLineBreak([CIIIZ)Z

    move-result v111

    goto/16 :goto_c

    .line 467
    .end local v111    # "isLineBreak":Z
    :cond_31
    add-int/lit8 v5, v114, 0x1

    move/from16 v0, v128

    if-ge v5, v0, :cond_34

    const/16 v34, 0x1

    .line 474
    .local v34, "moreChars":Z
    :goto_e
    if-eqz v113, :cond_32

    if-nez v112, :cond_32

    .line 475
    move/from16 v125, v104

    .line 476
    add-int/lit8 v120, v114, 0x1

    .line 477
    move/from16 v124, v41

    .line 478
    move/from16 v121, v39

    .line 479
    move/from16 v123, v40

    .line 480
    move/from16 v122, v42

    .line 484
    :cond_32
    move/from16 v0, v120

    if-eq v0, v7, :cond_35

    .line 485
    move/from16 v8, v120

    .line 486
    .local v8, "endPos":I
    move/from16 v9, v121

    .line 487
    .local v9, "above":I
    move/from16 v10, v123

    .line 488
    .local v10, "below":I
    move/from16 v11, v124

    .line 489
    .local v11, "top":I
    move/from16 v12, v122

    .line 490
    .local v12, "bottom":I
    move/from16 v32, v125

    .local v32, "currentTextWidth":F
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 507
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 514
    move v7, v8

    .line 515
    add-int/lit8 v114, v7, -0x1

    .line 516
    move/from16 v103, v7

    move/from16 v120, v7

    .line 517
    const/16 v62, 0x0

    .line 518
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 519
    const/16 v122, 0x0

    move/from16 v124, v122

    move/from16 v123, v122

    move/from16 v121, v122

    .line 521
    add-int/lit8 v102, v102, -0x1

    if-gtz v102, :cond_33

    .line 522
    move/from16 v136, v126

    .line 525
    :cond_33
    move/from16 v0, v130

    if-ge v7, v0, :cond_37

    .line 528
    move-object/from16 v0, v118

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 529
    move/from16 v128, v7

    .line 530
    goto/16 :goto_9

    .line 467
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    :cond_34
    const/16 v34, 0x0

    goto :goto_e

    .line 491
    .restart local v34    # "moreChars":Z
    :cond_35
    move/from16 v0, v103

    if-eq v0, v7, :cond_36

    .line 492
    move/from16 v8, v103

    .line 493
    .restart local v8    # "endPos":I
    move/from16 v9, v39

    .line 494
    .restart local v9    # "above":I
    move/from16 v10, v40

    .line 495
    .restart local v10    # "below":I
    move/from16 v11, v41

    .line 496
    .restart local v11    # "top":I
    move/from16 v12, v42

    .line 497
    .restart local v12    # "bottom":I
    move/from16 v32, v104

    .restart local v32    # "currentTextWidth":F
    goto :goto_f

    .line 499
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_36
    add-int/lit8 v8, v7, 0x1

    .line 500
    .restart local v8    # "endPos":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 501
    .restart local v9    # "above":I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 502
    .restart local v10    # "below":I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 503
    .restart local v11    # "top":I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 504
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto :goto_f

    .line 533
    :cond_37
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_25

    goto/16 :goto_9

    .line 542
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v97    # "c":C
    .end local v105    # "fmAscent":I
    .end local v106    # "fmBottom":I
    .end local v107    # "fmDescent":I
    .end local v108    # "fmTop":I
    .end local v113    # "isSpaceOrTab":Z
    .end local v114    # "j":I
    .end local v128    # "spanEnd":I
    .end local v129    # "spanLen":I
    :cond_38
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_39

    .line 543
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-3-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_39
    move/from16 v0, v38

    if-eq v0, v7, :cond_3b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_3b

    .line 547
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_3a

    .line 549
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 551
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 552
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 553
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 554
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 559
    :cond_3a
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_42

    const/16 v64, 0x1

    :goto_10
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 571
    :cond_3b
    move/from16 v29, v38

    .line 573
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_43

    .line 576
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v38    # "paraEnd":I
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v101    # "firstWidth":I
    .end local v102    # "firstWidthLineLimit":I
    .end local v103    # "fit":I
    .end local v104    # "fitWidth":F
    .end local v109    # "hasTab":Z
    .end local v120    # "ok":I
    .end local v121    # "okAscent":I
    .end local v122    # "okBottom":I
    .end local v123    # "okDescent":I
    .end local v124    # "okTop":I
    .end local v125    # "okWidth":F
    .end local v126    # "restWidth":I
    .end local v130    # "spanStart":I
    .end local v133    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v136    # "width":I
    :cond_3c
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_3d

    .line 577
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-0-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_3d
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3e

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3f

    :cond_3e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_3f

    .line 585
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 587
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v79, v0

    move-object/from16 v0, v118

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v80, v0

    move-object/from16 v0, v118

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v81, v0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 598
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v98, v5, v94

    .line 599
    .local v98, "diffTime":J
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_41

    .line 600
    const-wide/16 v5, 0x0

    cmp-long v5, v98, v5

    if-lez v5, :cond_40

    .line 601
    const-string v5, "StaticLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[generate] diff "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v98 .. v99}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_40
    const-string v5, "StaticLayout"

    const-string v6, "[generate] end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    :cond_41
    return-void

    .line 559
    .end local v98    # "diffTime":J
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v38    # "paraEnd":I
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v101    # "firstWidth":I
    .restart local v102    # "firstWidthLineLimit":I
    .restart local v103    # "fit":I
    .restart local v104    # "fitWidth":F
    .restart local v109    # "hasTab":Z
    .restart local v120    # "ok":I
    .restart local v121    # "okAscent":I
    .restart local v122    # "okBottom":I
    .restart local v123    # "okDescent":I
    .restart local v124    # "okTop":I
    .restart local v125    # "okWidth":F
    .restart local v126    # "restWidth":I
    .restart local v130    # "spanStart":I
    .restart local v133    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v136    # "width":I
    :cond_42
    const/16 v64, 0x0

    goto/16 :goto_10

    .line 204
    :cond_43
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1152
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1161
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1162
    const/4 v0, 0x0

    .line 1165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1112
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1113
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1115
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1117
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1137
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 1076
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1077
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1079
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1080
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1081
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1082
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1083
    move v1, v0

    goto :goto_0

    .line 1085
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1088
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1089
    const/4 v3, 0x0

    .line 1091
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1102
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1103
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1105
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public isSingleLineRtoL()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1186
    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    aget v2, v2, v0

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1174
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1175
    return-void
.end method
