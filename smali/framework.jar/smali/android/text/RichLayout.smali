.class public abstract Landroid/text/RichLayout;
.super Landroid/text/Layout;
.source "RichLayout.java"


# instance fields
.field protected mJustified:Z

.field protected mParagraphSpacing:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 27
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroid/text/RichLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFFZ)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFFZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F
    .param p8, "paragraphSpacing"    # F
    .param p9, "justified"    # Z

    .prologue
    .line 20
    invoke-direct/range {p0 .. p7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 21
    iput p8, p0, Landroid/text/RichLayout;->mParagraphSpacing:F

    .line 22
    iput-boolean p9, p0, Landroid/text/RichLayout;->mJustified:Z

    .line 23
    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 432
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v16

    .line 433
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v15

    .line 434
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 436
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 437
    add-int/lit8 v15, v15, -0x1

    .line 439
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 440
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 441
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 443
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 444
    move/from16 v18, v15

    .line 446
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 447
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 448
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 450
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 451
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/RichLayout;->getHorizontal(IZIZ)F

    move-result v11

    .line 452
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/RichLayout;->getHorizontal(IZIZ)F

    move-result v12

    .line 454
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 455
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 457
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 439
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 461
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private getHorizontal(IZIZ)F
    .locals 11
    .param p1, "offset"    # I
    .param p2, "secondary"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p3}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v3

    .line 97
    .local v3, "lineEnd":I
    invoke-virtual {p0, p3}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v4

    .line 98
    .local v4, "lineStart":I
    invoke-virtual {p0, p3}, Landroid/text/RichLayout;->getParagraphDirection(I)I

    move-result v0

    .line 99
    .local v0, "dir":I
    invoke-virtual {p0, p3}, Landroid/text/RichLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 100
    .local v1, "dirs":Landroid/text/Layout$Directions;
    iget-object v8, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 101
    .local v8, "runs":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_12

    .line 102
    aget v9, v8, v2

    add-int v7, v9, v4

    .line 103
    .local v7, "runStart":I
    add-int/lit8 v9, v2, 0x1

    aget v9, v8, v9

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v7, v9

    .line 104
    .local v6, "runLimit":I
    if-le v6, v3, :cond_0

    .line 105
    move v6, v3

    .line 108
    :cond_0
    add-int/lit8 v9, v2, 0x1

    aget v9, v8, v9

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    .line 109
    .local v5, "runIsRtl":Z
    :goto_1
    if-le p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    .line 110
    if-eqz v5, :cond_2

    .line 111
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    .line 171
    .end local v5    # "runIsRtl":Z
    .end local v6    # "runLimit":I
    .end local v7    # "runStart":I
    :goto_2
    return v9

    .line 108
    .restart local v6    # "runLimit":I
    .restart local v7    # "runStart":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 113
    .restart local v5    # "runIsRtl":Z
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto :goto_2

    .line 116
    :cond_3
    if-ne p1, v7, :cond_b

    .line 117
    const/4 v9, 0x1

    if-ne v0, v9, :cond_7

    .line 118
    if-eqz v5, :cond_5

    .line 119
    if-eqz p2, :cond_4

    .line 120
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_2

    .line 122
    :cond_4
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto :goto_2

    .line 125
    :cond_5
    if-eqz p2, :cond_6

    if-lez v2, :cond_6

    .line 126
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto :goto_2

    .line 132
    :cond_7
    if-eqz v5, :cond_9

    .line 133
    if-eqz p2, :cond_8

    if-lez v2, :cond_8

    .line 134
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {p0, v10}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_2

    .line 136
    :cond_8
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_2

    .line 139
    :cond_9
    if-eqz p2, :cond_a

    .line 140
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto :goto_2

    .line 142
    :cond_a
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {p0, v10}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_2

    .line 147
    :cond_b
    if-ne p1, v3, :cond_11

    if-ne p1, v6, :cond_11

    .line 148
    const/4 v9, 0x1

    if-ne v0, v9, :cond_e

    .line 149
    if-eqz v5, :cond_d

    .line 150
    if-eqz p2, :cond_c

    .line 151
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto :goto_2

    .line 153
    :cond_c
    invoke-virtual {p0, v7}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    invoke-virtual {p0, v7}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_2

    .line 156
    :cond_d
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {p0, v10}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto/16 :goto_2

    .line 159
    :cond_e
    if-eqz v5, :cond_f

    .line 160
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto/16 :goto_2

    .line 162
    :cond_f
    if-eqz p2, :cond_10

    .line 163
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {p0, v10}, Landroid/text/RichLayout;->getWordWidth(I)F

    move-result v10

    add-float/2addr v9, v10

    goto/16 :goto_2

    .line 165
    :cond_10
    invoke-virtual {p0, v7}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto/16 :goto_2

    .line 101
    :cond_11
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 171
    .end local v5    # "runIsRtl":Z
    .end local v6    # "runLimit":I
    .end local v7    # "runStart":I
    :cond_12
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharHorizontalX(I)F

    move-result v9

    goto/16 :goto_2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "secondary"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineForOffset(I)I

    move-result v0

    .line 92
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/RichLayout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getLineExtent(IZ)F
    .locals 2
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    const/4 v1, 0x0

    .line 426
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v0

    .line 427
    .local v0, "end":I
    :goto_0
    invoke-direct {p0, v0, v1, p1, v1}, Landroid/text/RichLayout;->getHorizontal(IZIZ)F

    move-result v1

    return v1

    .line 426
    .end local v0    # "end":I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineVisibleEnd(I)I

    move-result v0

    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    .line 262
    :cond_0
    :goto_1
    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharWidth(I)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 263
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    move v0, p1

    .line 265
    goto :goto_0
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    .prologue
    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->isSpanned()Z

    move-result v14

    if-nez v14, :cond_1

    .line 356
    const/4 v6, 0x0

    .line 387
    :cond_0
    :goto_0
    return v6

    .line 358
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Spanned;

    .line 360
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v5

    .line 361
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v4

    .line 362
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 364
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/RichLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 366
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_2

    .line 367
    const/4 v6, 0x0

    goto :goto_0

    .line 370
    :cond_2
    const/4 v6, 0x0

    .line 372
    .local v6, "margin":I
    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 375
    .local v3, "isFirstParaLine":Z
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_0

    .line 376
    aget-object v8, v12, v2

    .line 377
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    move v13, v3

    .line 378
    .local v13, "useFirstLineMargin":Z
    instance-of v14, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 379
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 380
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/RichLayout;->getLineForOffset(I)I

    move-result v10

    .local v10, "spanLine":I
    move-object v14, v8

    .line 381
    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 382
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_6

    const/4 v13, 0x1

    .line 384
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_4
    :goto_3
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 372
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    .end local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 382
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "isFirstParaLine":Z
    .restart local v7    # "spStart":I
    .restart local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v5, :cond_0

    .line 531
    invoke-super/range {p0 .. p3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 583
    :goto_0
    return-void

    .line 535
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v26

    .line 536
    .local v26, "previousLineEnd":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 537
    .local v11, "paint":Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 538
    .local v6, "buf":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/text/RichTextLine;->obtain()Landroid/text/RichTextLine;

    move-result-object v27

    .line 539
    .local v27, "rTl":Landroid/text/RichTextLine;
    instance-of v0, v6, Landroid/text/Spanned;

    move/from16 v28, v0

    .line 541
    .local v28, "spannedText":Z
    move/from16 v20, p2

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p3

    if-gt v0, v1, :cond_7

    .line 542
    move/from16 v13, v26

    .line 543
    .local v13, "start":I
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v26

    .line 544
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineVisibleEnd(I)I

    move-result v14

    .line 546
    .local v14, "end":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineTop(I)I

    move-result v25

    .line 547
    .local v25, "ltop":I
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichLayout;->getLineTop(I)I

    move-result v23

    .line 548
    .local v23, "lbottom":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineDescent(I)I

    move-result v5

    sub-int v22, v23, v5

    .line 549
    .local v22, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getParagraphDirection(I)I

    move-result v15

    .line 550
    .local v15, "dir":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    .line 551
    .local v16, "directions":Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineContainsTab(I)Z

    move-result v17

    .line 553
    .local v17, "hasTabOrEmoji":Z
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineCharsHorizontalX(I)[F

    move-result-object v19

    .line 554
    .local v19, "charsX":[F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineCharsWidths(I)[F

    move-result-object v18

    .line 556
    .local v18, "charsW":[F
    sget-object v5, Landroid/text/RichLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v16

    if-ne v0, v5, :cond_6

    if-nez v28, :cond_6

    if-nez v17, :cond_6

    .line 557
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v5

    sub-int v24, v5, v13

    .line 558
    .local v24, "len":I
    sub-int v5, v14, v13

    move/from16 v0, v24

    if-le v0, v5, :cond_1

    sub-int v24, v14, v13

    .line 559
    :cond_1
    if-lez v24, :cond_3

    if-eqz v18, :cond_3

    if-eqz v19, :cond_3

    move-object/from16 v0, v18

    array-length v5, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_3

    move-object/from16 v0, v19

    array-length v5, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_3

    .line 560
    const/4 v7, 0x0

    .line 561
    .local v7, "startPos":I
    move/from16 v21, v13

    .local v21, "j":I
    :goto_2
    sub-int v5, v21, v13

    move/from16 v0, v24

    if-ge v5, v0, :cond_3

    .line 562
    :goto_3
    sub-int v5, v21, v13

    move/from16 v0, v24

    if-ge v5, v0, :cond_2

    sub-int v5, v21, v13

    aget v5, v18, v5

    const/4 v8, 0x0

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_2

    .line 563
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 565
    :cond_2
    sub-int v5, v21, v13

    move/from16 v0, v24

    if-lt v5, v0, :cond_4

    .line 541
    .end local v7    # "startPos":I
    .end local v21    # "j":I
    .end local v24    # "len":I
    :cond_3
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 568
    .restart local v7    # "startPos":I
    .restart local v21    # "j":I
    .restart local v24    # "len":I
    :cond_4
    move/from16 v7, v21

    .line 569
    add-int/lit8 v21, v21, 0x1

    .line 570
    :goto_5
    sub-int v5, v21, v13

    move/from16 v0, v24

    if-ge v5, v0, :cond_5

    sub-int v5, v21, v13

    aget v5, v18, v5

    const/4 v8, 0x0

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_5

    .line 571
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 573
    :cond_5
    add-int/lit8 v21, v21, -0x1

    .line 574
    add-int/lit8 v8, v21, 0x1

    sub-int v5, v7, v13

    aget v9, v19, v5

    move/from16 v0, v22

    int-to-float v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 561
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .end local v7    # "startPos":I
    .end local v21    # "j":I
    .end local v24    # "len":I
    :cond_6
    move-object/from16 v10, v27

    move-object v12, v6

    .line 578
    invoke-virtual/range {v10 .. v19}, Landroid/text/RichTextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;Z[F[F)V

    .line 579
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/RichTextLine;->draw(Landroid/graphics/Canvas;III)V

    goto :goto_4

    .line 582
    .end local v13    # "start":I
    .end local v14    # "end":I
    .end local v15    # "dir":I
    .end local v16    # "directions":Landroid/text/Layout$Directions;
    .end local v17    # "hasTabOrEmoji":Z
    .end local v18    # "charsW":[F
    .end local v19    # "charsX":[F
    .end local v22    # "lbaseline":I
    .end local v23    # "lbottom":I
    .end local v25    # "ltop":I
    :cond_7
    invoke-static/range {v27 .. v27}, Landroid/text/RichTextLine;->recycle(Landroid/text/RichTextLine;)Landroid/text/RichTextLine;

    goto/16 :goto_0
.end method

.method public abstract getCharHorizontalX(I)F
.end method

.method public abstract getCharWidth(I)F
.end method

.method public abstract getLineCharsHorizontalX(I)[F
.end method

.method public abstract getLineCharsWidths(I)[F
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 283
    iget-boolean v6, p0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v6, :cond_1

    .line 284
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    .line 309
    :cond_0
    :goto_0
    return v5

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphDirection(I)I

    move-result v1

    .line 288
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 290
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-eq v0, v6, :cond_0

    .line 292
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 293
    if-ne v1, v7, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 297
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    .line 298
    invoke-virtual {p0}, Landroid/text/RichLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 299
    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    .line 300
    if-eq v1, v7, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/text/RichLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 305
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphLeft(I)I

    move-result v2

    .line 306
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphRight(I)I

    move-result v4

    .line 307
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 309
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 4
    .param p1, "line"    # I

    .prologue
    .line 395
    iget-boolean v2, p0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v2, :cond_1

    .line 396
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v1

    .line 401
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/RichLayout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 400
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/RichLayout;->getLineExtent(IZ)F

    move-result v1

    .line 401
    .local v1, "signedExtent":F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 318
    iget-boolean v5, p0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v5, :cond_0

    .line 319
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    .line 344
    :goto_0
    return v5

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphDirection(I)I

    move-result v1

    .line 323
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 325
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 326
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 327
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 328
    if-ne v1, v6, :cond_2

    .line 329
    invoke-virtual {p0}, Landroid/text/RichLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 332
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_4

    .line 333
    invoke-virtual {p0}, Landroid/text/RichLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    .line 334
    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_6

    .line 335
    if-ne v1, v6, :cond_5

    .line 336
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 338
    :cond_5
    invoke-virtual {p0}, Landroid/text/RichLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    .line 340
    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphLeft(I)I

    move-result v2

    .line 341
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getParagraphRight(I)I

    move-result v4

    .line 342
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 344
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineWidth(I)F
    .locals 4
    .param p1, "line"    # I

    .prologue
    .line 409
    iget-boolean v2, p0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v2, :cond_1

    .line 410
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 415
    :cond_0
    :goto_0
    return v1

    .line 413
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/RichLayout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 414
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/RichLayout;->getLineExtent(IZ)F

    move-result v1

    .line 415
    .local v1, "signedExtent":F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/RichLayout;->mJustified:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 180
    invoke-super/range {p0 .. p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 253
    :cond_0
    :goto_0
    return v4

    .line 182
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 183
    .local v13, "max":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v14

    .line 184
    .local v14, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 186
    .local v6, "dirs":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 187
    add-int/lit8 v13, v13, 0x1

    .line 189
    :cond_2
    move v4, v14

    .line 190
    .local v4, "best":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/RichLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 192
    .local v5, "bestdist":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_b

    .line 193
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 194
    .local v9, "here":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 195
    .local v17, "there":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x4000000

    and-int v18, v18, v19

    if-eqz v18, :cond_4

    const/16 v16, -0x1

    .line 197
    .local v16, "swap":I
    :goto_2
    move/from16 v0, v17

    if-le v0, v13, :cond_3

    .line 198
    move/from16 v17, v13

    .line 199
    :cond_3
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, "high":I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 201
    .local v12, "low":I
    :goto_3
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 202
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 203
    .local v8, "guess":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/RichLayout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 205
    .local v2, "adguess":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/RichLayout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_5

    .line 206
    move v10, v8

    goto :goto_3

    .line 195
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    :cond_4
    const/16 v16, 0x1

    goto :goto_2

    .line 208
    .restart local v2    # "adguess":I
    .restart local v8    # "guess":I
    .restart local v10    # "high":I
    .restart local v12    # "low":I
    .restart local v16    # "swap":I
    :cond_5
    move v12, v8

    goto :goto_3

    .line 211
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    :cond_6
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 212
    add-int/lit8 v12, v9, 0x1

    .line 214
    :cond_7
    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 215
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/RichLayout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/RichLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 219
    .local v7, "dist":F
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 220
    .local v3, "aft":I
    move/from16 v0, v17

    if-ge v3, v0, :cond_8

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 223
    .local v15, "other":F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_8

    .line 224
    move v7, v15

    .line 225
    move v12, v3

    .line 229
    .end local v15    # "other":F
    :cond_8
    cmpg-float v18, v7, v5

    if-gez v18, :cond_9

    .line 230
    move v5, v7

    .line 231
    move v4, v12

    .line 235
    .end local v3    # "aft":I
    .end local v7    # "dist":F
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/RichLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 237
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_a

    .line 238
    move v5, v7

    .line 239
    move v4, v9

    .line 192
    :cond_a
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_1

    .line 243
    .end local v7    # "dist":F
    .end local v9    # "here":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    .end local v17    # "there":I
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/RichLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 245
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gtz v18, :cond_c

    .line 246
    move v5, v7

    .line 247
    move v4, v13

    .line 249
    :cond_c
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_0

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/RichLayout;->getOffsetAtStartOf(I)I

    move-result v4

    goto/16 :goto_0
.end method

.method public getParagraphSpacing()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Landroid/text/RichLayout;->mParagraphSpacing:F

    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/RichLayout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/RichLayout;->getHorizontal(IZZ)F

    move-result v0

    goto :goto_0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/RichLayout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/text/RichLayout;->getHorizontal(IZZ)F

    move-result v0

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 470
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/RichLayout;->mJustified:Z

    if-nez v2, :cond_1

    .line 471
    invoke-super/range {p0 .. p3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 477
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 480
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 481
    move/from16 v17, p2

    .line 482
    .local v17, "temp":I
    move/from16 p2, p1

    .line 483
    move/from16 p1, v17

    .line 486
    .end local v17    # "temp":I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/text/RichLayout;->getLineForOffset(I)I

    move-result v3

    .line 487
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineForOffset(I)I

    move-result v15

    .line 489
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineTop(I)I

    move-result v6

    .line 490
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getLineBottom(I)I

    move-result v7

    .line 492
    .local v7, "bottom":I
    if-ne v3, v15, :cond_3

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 493
    invoke-direct/range {v2 .. v8}, Landroid/text/RichLayout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 495
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichLayout;->getWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v18, v0

    .line 497
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/RichLayout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 501
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 507
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_5

    .line 508
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineTop(I)I

    move-result v6

    .line 509
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/RichLayout;->getLineBottom(I)I

    move-result v7

    .line 510
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 507
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 504
    .end local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 513
    .restart local v16    # "i":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getLineTop(I)I

    move-result v6

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getLineBottom(I)I

    move-result v7

    .line 516
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/RichLayout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 520
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 522
    :cond_6
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/RichLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public getWordWidth(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0}, Landroid/text/RichLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 275
    :goto_0
    return v0

    .line 272
    :cond_0
    :goto_1
    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharWidth(I)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 273
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 275
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/RichLayout;->getCharWidth(I)F

    move-result v0

    goto :goto_0
.end method

.method public isJustified()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/text/RichLayout;->mJustified:Z

    return v0
.end method
