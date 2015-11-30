.class public Landroid/text/RichStaticLayout;
.super Landroid/text/RichLayout;
.source "RichStaticLayout.java"


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

.field private static final TAG:Ljava/lang/String; = "MzStaticLayout"

.field private static final TEST_ZH:Ljava/lang/String; = "\u6d4b"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mBufStart:I

.field private mCharHorizontalX:[F

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCharsWidthsTemp:[F

.field private mLineCharsXTemp:[F

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I

.field private mWidths:[F

.field private mZhWordWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 38
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/RichLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1071
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    .line 1097
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/RichStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/RichStaticLayout;->mColumns:I

    .line 41
    iget v0, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/RichStaticLayout;->mLines:[I

    .line 42
    iget v0, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 44
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;IIFZ)V
    .locals 18
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
    .param p14, "paragraphSpacing"    # F
    .param p15, "justified"    # Z

    .prologue
    .line 53
    if-nez p11, :cond_0

    move-object/from16 v3, p1

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p14

    move/from16 v11, p15

    invoke-direct/range {v2 .. v11}, Landroid/text/RichLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFFZ)V

    .line 1071
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    .line 1097
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 67
    if-eqz p11, :cond_2

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Layout$Ellipsizer;

    .line 70
    .local v17, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 71
    move/from16 v0, p12

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 72
    move-object/from16 v0, p11

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 73
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichStaticLayout;->mEllipsizedWidth:I

    .line 75
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    .line 81
    .end local v17    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichStaticLayout;->mLines:[I

    .line 82
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 84
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    .line 86
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 88
    move/from16 v0, p12

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichStaticLayout;->isJustified()Z

    move-result v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    invoke-virtual/range {v2 .. v16}, Landroid/text/RichStaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;FZ)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 94
    return-void

    .line 53
    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 77
    :cond_2
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    .line 78
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichStaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_1
.end method

.method private calculateCharsWidths(Ljava/lang/CharSequence;IIIIFF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "lineStart"    # I
    .param p5, "lineEnd"    # I
    .param p6, "textWidth"    # F
    .param p7, "avail"    # F

    .prologue
    const/4 v7, 0x0

    .line 1101
    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    if-gt p5, p4, :cond_3

    .line 1105
    sub-int v1, p5, p2

    .line 1106
    .local v1, "index":I
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 1107
    :cond_2
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    aput v7, v4, v1

    .line 1108
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    aput v7, v4, v1

    goto :goto_0

    .line 1111
    .end local v1    # "index":I
    :cond_3
    const/4 v2, 0x0

    .line 1112
    .local v2, "wordPos":I
    const/4 v3, 0x0

    .line 1113
    .local v3, "wordWidth":F
    move v0, p4

    .local v0, "i":I
    :goto_1
    if-ge v0, p5, :cond_0

    .line 1114
    move v2, v0

    .line 1115
    :goto_2
    add-int/lit8 v4, p5, -0x1

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, p2

    aget v4, v4, v5

    iget-object v5, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v6, v0, p2

    aget v5, v5, v6

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_4

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1118
    :cond_4
    add-int/lit8 v4, p5, -0x1

    if-lt v0, v4, :cond_5

    .line 1119
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v5, v2, p2

    aget v4, v4, v5

    sub-float v3, p6, v4

    .line 1123
    :goto_3
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    sub-int v5, v2, p2

    aput v3, v4, v5

    .line 1124
    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v0, :cond_6

    .line 1125
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    sub-int v5, v2, p2

    aput v7, v4, v5

    goto :goto_4

    .line 1121
    :cond_5
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, p2

    aget v4, v4, v5

    iget-object v5, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v6, v2, p2

    aget v5, v5, v6

    sub-float v3, v4, v5

    goto :goto_3

    .line 1113
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private calculateCharsX(Ljava/lang/CharSequence;III)V
    .locals 45
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "width"    # I

    .prologue
    .line 1147
    const/4 v7, 0x0

    .line 1148
    .local v7, "lineWidth":F
    const/4 v15, 0x0

    .line 1149
    .local v15, "firstLine":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    const/16 v21, 0x0

    .line 1150
    .local v21, "lastLine":I
    :goto_0
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 1151
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 1152
    .local v38, "spanEnd":I
    move-object/from16 v10, p1

    .line 1154
    .local v10, "buf":Ljava/lang/CharSequence;
    sget-object v29, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1159
    .local v29, "paraAlign":Landroid/text/Layout$Alignment;
    move/from16 v16, v15

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-gt v0, v1, :cond_27

    .line 1160
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v5

    .line 1161
    .local v5, "start":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getLineEnd(I)I

    move-result v6

    .line 1162
    .local v6, "end":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getParagraphDirection(I)I

    move-result v13

    .line 1163
    .local v13, "dir":I
    const/16 v23, 0x0

    .line 1164
    .local v23, "left":I
    move/from16 v31, p4

    .line 1165
    .local v31, "right":I
    move/from16 v0, v31

    int-to-float v8, v0

    .line 1166
    .local v8, "avail":F
    const/4 v7, 0x0

    .line 1167
    move/from16 v18, v5

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v6, :cond_1

    .line 1168
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getCharWidth(I)F

    move-result v2

    add-float/2addr v7, v2

    .line 1167
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1149
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "avail":F
    .end local v10    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "dir":I
    .end local v16    # "i":I
    .end local v18    # "j":I
    .end local v21    # "lastLine":I
    .end local v23    # "left":I
    .end local v29    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v31    # "right":I
    .end local v38    # "spanEnd":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    add-int/lit8 v21, v2, -0x1

    goto :goto_0

    .line 1171
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    .restart local v8    # "avail":F
    .restart local v10    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "dir":I
    .restart local v16    # "i":I
    .restart local v18    # "j":I
    .restart local v21    # "lastLine":I
    .restart local v23    # "left":I
    .restart local v29    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v31    # "right":I
    .restart local v38    # "spanEnd":I
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_b

    move-object/from16 v37, v10

    .line 1172
    check-cast v37, Landroid/text/Spanned;

    .line 1173
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v41

    .line 1174
    .local v41, "textLength":I
    if-eqz v5, :cond_2

    add-int/lit8 v2, v5, -0x1

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    :cond_2
    const/16 v17, 0x1

    .line 1186
    .local v17, "isFirstParaLine":Z
    :goto_3
    move/from16 v0, v38

    if-lt v5, v0, :cond_4

    move/from16 v0, v16

    if-eq v0, v15, :cond_3

    if-eqz v17, :cond_4

    .line 1187
    :cond_3
    const-class v2, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-interface {v0, v5, v1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 1189
    const-class v2, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v5, v1, v2}, Landroid/text/RichStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 1191
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    sget-object v29, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1192
    move-object/from16 v0, v39

    array-length v2, v0

    add-int/lit8 v27, v2, -0x1

    .local v27, "n":I
    :goto_4
    if-ltz v27, :cond_4

    .line 1193
    aget-object v2, v39, v27

    instance-of v2, v2, Landroid/text/style/AlignmentSpan;

    if-eqz v2, :cond_8

    .line 1194
    aget-object v2, v39, v27

    check-cast v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {v2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v29

    .line 1202
    .end local v27    # "n":I
    :cond_4
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v24, v0

    .line 1203
    .local v24, "length":I
    const/16 v27, 0x0

    .restart local v27    # "n":I
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 1204
    aget-object v2, v39, v27

    instance-of v2, v2, Landroid/text/style/LeadingMarginSpan;

    if-eqz v2, :cond_6

    .line 1205
    aget-object v25, v39, v27

    check-cast v25, Landroid/text/style/LeadingMarginSpan;

    .line 1206
    .local v25, "margin":Landroid/text/style/LeadingMarginSpan;
    move/from16 v42, v17

    .line 1207
    .local v42, "useFirstLineMargin":Z
    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v2, :cond_5

    move-object/from16 v2, v25

    .line 1208
    check-cast v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v2}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 1209
    .local v12, "count":I
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/RichStaticLayout;->getLineForOffset(I)I

    move-result v40

    .line 1210
    .local v40, "startLine":I
    add-int v2, v40, v12

    move/from16 v0, v16

    if-ge v0, v2, :cond_9

    const/16 v42, 0x1

    .line 1213
    .end local v12    # "count":I
    .end local v40    # "startLine":I
    :cond_5
    :goto_6
    const/4 v2, -0x1

    if-ne v13, v2, :cond_a

    .line 1214
    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v2

    sub-int v31, v31, v2

    .line 1203
    .end local v25    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v42    # "useFirstLineMargin":Z
    :cond_6
    :goto_7
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 1174
    .end local v17    # "isFirstParaLine":Z
    .end local v24    # "length":I
    .end local v27    # "n":I
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1192
    .restart local v17    # "isFirstParaLine":Z
    .restart local v27    # "n":I
    :cond_8
    add-int/lit8 v27, v27, -0x1

    goto :goto_4

    .line 1210
    .restart local v12    # "count":I
    .restart local v24    # "length":I
    .restart local v25    # "margin":Landroid/text/style/LeadingMarginSpan;
    .restart local v40    # "startLine":I
    .restart local v42    # "useFirstLineMargin":Z
    :cond_9
    const/16 v42, 0x0

    goto :goto_6

    .line 1216
    .end local v12    # "count":I
    .end local v40    # "startLine":I
    :cond_a
    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v2

    add-int v23, v23, v2

    goto :goto_7

    .line 1222
    .end local v17    # "isFirstParaLine":Z
    .end local v24    # "length":I
    .end local v25    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v27    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v41    # "textLength":I
    .end local v42    # "useFirstLineMargin":Z
    :cond_b
    const/4 v2, -0x1

    if-ne v13, v2, :cond_e

    .line 1223
    move/from16 v0, v31

    int-to-float v8, v0

    .line 1229
    :goto_8
    move-object/from16 v9, v29

    .line 1230
    .local v9, "align":Landroid/text/Layout$Alignment;
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v9, v2, :cond_10

    .line 1231
    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1239
    :cond_c
    :goto_9
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v9, v2, :cond_13

    .line 1240
    const/4 v2, 0x1

    if-ne v13, v2, :cond_12

    .line 1241
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v44, v0

    .line 1258
    .local v44, "x":F
    :goto_a
    if-gt v6, v5, :cond_16

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v3, v5, p2

    aput v44, v2, v3

    .line 1159
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1225
    .end local v9    # "align":Landroid/text/Layout$Alignment;
    .end local v44    # "x":F
    :cond_e
    move/from16 v0, v23

    int-to-float v2, v0

    sub-float/2addr v8, v2

    goto :goto_8

    .line 1231
    .restart local v9    # "align":Landroid/text/Layout$Alignment;
    :cond_f
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_9

    .line 1233
    :cond_10
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v9, v2, :cond_c

    .line 1234
    const/4 v2, 0x1

    if-ne v13, v2, :cond_11

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_b
    goto :goto_9

    :cond_11
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 1243
    :cond_12
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v44, v0

    .restart local v44    # "x":F
    goto :goto_a

    .line 1246
    .end local v44    # "x":F
    :cond_13
    float-to-int v0, v7

    move/from16 v26, v0

    .line 1247
    .local v26, "max":I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v9, v2, :cond_15

    .line 1248
    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    .line 1249
    sub-int v2, v31, v26

    int-to-float v0, v2

    move/from16 v44, v0

    .restart local v44    # "x":F
    goto :goto_a

    .line 1251
    .end local v44    # "x":F
    :cond_14
    sub-int v2, v23, v26

    int-to-float v0, v2

    move/from16 v44, v0

    .restart local v44    # "x":F
    goto :goto_a

    .line 1254
    .end local v44    # "x":F
    :cond_15
    and-int/lit8 v26, v26, -0x2

    .line 1255
    add-int v2, v31, v23

    sub-int v2, v2, v26

    shr-int/lit8 v2, v2, 0x1

    int-to-float v0, v2

    move/from16 v44, v0

    .restart local v44    # "x":F
    goto :goto_a

    .line 1263
    .end local v26    # "max":I
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    .line 1264
    .local v14, "directions":Landroid/text/Layout$Directions;
    cmpl-float v2, v8, v7

    if-lez v2, :cond_1a

    sub-float v2, v8, v7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mZhWordWidth:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1a

    const/16 v28, 0x1

    .line 1265
    .local v28, "needJustified":Z
    :goto_c
    if-eqz v28, :cond_1b

    sget-object v2, Landroid/text/RichStaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v14, v2, :cond_1b

    const/16 v2, 0xa

    add-int/lit8 v3, v6, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1b

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 1266
    invoke-direct/range {v2 .. v8}, Landroid/text/RichStaticLayout;->calculateWordSpace(Ljava/lang/CharSequence;IIIFF)F

    move-result v43

    .line 1267
    .local v43, "wordSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v3, v5, p2

    aput v44, v2, v3

    .line 1268
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichStaticLayout;->getCharWidth(I)F

    move-result v11

    .line 1269
    .local v11, "charWidth":F
    move/from16 v20, v11

    .line 1270
    .local v20, "lastCharWidth":F
    add-int/lit8 v18, v5, 0x1

    :goto_d
    move/from16 v0, v18

    if-ge v0, v6, :cond_d

    .line 1271
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getCharWidth(I)F

    move-result v11

    .line 1272
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_19

    .line 1273
    add-float v44, v44, v20

    .line 1274
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/RichStaticLayout;->canAddSpace(CZ)Z

    move-result v2

    if-nez v2, :cond_17

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/text/RichStaticLayout;->canAddSpace(CZ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1275
    :cond_17
    add-float v44, v44, v43

    .line 1277
    :cond_18
    move/from16 v20, v11

    .line 1279
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v3, v18, p2

    aput v44, v2, v3

    .line 1270
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 1264
    .end local v11    # "charWidth":F
    .end local v20    # "lastCharWidth":F
    .end local v28    # "needJustified":Z
    .end local v43    # "wordSpace":F
    :cond_1a
    const/16 v28, 0x0

    goto :goto_c

    .line 1282
    .restart local v28    # "needJustified":Z
    :cond_1b
    iget-object v0, v14, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v35, v0

    .line 1283
    .local v35, "runs":[I
    move/from16 v22, v44

    .line 1284
    .local v22, "lastX":F
    const/16 v18, 0x0

    :goto_e
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    .line 1285
    aget v2, v35, v18

    add-int v34, v2, v5

    .line 1286
    .local v34, "runStart":I
    add-int/lit8 v2, v18, 0x1

    aget v2, v35, v2

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    add-int v33, v34, v2

    .line 1287
    .local v33, "runLimit":I
    move/from16 v0, v33

    if-le v0, v6, :cond_1c

    .line 1288
    move/from16 v33, v6

    .line 1290
    :cond_1c
    add-int/lit8 v2, v18, 0x1

    aget v2, v35, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1d

    const/16 v32, 0x1

    .line 1291
    .local v32, "runIsRtl":Z
    :goto_f
    const/16 v36, 0x0

    .line 1292
    .local v36, "segWidth":F
    move/from16 v30, v34

    .line 1293
    .local v30, "pos":I
    :goto_10
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    .line 1294
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getCharWidth(I)F

    move-result v2

    add-float v36, v36, v2

    .line 1295
    add-int/lit8 v30, v30, 0x1

    goto :goto_10

    .line 1290
    .end local v30    # "pos":I
    .end local v32    # "runIsRtl":Z
    .end local v36    # "segWidth":F
    :cond_1d
    const/16 v32, 0x0

    goto :goto_f

    .line 1297
    .restart local v30    # "pos":I
    .restart local v32    # "runIsRtl":Z
    .restart local v36    # "segWidth":F
    :cond_1e
    const/4 v11, 0x0

    .line 1298
    .restart local v11    # "charWidth":F
    const/16 v20, 0x0

    .line 1299
    .restart local v20    # "lastCharWidth":F
    move/from16 v22, v44

    .line 1300
    const/4 v2, 0x1

    if-ne v13, v2, :cond_20

    .line 1301
    if-eqz v32, :cond_1f

    .line 1302
    add-float v44, v44, v36

    .line 1309
    :cond_1f
    :goto_11
    if-eqz v32, :cond_21

    .line 1310
    move/from16 v19, v34

    .local v19, "k":I
    :goto_12
    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1311
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getCharWidth(I)F

    move-result v11

    .line 1312
    sub-float v44, v44, v11

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v3, v19, p2

    aput v44, v2, v3

    .line 1310
    add-int/lit8 v19, v19, 0x1

    goto :goto_12

    .line 1305
    .end local v19    # "k":I
    :cond_20
    if-nez v32, :cond_1f

    .line 1306
    sub-float v44, v44, v36

    goto :goto_11

    .line 1316
    :cond_21
    move/from16 v19, v34

    .restart local v19    # "k":I
    :goto_13
    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_23

    .line 1317
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getCharWidth(I)F

    move-result v11

    .line 1318
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_22

    .line 1319
    add-float v44, v44, v20

    .line 1320
    move/from16 v20, v11

    .line 1322
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v3, v19, p2

    aput v44, v2, v3

    .line 1316
    add-int/lit8 v19, v19, 0x1

    goto :goto_13

    .line 1324
    :cond_23
    add-float v44, v44, v20

    .line 1326
    :cond_24
    const/4 v2, 0x1

    if-ne v13, v2, :cond_26

    .line 1327
    if-eqz v32, :cond_25

    .line 1328
    add-float v44, v22, v36

    .line 1284
    :cond_25
    :goto_14
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_e

    .line 1331
    :cond_26
    if-nez v32, :cond_25

    .line 1332
    sub-float v44, v22, v36

    goto :goto_14

    .line 1338
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "avail":F
    .end local v9    # "align":Landroid/text/Layout$Alignment;
    .end local v11    # "charWidth":F
    .end local v13    # "dir":I
    .end local v14    # "directions":Landroid/text/Layout$Directions;
    .end local v18    # "j":I
    .end local v19    # "k":I
    .end local v20    # "lastCharWidth":F
    .end local v22    # "lastX":F
    .end local v23    # "left":I
    .end local v28    # "needJustified":Z
    .end local v30    # "pos":I
    .end local v31    # "right":I
    .end local v32    # "runIsRtl":Z
    .end local v33    # "runLimit":I
    .end local v34    # "runStart":I
    .end local v35    # "runs":[I
    .end local v36    # "segWidth":F
    .end local v44    # "x":F
    :cond_27
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 21
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
    .line 777
    cmpg-float v18, p8, p5

    if-gtz v18, :cond_0

    if-nez p10, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x4

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 941
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isTruncateAtSmall(Landroid/text/TextUtils$TruncateAt;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string/jumbo v18, "\u2025"

    move-object/from16 v0, p9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 796
    .local v6, "ellipsisWidth":F
    :goto_1
    const/4 v5, 0x0

    .line 797
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 798
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 807
    .local v10, "len":I
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 810
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 811
    const/16 v16, 0x0

    .line 814
    .local v16, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_2

    .line 815
    add-int/lit8 v18, v7, -0x1

    add-int v18, v18, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 817
    .local v17, "w":F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p5

    if-lez v18, :cond_7

    .line 824
    .end local v17    # "w":F
    :cond_2
    const/4 v5, 0x0

    .line 825
    move v4, v7

    .line 891
    .end local v7    # "i":I
    .end local v16    # "sum":F
    :cond_3
    :goto_3
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isTruncateAtSmall(Landroid/text/TextUtils$TruncateAt;)Z

    move-result v18

    if-eqz v18, :cond_14

    if-lez v4, :cond_14

    const-string/jumbo v18, "\u2025"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_14

    .line 892
    const-string/jumbo v18, "\u2025"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v12, v18, v4

    .line 893
    .local v12, "offset":I
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 895
    :cond_4
    sub-int/2addr v5, v12

    .line 896
    if-gez v5, :cond_5

    .line 897
    const/4 v5, 0x0

    .line 899
    :cond_5
    :goto_4
    if-lez v5, :cond_13

    add-int v18, v5, p1

    sub-int v18, v18, p4

    aget v18, p3, v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_13

    .line 900
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 792
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    .end local v12    # "offset":I
    :cond_6
    sget-object v18, Landroid/text/RichStaticLayout;->ELLIPSIS_NORMAL:[C

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    goto/16 :goto_1

    .line 821
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v16    # "sum":F
    .restart local v17    # "w":F
    :cond_7
    add-float v16, v16, v17

    .line 814
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 827
    .end local v7    # "i":I
    .end local v16    # "sum":F
    .end local v17    # "w":F
    :cond_8
    const-string v18, "MzStaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 828
    const-string v18, "MzStaticLayout"

    const-string v19, "Start Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 831
    :cond_9
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_a

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_a

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 833
    :cond_a
    const/16 v16, 0x0

    .line 836
    .restart local v16    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v10, :cond_b

    .line 837
    add-int v18, v7, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 839
    .restart local v17    # "w":F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p5

    if-lez v18, :cond_c

    .line 846
    .end local v17    # "w":F
    :cond_b
    move v5, v7

    .line 847
    sub-int v4, v10, v7

    .line 848
    if-eqz p10, :cond_3

    if-nez v4, :cond_3

    if-lez v10, :cond_3

    .line 849
    add-int/lit8 v5, v10, -0x1

    .line 850
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 843
    .restart local v17    # "w":F
    :cond_c
    add-float v16, v16, v17

    .line 836
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 854
    .end local v7    # "i":I
    .end local v16    # "sum":F
    .end local v17    # "w":F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 855
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v15, 0x0

    .line 856
    .local v15, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v14, v10

    .line 858
    .local v14, "right":I
    sub-float v18, p5, v6

    const/high16 v19, 0x40000000    # 2.0f

    div-float v13, v18, v19

    .line 859
    .local v13, "ravail":F
    move v14, v10

    :goto_6
    if-ltz v14, :cond_e

    .line 860
    add-int/lit8 v18, v14, -0x1

    add-int v18, v18, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 862
    .restart local v17    # "w":F
    add-float v18, v17, v15

    cmpl-float v18, v18, v13

    if-lez v18, :cond_10

    .line 869
    .end local v17    # "w":F
    :cond_e
    sub-float v18, p5, v6

    sub-float v8, v18, v15

    .line 870
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v14, :cond_f

    .line 871
    add-int v18, v9, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 873
    .restart local v17    # "w":F
    add-float v18, v17, v11

    cmpl-float v18, v18, v8

    if-lez v18, :cond_11

    .line 880
    .end local v17    # "w":F
    :cond_f
    move v5, v9

    .line 881
    sub-int v4, v14, v9

    .line 882
    goto/16 :goto_3

    .line 866
    .end local v8    # "lavail":F
    .restart local v17    # "w":F
    :cond_10
    add-float v15, v15, v17

    .line 859
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 877
    .restart local v8    # "lavail":F
    :cond_11
    add-float v11, v11, v17

    .line 870
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 883
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v13    # "ravail":F
    .end local v14    # "right":I
    .end local v15    # "rsum":F
    .end local v17    # "w":F
    :cond_12
    const-string v18, "MzStaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 884
    const-string v18, "MzStaticLayout"

    const-string v19, "Middle Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 902
    .restart local v12    # "offset":I
    :cond_13
    sub-int v4, v10, v5

    .line 939
    .end local v12    # "offset":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x3

    aput v5, v18, v19

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x4

    aput v4, v18, v19

    goto/16 :goto_0

    .line 903
    .restart local v12    # "offset":I
    :cond_15
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_16

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 904
    :cond_16
    add-int/2addr v4, v12

    .line 905
    if-le v4, v10, :cond_17

    .line 906
    move v4, v10

    .line 908
    :cond_17
    :goto_8
    if-ge v4, v10, :cond_14

    add-int v18, v4, p1

    sub-int v18, v18, p4

    aget v18, p3, v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_14

    .line 909
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 913
    :cond_18
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :cond_19
    :goto_9
    if-ge v7, v12, :cond_1b

    .line 914
    if-lez v5, :cond_1a

    .line 915
    add-int/lit8 v5, v5, -0x1

    .line 916
    add-int/lit8 v7, v7, 0x1

    .line 918
    :cond_1a
    if-ge v7, v12, :cond_19

    if-ge v4, v10, :cond_19

    .line 919
    add-int/lit8 v4, v4, 0x1

    .line 920
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 923
    :cond_1b
    if-gez v5, :cond_1c

    .line 924
    const/4 v5, 0x0

    .line 926
    :cond_1c
    :goto_a
    if-lez v5, :cond_1d

    add-int v18, v5, p1

    sub-int v18, v18, p4

    aget v18, p3, v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_1d

    .line 927
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 929
    :cond_1d
    if-le v4, v10, :cond_1e

    .line 930
    move v4, v10

    .line 932
    :cond_1e
    :goto_b
    if-ge v4, v10, :cond_14

    add-int v18, v4, p1

    sub-int v18, v18, p4

    aget v18, p3, v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_14

    .line 933
    add-int/lit8 v4, v4, 0x1

    goto :goto_b
.end method

.method private calculateWordSpace(Ljava/lang/CharSequence;IIIFF)F
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textWidth"    # F
    .param p6, "avail"    # F

    .prologue
    const/4 v3, 0x0

    .line 1131
    sub-float v1, p6, p5

    .line 1132
    .local v1, "last":F
    const/4 v2, 0x0

    .line 1133
    .local v2, "movePostCount":I
    add-int/lit8 v0, p3, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 1134
    iget-object v4, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    sub-int v5, v0, p2

    aget v4, v4, v5

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/text/RichStaticLayout;->canAddSpace(CZ)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/text/RichStaticLayout;->canAddSpace(CZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :cond_2
    if-nez v2, :cond_3

    .line 1142
    :goto_1
    return v3

    :cond_3
    int-to-float v3, v2

    div-float v3, v1, v3

    goto :goto_1
.end method

.method private static canAddSpace(CZ)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    .line 1341
    invoke-static {p0, p1}, Landroid/text/RichStaticLayout;->isIdeographic(CZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x200b

    if-ne p0, v0, :cond_1

    .line 1342
    :cond_0
    const/4 v0, 0x1

    .line 1344
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 534
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 540
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 541
    if-nez p1, :cond_0

    .line 542
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 559
    goto :goto_0

    .line 564
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 565
    if-nez p1, :cond_0

    .line 566
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 584
    goto :goto_0

    .line 589
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 592
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 595
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 598
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 601
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 604
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 607
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 611
    goto :goto_0

    .line 542
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

    .line 566
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

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZF)I
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
    .param p30, "paragraphSpacing"    # F

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 626
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 627
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 628
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 630
    .local v24, "lines":[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 631
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 632
    .local v25, "nlen":I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 633
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/RichStaticLayout;->mLines:[I

    .line 635
    move-object/from16 v24, v19

    .line 637
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 638
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 643
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    .end local v25    # "nlen":I
    :cond_0
    if-eqz p11, :cond_3

    .line 644
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 645
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 646
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 647
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 649
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 650
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 651
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 649
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 655
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 659
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 660
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 661
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 662
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 665
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_5

    .line 666
    if-eqz p21, :cond_4

    .line 667
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichStaticLayout;->mTopPadding:I

    .line 670
    :cond_4
    if-eqz p20, :cond_5

    .line 671
    move/from16 p4, p6

    .line 674
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 675
    if-eqz p21, :cond_6

    .line 676
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichStaticLayout;->mBottomPadding:I

    .line 679
    :cond_6
    if-eqz p20, :cond_7

    .line 680
    move/from16 p5, p7

    .line 686
    :cond_7
    if-eqz p15, :cond_11

    .line 687
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 688
    .local v15, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_10

    .line 689
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 697
    .end local v15    # "ex":D
    .local v17, "extra":I
    :goto_2
    const/4 v2, 0x0

    cmpl-float v2, p30, v2

    if-eqz v2, :cond_8

    if-lez p3, :cond_8

    if-eqz p1, :cond_8

    const/16 v2, 0xa

    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_8

    .line 698
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p30

    float-to-double v15, v2

    .line 699
    .restart local v15    # "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_12

    .line 700
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 706
    .end local v15    # "ex":D
    :cond_8
    :goto_3
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 707
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 708
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 710
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 711
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 712
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 714
    if-eqz p14, :cond_9

    .line 715
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 717
    :cond_9
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 718
    sget-object v23, Landroid/text/RichStaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 722
    .local v23, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_13

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 729
    :goto_4
    if-eqz p25, :cond_f

    .line 732
    if-nez v22, :cond_14

    const/16 v18, 0x1

    .line 733
    .local v18, "firstLine":Z
    :goto_5
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_15

    const/4 v13, 0x1

    .line 734
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_6
    if-eqz p29, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_16

    const/4 v12, 0x1

    .line 736
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_b

    :cond_a
    if-eqz v18, :cond_c

    if-nez p29, :cond_c

    :cond_b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_e

    :cond_c
    if-nez v18, :cond_17

    if-nez v13, :cond_d

    if-nez p29, :cond_17

    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_e

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    :cond_e
    const/4 v14, 0x1

    .line 748
    .local v14, "doEllipsis":Z
    :goto_8
    if-eqz v14, :cond_18

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 749
    invoke-direct/range {v2 .. v12}, Landroid/text/RichStaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 768
    .end local v12    # "forceEllipsis":Z
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v14    # "doEllipsis":Z
    .end local v18    # "firstLine":Z
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    .line 769
    return p8

    .line 691
    .end local v17    # "extra":I
    .end local v23    # "linedirs":Landroid/text/Layout$Directions;
    .restart local v15    # "ex":D
    :cond_10
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17    # "extra":I
    goto/16 :goto_2

    .line 694
    .end local v15    # "ex":D
    .end local v17    # "extra":I
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "extra":I
    goto/16 :goto_2

    .line 702
    .restart local v15    # "ex":D
    :cond_12
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    goto/16 :goto_3

    .line 725
    .end local v15    # "ex":D
    .restart local v23    # "linedirs":Landroid/text/Layout$Directions;
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_4

    .line 732
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 733
    .restart local v18    # "firstLine":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 734
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 736
    .restart local v12    # "forceEllipsis":Z
    :cond_17
    const/4 v14, 0x0

    goto :goto_8

    .line 758
    .restart local v14    # "doEllipsis":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int v3, v3, v22

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    if-eqz v2, :cond_19

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int v3, v3, v22

    add-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 761
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int v3, v3, v22

    add-int/lit8 v3, v3, 0x4

    aget v2, v2, v3

    if-eqz v2, :cond_f

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int v3, v3, v22

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    goto/16 :goto_9
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1052
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;FZ)V
    .locals 135
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
    .param p13, "paragraphSpacing"    # F
    .param p14, "justified"    # Z

    .prologue
    .line 102
    if-eqz p14, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    array-length v5, v5

    sub-int v6, p3, p2

    if-gt v5, v6, :cond_1

    .line 104
    :cond_0
    sub-int v5, p3, p2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mWidths:[F

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mWidths:[F

    array-length v5, v5

    sub-int v6, p3, p2

    if-gt v5, v6, :cond_3

    .line 107
    :cond_2
    sub-int v5, p3, p2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/RichStaticLayout;->mWidths:[F

    .line 109
    :cond_3
    const-string/jumbo v5, "\u6d4b"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/RichStaticLayout;->mZhWordWidth:F

    .line 111
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichStaticLayout;->mBufStart:I

    .line 115
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v109

    .line 118
    .local v109, "isProductInternational":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    .line 120
    const/4 v13, 0x0

    .line 121
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_8

    :cond_5
    const/16 v20, 0x1

    .line 123
    .local v20, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 124
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 126
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v115, v0

    .line 128
    .local v115, "measured":Landroid/text/MeasuredText;
    const/16 v129, 0x0

    .line 129
    .local v129, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_6

    move-object/from16 v129, p1

    .line 130
    check-cast v129, Landroid/text/Spanned;

    .line 132
    :cond_6
    const/16 v94, 0x1

    .line 135
    .local v94, "DEFAULT_DIR":I
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_39

    .line 136
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v123

    .line 137
    .local v123, "paraEnd":I
    if-gez v123, :cond_9

    .line 138
    move/from16 v123, p3

    .line 142
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    add-int/lit8 v99, v5, 0x1

    .line 143
    .local v99, "firstWidthLineLimit":I
    move/from16 v98, p5

    .line 144
    .local v98, "firstWidth":I
    move/from16 v124, p5

    .line 146
    .local v124, "restWidth":I
    const/16 v16, 0x0

    .line 148
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v129, :cond_e

    .line 149
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v129

    move/from16 v1, v29

    move/from16 v2, v123

    invoke-static {v0, v1, v2, v5}, Landroid/text/RichStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/LeadingMarginSpan;

    .line 151
    .local v125, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v107, 0x0

    .local v107, "i":I
    :goto_3
    move-object/from16 v0, v125

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_a

    .line 152
    aget-object v112, v125, v107

    .line 153
    .local v112, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v125, v107

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v98, v98, v5

    .line 154
    aget-object v5, v125, v107

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v124, v124, v5

    .line 160
    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_7

    move-object/from16 v113, v112

    .line 161
    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 162
    .local v113, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v129

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichStaticLayout;->getLineForOffset(I)I

    move-result v114

    .line 163
    .local v114, "lmsFirstLine":I
    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v99, v114, v5

    .line 151
    .end local v113    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v114    # "lmsFirstLine":I
    :cond_7
    add-int/lit8 v107, v107, 0x1

    goto :goto_3

    .line 121
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v94    # "DEFAULT_DIR":I
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v107    # "i":I
    .end local v112    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v115    # "measured":Landroid/text/MeasuredText;
    .end local v123    # "paraEnd":I
    .end local v124    # "restWidth":I
    .end local v125    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v129    # "spanned":Landroid/text/Spanned;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 140
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v94    # "DEFAULT_DIR":I
    .restart local v115    # "measured":Landroid/text/MeasuredText;
    .restart local v123    # "paraEnd":I
    .restart local v129    # "spanned":Landroid/text/Spanned;
    :cond_9
    add-int/lit8 v123, v123, 0x1

    goto :goto_2

    .line 167
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v107    # "i":I
    .restart local v124    # "restWidth":I
    .restart local v125    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_a
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v129

    move/from16 v1, v29

    move/from16 v2, v123

    invoke-static {v0, v1, v2, v5}, Landroid/text/RichStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 169
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_e

    .line 170
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_c

    .line 172
    :cond_b
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 176
    :cond_c
    const/16 v107, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_e

    .line 177
    aget-object v5, v16, v107

    move-object/from16 v0, v129

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v116

    .line 179
    .local v116, "o":I
    move/from16 v0, v116

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/text/RichStaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichStaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v107

    .line 176
    :goto_5
    add-int/lit8 v107, v107, 0x1

    goto :goto_4

    .line 187
    :cond_d
    aput v13, v17, v107

    goto :goto_5

    .line 193
    .end local v107    # "i":I
    .end local v116    # "o":I
    .end local v125    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_e
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v123

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 194
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 195
    .local v27, "chs":[C
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 196
    .local v28, "widths":[F
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 197
    .local v21, "chdirs":[B
    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 198
    .local v22, "dir":I
    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 200
    .local v23, "easy":Z
    move/from16 v134, v98

    .line 202
    .local v134, "width":I
    const/16 v62, 0x0

    .line 204
    .local v62, "w":F
    move/from16 v7, v29

    .line 208
    .local v7, "here":I
    move/from16 v117, v29

    .line 209
    .local v117, "ok":I
    move/from16 v122, v62

    .line 210
    .local v122, "okWidth":F
    const/16 v118, 0x0

    .local v118, "okAscent":I
    const/16 v120, 0x0

    .local v120, "okDescent":I
    const/16 v121, 0x0

    .local v121, "okTop":I
    const/16 v119, 0x0

    .line 214
    .local v119, "okBottom":I
    move/from16 v100, v29

    .line 215
    .local v100, "fit":I
    move/from16 v101, v62

    .line 216
    .local v101, "fitWidth":F
    const/16 v39, 0x0

    .local v39, "fitAscent":I
    const/16 v40, 0x0

    .local v40, "fitDescent":I
    const/16 v41, 0x0

    .local v41, "fitTop":I
    const/16 v42, 0x0

    .line 218
    .local v42, "fitBottom":I
    const/16 v19, 0x0

    .line 219
    .local v19, "hasTabOrEmoji":Z
    const/16 v106, 0x0

    .line 220
    .local v106, "hasTab":Z
    const/16 v131, 0x0

    .line 222
    .local v131, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v128, v29

    .local v128, "spanStart":I
    :goto_6
    move/from16 v0, v128

    move/from16 v1, v123

    if-ge v0, v1, :cond_36

    .line 224
    if-nez v129, :cond_10

    .line 225
    move/from16 v126, v123

    .line 226
    .local v126, "spanEnd":I
    sub-int v127, v126, v128

    .line 227
    .local v127, "spanLen":I
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move/from16 v2, v127

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 238
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    .line 239
    .local v105, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v103, v0

    .line 240
    .local v103, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v102, v0

    .line 241
    .local v102, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    .line 243
    .local v104, "fmDescent":I
    move/from16 v111, v128

    .local v111, "j":I
    :goto_8
    move/from16 v0, v111

    move/from16 v1, v126

    if-ge v0, v1, :cond_f

    .line 247
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_11

    .line 222
    :cond_f
    :goto_9
    move/from16 v128, v126

    goto :goto_6

    .line 229
    .end local v102    # "fmAscent":I
    .end local v103    # "fmBottom":I
    .end local v104    # "fmDescent":I
    .end local v105    # "fmTop":I
    .end local v111    # "j":I
    .end local v126    # "spanEnd":I
    .end local v127    # "spanLen":I
    :cond_10
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move/from16 v1, v128

    move/from16 v2, v123

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v126

    .line 231
    .restart local v126    # "spanEnd":I
    sub-int v127, v126, v128

    .line 232
    .restart local v127    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move/from16 v1, v128

    move/from16 v2, v126

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/MetricAffectingSpan;

    .line 234
    .local v130, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move-object/from16 v1, v129

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    .end local v130    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v130, [Landroid/text/style/MetricAffectingSpan;

    .line 235
    .restart local v130    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move-object/from16 v2, v130

    move/from16 v3, v127

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_7

    .line 252
    .end local v130    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v102    # "fmAscent":I
    .restart local v103    # "fmBottom":I
    .restart local v104    # "fmDescent":I
    .restart local v105    # "fmTop":I
    .restart local v111    # "j":I
    :cond_11
    if-eqz p14, :cond_12

    .line 253
    const/4 v5, 0x0

    sub-int v6, v111, v29

    aget v6, v28, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_22

    .line 254
    sub-int v5, v111, p2

    if-gtz v5, :cond_21

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v6, v111, p2

    const/4 v14, 0x0

    aput v14, v5, v6

    .line 264
    :cond_12
    :goto_a
    sub-int v5, v111, v29

    aget-char v96, v27, v5

    .line 266
    .local v96, "c":C
    const/16 v5, 0xa

    move/from16 v0, v96

    if-ne v0, v5, :cond_23

    .line 321
    :cond_13
    :goto_b
    const/16 v5, 0x20

    move/from16 v0, v96

    if-eq v0, v5, :cond_14

    const/16 v5, 0x9

    move/from16 v0, v96

    if-eq v0, v5, :cond_14

    const/16 v5, 0x200b

    move/from16 v0, v96

    if-ne v0, v5, :cond_2b

    :cond_14
    const/16 v110, 0x1

    .line 329
    .local v110, "isSpaceOrTab":Z
    :goto_c
    move/from16 v0, v134

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_15

    if-eqz v110, :cond_2e

    if-eqz v109, :cond_2e

    .line 332
    :cond_15
    move/from16 v101, v62

    .line 333
    add-int/lit8 v100, v111, 0x1

    .line 335
    move/from16 v0, v105

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    .line 336
    move/from16 v41, v105

    .line 337
    :cond_16
    move/from16 v0, v102

    move/from16 v1, v39

    if-ge v0, v1, :cond_17

    .line 338
    move/from16 v39, v102

    .line 339
    :cond_17
    move/from16 v0, v104

    move/from16 v1, v40

    if-le v0, v1, :cond_18

    .line 340
    move/from16 v40, v104

    .line 341
    :cond_18
    move/from16 v0, v103

    move/from16 v1, v42

    if-le v0, v1, :cond_19

    .line 342
    move/from16 v42, v103

    .line 358
    :cond_19
    const/16 v108, 0x0

    .line 359
    .local v108, "isLineBreak":Z
    if-eqz v109, :cond_2d

    .line 360
    if-nez v110, :cond_1c

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_1a

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_1b

    :cond_1a
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_1c

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_2c

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/RichStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_2c

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/RichStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_1c
    const/16 v108, 0x1

    .line 373
    :goto_d
    if-eqz v108, :cond_20

    .line 374
    move/from16 v122, v62

    .line 375
    add-int/lit8 v117, v111, 0x1

    .line 377
    move/from16 v0, v41

    move/from16 v1, v121

    if-ge v0, v1, :cond_1d

    .line 378
    move/from16 v121, v41

    .line 379
    :cond_1d
    move/from16 v0, v39

    move/from16 v1, v118

    if-ge v0, v1, :cond_1e

    .line 380
    move/from16 v118, v39

    .line 381
    :cond_1e
    move/from16 v0, v40

    move/from16 v1, v120

    if-le v0, v1, :cond_1f

    .line 382
    move/from16 v120, v40

    .line 383
    :cond_1f
    move/from16 v0, v42

    move/from16 v1, v119

    if-le v0, v1, :cond_20

    .line 384
    move/from16 v119, v42

    .line 243
    .end local v108    # "isLineBreak":Z
    :cond_20
    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_8

    .line 257
    .end local v96    # "c":C
    .end local v110    # "isSpaceOrTab":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v6, v111, p2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v15, v111, p2

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    aput v14, v5, v6

    goto/16 :goto_a

    .line 260
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v6, v111, p2

    aput v62, v5, v6

    goto/16 :goto_a

    .line 268
    .restart local v96    # "c":C
    :cond_23
    const/16 v5, 0x9

    move/from16 v0, v96

    if-ne v0, v5, :cond_26

    .line 269
    if-nez v106, :cond_24

    .line 270
    const/16 v106, 0x1

    .line 271
    const/16 v19, 0x1

    .line 272
    if-eqz v129, :cond_24

    .line 274
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v129

    move/from16 v1, v29

    move/from16 v2, v123

    invoke-static {v0, v1, v2, v5}, Landroid/text/RichStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/TabStopSpan;

    .line 276
    .local v130, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v130

    array-length v5, v0

    if-lez v5, :cond_24

    .line 277
    new-instance v131, Landroid/text/Layout$TabStops;

    .end local v131    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v131

    move-object/from16 v1, v130

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 281
    .end local v130    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v131    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_24
    if-eqz v131, :cond_25

    .line 282
    move-object/from16 v0, v131

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_b

    .line 284
    :cond_25
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_b

    .line 286
    :cond_26
    const v5, 0xd800

    move/from16 v0, v96

    if-lt v0, v5, :cond_2a

    const v5, 0xdfff

    move/from16 v0, v96

    if-gt v0, v5, :cond_2a

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_2a

    .line 288
    sub-int v5, v111, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v97

    .line 290
    .local v97, "emoji":I
    sget v5, Landroid/text/RichStaticLayout;->MIN_EMOJI:I

    move/from16 v0, v97

    if-lt v0, v5, :cond_29

    sget v5, Landroid/text/RichStaticLayout;->MAX_EMOJI:I

    move/from16 v0, v97

    if-gt v0, v5, :cond_29

    .line 291
    sget-object v5, Landroid/text/RichStaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v95

    .line 293
    .local v95, "bm":Landroid/graphics/Bitmap;
    if-eqz v95, :cond_28

    .line 296
    if-nez v129, :cond_27

    .line 297
    move-object/from16 v132, p4

    .line 302
    .local v132, "whichPaint":Landroid/graphics/Paint;
    :goto_e
    invoke-virtual/range {v95 .. v95}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v132 .. v132}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v95 .. v95}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v133, v5, v6

    .line 304
    .local v133, "wid":F
    add-float v62, v62, v133

    .line 305
    const/16 v19, 0x1

    .line 306
    add-int/lit8 v111, v111, 0x1

    .line 308
    if-eqz p14, :cond_13

    .line 309
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    sub-int v6, v111, p2

    sub-float v14, v62, v133

    aput v14, v5, v6

    goto/16 :goto_b

    .line 299
    .end local v132    # "whichPaint":Landroid/graphics/Paint;
    .end local v133    # "wid":F
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichStaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v132, v0

    .restart local v132    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_e

    .line 312
    .end local v132    # "whichPaint":Landroid/graphics/Paint;
    :cond_28
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_b

    .line 315
    .end local v95    # "bm":Landroid/graphics/Bitmap;
    :cond_29
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_b

    .line 318
    .end local v97    # "emoji":I
    :cond_2a
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_b

    .line 321
    :cond_2b
    const/16 v110, 0x0

    goto/16 :goto_c

    .line 360
    .restart local v108    # "isLineBreak":Z
    .restart local v110    # "isSpaceOrTab":Z
    :cond_2c
    const/16 v108, 0x0

    goto/16 :goto_d

    .line 369
    :cond_2d
    sub-int v5, v111, v29

    sub-int v6, v7, v29

    sub-int v14, v126, v29

    const/4 v15, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v5, v6, v14, v15}, Landroid/text/MzTextUtils;->isLineBreak([CIIIZ)Z

    move-result v108

    goto/16 :goto_d

    .line 387
    .end local v108    # "isLineBreak":Z
    :cond_2e
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_32

    const/16 v34, 0x1

    .line 394
    .local v34, "moreChars":Z
    :goto_f
    if-eqz v110, :cond_2f

    if-nez v109, :cond_2f

    .line 395
    move/from16 v122, v101

    .line 396
    add-int/lit8 v117, v111, 0x1

    .line 397
    move/from16 v121, v41

    .line 398
    move/from16 v118, v39

    .line 399
    move/from16 v120, v40

    .line 400
    move/from16 v119, v42

    .line 404
    :cond_2f
    move/from16 v0, v117

    if-eq v0, v7, :cond_33

    .line 405
    move/from16 v8, v117

    .line 406
    .local v8, "endPos":I
    move/from16 v9, v118

    .line 407
    .local v9, "above":I
    move/from16 v10, v120

    .line 408
    .local v10, "below":I
    move/from16 v11, v121

    .line 409
    .local v11, "top":I
    move/from16 v12, v119

    .line 410
    .local v12, "bottom":I
    move/from16 v32, v122

    .local v32, "currentTextWidth":F
    :goto_10
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

    move/from16 v35, p13

    .line 427
    invoke-direct/range {v5 .. v35}, Landroid/text/RichStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZF)I

    move-result v13

    .line 433
    if-eqz p14, :cond_30

    .line 434
    move/from16 v0, v134

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, p2

    move/from16 v38, p3

    move/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v32

    invoke-direct/range {v35 .. v42}, Landroid/text/RichStaticLayout;->calculateCharsWidths(Ljava/lang/CharSequence;IIIIFF)V

    .line 437
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    :cond_30
    move v7, v8

    .line 438
    add-int/lit8 v111, v7, -0x1

    .line 439
    move/from16 v100, v7

    move/from16 v117, v7

    .line 440
    const/16 v62, 0x0

    .line 441
    const/16 v42, 0x0

    .restart local v42    # "fitBottom":I
    move/from16 v41, v42

    .restart local v41    # "fitTop":I
    move/from16 v40, v42

    .restart local v40    # "fitDescent":I
    move/from16 v39, v42

    .line 442
    .restart local v39    # "fitAscent":I
    const/16 v119, 0x0

    move/from16 v121, v119

    move/from16 v120, v119

    move/from16 v118, v119

    .line 444
    add-int/lit8 v99, v99, -0x1

    if-gtz v99, :cond_31

    .line 445
    move/from16 v134, v124

    .line 448
    :cond_31
    move/from16 v0, v128

    if-ge v7, v0, :cond_35

    .line 451
    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 452
    move/from16 v126, v7

    .line 453
    goto/16 :goto_9

    .line 387
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    :cond_32
    const/16 v34, 0x0

    goto :goto_f

    .line 411
    .restart local v34    # "moreChars":Z
    :cond_33
    move/from16 v0, v100

    if-eq v0, v7, :cond_34

    .line 412
    move/from16 v8, v100

    .line 413
    .restart local v8    # "endPos":I
    move/from16 v9, v39

    .line 414
    .restart local v9    # "above":I
    move/from16 v10, v40

    .line 415
    .restart local v10    # "below":I
    move/from16 v11, v41

    .line 416
    .restart local v11    # "top":I
    move/from16 v12, v42

    .line 417
    .restart local v12    # "bottom":I
    move/from16 v32, v101

    .restart local v32    # "currentTextWidth":F
    goto :goto_10

    .line 419
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_34
    add-int/lit8 v8, v7, 0x1

    .line 420
    .restart local v8    # "endPos":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 421
    .restart local v9    # "above":I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 422
    .restart local v10    # "below":I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 423
    .restart local v11    # "top":I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 424
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_10

    .line 456
    :cond_35
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_20

    goto/16 :goto_9

    .line 463
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v96    # "c":C
    .end local v102    # "fmAscent":I
    .end local v103    # "fmBottom":I
    .end local v104    # "fmDescent":I
    .end local v105    # "fmTop":I
    .end local v110    # "isSpaceOrTab":Z
    .end local v111    # "j":I
    .end local v126    # "spanEnd":I
    .end local v127    # "spanLen":I
    :cond_36
    move/from16 v0, v123

    if-eq v0, v7, :cond_38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_38

    .line 464
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_37

    .line 465
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 467
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 468
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 469
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 470
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 475
    :cond_37
    move/from16 v0, v123

    move/from16 v1, p3

    if-eq v0, v1, :cond_3d

    const/16 v64, 0x1

    :goto_11
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v38, v123

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

    move/from16 v65, p13

    invoke-direct/range {v35 .. v65}, Landroid/text/RichStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZF)I

    move-result v13

    .line 485
    if-eqz p14, :cond_38

    .line 486
    move/from16 v0, v134

    int-to-float v0, v0

    move/from16 v63, v0

    move-object/from16 v56, p0

    move-object/from16 v57, p1

    move/from16 v58, p2

    move/from16 v59, p3

    move/from16 v60, v7

    move/from16 v61, v123

    invoke-direct/range {v56 .. v63}, Landroid/text/RichStaticLayout;->calculateCharsWidths(Ljava/lang/CharSequence;IIIIFF)V

    .line 490
    :cond_38
    move/from16 v29, v123

    .line 492
    move/from16 v0, v123

    move/from16 v1, p3

    if-ne v0, v1, :cond_3e

    .line 496
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v100    # "fit":I
    .end local v101    # "fitWidth":F
    .end local v106    # "hasTab":Z
    .end local v117    # "ok":I
    .end local v118    # "okAscent":I
    .end local v119    # "okBottom":I
    .end local v120    # "okDescent":I
    .end local v121    # "okTop":I
    .end local v122    # "okWidth":F
    .end local v123    # "paraEnd":I
    .end local v124    # "restWidth":I
    .end local v128    # "spanStart":I
    .end local v131    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v134    # "width":I
    :cond_39
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3a

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3b

    :cond_3a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/RichStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_3b

    .line 500
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 502
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 504
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

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v79, v0

    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v80, v0

    move-object/from16 v0, v115

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

    move/from16 v93, p13

    invoke-direct/range {v63 .. v93}, Landroid/text/RichStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZF)I

    move-result v13

    .line 514
    if-eqz p14, :cond_3b

    .line 515
    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move/from16 v45, p2

    move/from16 v46, p3

    move/from16 v47, p3

    move/from16 v48, p3

    invoke-direct/range {v43 .. v50}, Landroid/text/RichStaticLayout;->calculateCharsWidths(Ljava/lang/CharSequence;IIIIFF)V

    .line 518
    :cond_3b
    if-eqz p14, :cond_3c

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/RichStaticLayout;->calculateCharsX(Ljava/lang/CharSequence;III)V

    .line 521
    :cond_3c
    return-void

    .line 475
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v100    # "fit":I
    .restart local v101    # "fitWidth":F
    .restart local v106    # "hasTab":Z
    .restart local v117    # "ok":I
    .restart local v118    # "okAscent":I
    .restart local v119    # "okBottom":I
    .restart local v120    # "okDescent":I
    .restart local v121    # "okTop":I
    .restart local v122    # "okWidth":F
    .restart local v123    # "paraEnd":I
    .restart local v124    # "restWidth":I
    .restart local v128    # "spanStart":I
    .restart local v131    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v134    # "width":I
    :cond_3d
    const/16 v64, 0x0

    goto/16 :goto_11

    .line 135
    :cond_3e
    move/from16 v29, v123

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Landroid/text/RichStaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getCharHorizontalX(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1349
    iget v1, p0, Landroid/text/RichStaticLayout;->mBufStart:I

    sub-int v0, p1, v1

    .line 1350
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1351
    :cond_0
    const/4 v1, 0x0

    .line 1353
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getCharWidth(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1357
    iget v1, p0, Landroid/text/RichStaticLayout;->mBufStart:I

    sub-int v0, p1, v1

    .line 1358
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1359
    :cond_0
    const/4 v1, 0x0

    .line 1361
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1025
    iget v0, p0, Landroid/text/RichStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1026
    const/4 v0, 0x0

    .line 1029
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1034
    iget v0, p0, Landroid/text/RichStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1035
    const/4 v0, 0x0

    .line 1038
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Landroid/text/RichStaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineCharsHorizontalX(I)[F
    .locals 6
    .param p1, "line"    # I

    .prologue
    .line 1365
    invoke-virtual {p0, p1}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v1

    .line 1366
    .local v1, "lineStart":I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 1367
    .local v0, "len":I
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsXTemp:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsXTemp:[F

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 1368
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsXTemp:[F

    .line 1370
    :cond_1
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mCharHorizontalX:[F

    iget v3, p0, Landroid/text/RichStaticLayout;->mBufStart:I

    sub-int v3, v1, v3

    iget-object v4, p0, Landroid/text/RichStaticLayout;->mLineCharsXTemp:[F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1371
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsXTemp:[F

    return-object v2
.end method

.method public getLineCharsWidths(I)[F
    .locals 6
    .param p1, "line"    # I

    .prologue
    .line 1375
    invoke-virtual {p0, p1}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v1

    .line 1376
    .local v1, "lineStart":I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 1377
    .local v0, "len":I
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsWidthsTemp:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsWidthsTemp:[F

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 1378
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsWidthsTemp:[F

    .line 1380
    :cond_1
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mWidths:[F

    iget v3, p0, Landroid/text/RichStaticLayout;->mBufStart:I

    sub-int v3, v1, v3

    iget-object v4, p0, Landroid/text/RichStaticLayout;->mLineCharsWidthsTemp:[F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLineCharsWidthsTemp:[F

    return-object v2
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/RichStaticLayout;->mColumns:I

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
    .line 970
    iget v0, p0, Landroid/text/RichStaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 985
    iget-object v1, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 986
    .local v0, "descent":I
    iget v1, p0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/RichStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 988
    invoke-virtual {p0}, Landroid/text/RichStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 990
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 949
    iget v1, p0, Landroid/text/RichStaticLayout;->mLineCount:I

    .line 950
    .local v1, "high":I
    const/4 v3, -0x1

    .line 952
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/RichStaticLayout;->mLines:[I

    .line 953
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 954
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 955
    .local v0, "guess":I
    iget v4, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 956
    move v1, v0

    goto :goto_0

    .line 958
    :cond_0
    move v3, v0

    goto :goto_0

    .line 961
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 962
    const/4 v3, 0x0

    .line 964
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 995
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/RichStaticLayout;->mColumns:I

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
    .line 975
    iget-object v1, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 976
    .local v0, "top":I
    iget v1, p0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/RichStaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/RichStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 978
    invoke-virtual {p0}, Landroid/text/RichStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/text/RichStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/RichStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Landroid/text/RichStaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1047
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/RichStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1048
    return-void
.end method
