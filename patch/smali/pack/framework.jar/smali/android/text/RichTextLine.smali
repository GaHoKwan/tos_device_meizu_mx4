.class Landroid/text/RichTextLine;
.super Ljava/lang/Object;
.source "RichTextLine.java"


# static fields
.field private static final DEBUG:Z

.field private static final sCached:[Landroid/text/RichTextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mCharsW:[F

.field private mCharsX:[F

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/RichTextLine;

    sput-object v0, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/RichTextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 36
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 38
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 40
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/RichTextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIZ)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "y"    # I
    .param p6, "runIsRtl"    # Z

    .prologue
    .line 432
    const/16 v20, 0x0

    .line 433
    .local v20, "delta":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/RichTextLine;->mCharsValid:Z

    if-nez v1, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichTextLine;->mStart:I

    move/from16 v20, v0

    .line 436
    :cond_0
    if-eqz p6, :cond_1

    const/4 v9, 0x1

    .line 437
    .local v9, "dir":I
    :goto_0
    sub-int v22, p4, p3

    .line 438
    .local v22, "len":I
    if-lez v22, :cond_3

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, "startPos":I
    move/from16 v21, p3

    .local v21, "j":I
    :goto_1
    sub-int v1, v21, p3

    move/from16 v0, v22

    if-ge v1, v0, :cond_3

    .line 441
    :goto_2
    sub-int v1, v21, p3

    move/from16 v0, v22

    if-ge v1, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsW:[F

    aget v1, v1, v21

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 442
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 436
    .end local v3    # "startPos":I
    .end local v9    # "dir":I
    .end local v21    # "j":I
    .end local v22    # "len":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 444
    .restart local v3    # "startPos":I
    .restart local v9    # "dir":I
    .restart local v21    # "j":I
    .restart local v22    # "len":I
    :cond_2
    sub-int v1, v21, p3

    move/from16 v0, v22

    if-lt v1, v0, :cond_4

    .line 460
    .end local v3    # "startPos":I
    .end local v21    # "j":I
    :cond_3
    return-void

    .line 447
    .restart local v3    # "startPos":I
    .restart local v21    # "j":I
    :cond_4
    move/from16 v3, v21

    .line 448
    add-int/lit8 v21, v21, 0x1

    .line 449
    :goto_3
    sub-int v1, v21, p3

    move/from16 v0, v22

    if-ge v1, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsW:[F

    aget v1, v1, v21

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 450
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 452
    :cond_5
    add-int/lit8 v21, v21, -0x1

    .line 453
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/RichTextLine;->mCharsValid:Z

    if-eqz v1, :cond_6

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mChars:[C

    add-int/lit8 v1, v21, 0x1

    sub-int v4, v1, v3

    add-int/lit8 v1, v21, 0x1

    sub-int v6, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsX:[F

    aget v7, v1, v3

    move/from16 v0, p5

    int-to-float v8, v0

    move-object/from16 v1, p1

    move v5, v3

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 440
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 456
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/RichTextLine;->mText:Ljava/lang/CharSequence;

    add-int v12, v3, v20

    add-int/lit8 v1, v21, 0x1

    add-int v13, v1, v20

    add-int v14, v3, v20

    add-int/lit8 v1, v21, 0x1

    add-int v15, v1, v20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsX:[F

    aget v16, v1, v3

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v10, p1

    move/from16 v18, v9

    move-object/from16 v19, p2

    invoke-virtual/range {v10 .. v19}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;III)V
    .locals 10
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I

    .prologue
    .line 322
    iget-object v0, p0, Landroid/text/RichTextLine;->mCharsX:[F

    aget v5, v0, p3

    .line 323
    .local v5, "x":F
    iget v0, p0, Landroid/text/RichTextLine;->mStart:I

    add-int v3, v0, p3

    .line 324
    .local v3, "textStart":I
    iget v0, p0, Landroid/text/RichTextLine;->mStart:I

    add-int v4, v0, p4

    .line 326
    .local v4, "textLimit":I
    if-eqz p6, :cond_0

    .line 327
    iget-object v2, p0, Landroid/text/RichTextLine;->mText:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object/from16 v1, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 330
    :cond_0
    return-void
.end method

.method private handleRun(IIZLandroid/graphics/Canvas;III)V
    .locals 23
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "runIsRtl"    # Z
    .param p4, "c"    # Landroid/graphics/Canvas;
    .param p5, "top"    # I
    .param p6, "y"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 350
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/RichTextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 356
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 357
    move/from16 v5, p2

    .local v5, "mlimit":I
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 358
    invoke-direct/range {v2 .. v10}, Landroid/text/RichTextLine;->handleText(Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;III)V

    goto :goto_0

    .line 362
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichTextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/RichTextLine;->mStart:I

    add-int v8, v8, p2

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichTextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/RichTextLine;->mStart:I

    add-int v8, v8, p2

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 370
    move/from16 v9, p1

    .local v9, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v9, v0, :cond_0

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/RichTextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 372
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichTextLine;->mStart:I

    add-int v6, v6, p2

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    sub-int v19, v2, v4

    .line 376
    .local v19, "inext":I
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 378
    .restart local v5    # "mlimit":I
    const/4 v7, 0x0

    .line 380
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v12, 0x0

    .local v12, "j":I
    move/from16 v20, v12

    .end local v12    # "j":I
    .local v20, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v20

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v20

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v4, v9

    if-gt v2, v4, :cond_4

    .line 380
    :cond_3
    :goto_3
    add-int/lit8 v12, v20, 0x1

    .end local v20    # "j":I
    .restart local v12    # "j":I
    move/from16 v20, v12

    .end local v12    # "j":I
    .restart local v20    # "j":I
    goto :goto_2

    .line 385
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v22, v2, v20

    .line 386
    .local v22, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v22

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_5

    move-object/from16 v7, v22

    .line 387
    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_3

    .line 391
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_3

    .line 395
    .end local v22    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_6
    if-eqz v7, :cond_8

    move-object/from16 v6, p0

    move-object v8, v3

    move v10, v5

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    .line 396
    invoke-direct/range {v6 .. v15}, Landroid/text/RichTextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;III)V

    move/from16 v12, v20

    .line 370
    .end local v20    # "j":I
    .restart local v12    # "j":I
    :cond_7
    move/from16 v9, v19

    goto/16 :goto_1

    .line 400
    .end local v12    # "j":I
    .restart local v20    # "j":I
    :cond_8
    move v12, v9

    .end local v20    # "j":I
    .restart local v12    # "j":I
    :goto_4
    if-ge v12, v5, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    sub-int v13, v2, v4

    .line 404
    .local v13, "jnext":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 405
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v4, v13

    if-ge v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr v4, v12

    if-gt v2, v4, :cond_a

    .line 405
    :cond_9
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 410
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v22, v2, v21

    .line 411
    .local v22, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_6

    .end local v22    # "span":Landroid/text/style/CharacterStyle;
    :cond_b
    move-object/from16 v10, p0

    move-object v11, v3

    move/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    .line 414
    invoke-direct/range {v10 .. v18}, Landroid/text/RichTextLine;->handleText(Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;III)V

    .line 400
    move v12, v13

    goto :goto_4
.end method

.method private handleText(Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;III)V
    .locals 17
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I

    .prologue
    .line 253
    sub-int v16, p3, p2

    .line 255
    .local v16, "runLen":I
    if-nez v16, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v15, 0x0

    .line 260
    .local v15, "ret":F
    move/from16 v11, p2

    .local v11, "i":I
    :goto_1
    move/from16 v0, p3

    if-ge v11, v0, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsW:[F

    aget v1, v1, v11

    add-float/2addr v15, v1

    .line 260
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 264
    :cond_2
    if-eqz p5, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsX:[F

    aget v2, v1, p2

    .line 266
    .local v2, "x":F
    if-eqz p4, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsW:[F

    aget v1, v1, p2

    add-float/2addr v2, v1

    .line 268
    sub-float/2addr v2, v15

    .line 271
    :cond_3
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v1, :cond_4

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v13

    .line 273
    .local v13, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v14

    .line 275
    .local v14, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 276
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    move/from16 v0, p6

    int-to-float v3, v0

    add-float v4, v2, v15

    move/from16 v0, p8

    int-to-float v5, v0

    move-object/from16 v1, p5

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 283
    .end local v13    # "previousColor":I
    .end local v14    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_4
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v1, :cond_5

    .line 285
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v1, v1, p7

    int-to-float v1, v1

    const v4, 0x3de38e39

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v3, v1, v4

    .line 287
    .local v3, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v13

    .line 288
    .restart local v13    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v14

    .line 289
    .restart local v14    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v12

    .line 291
    .local v12, "previousAntiAlias":Z
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 294
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 295
    add-float v4, v2, v15

    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v5, v3, v1

    move-object/from16 v1, p5

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 302
    .end local v3    # "underlineTop":F
    .end local v12    # "previousAntiAlias":Z
    .end local v13    # "previousColor":I
    .end local v14    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, p7, v1

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/text/RichTextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIZ)V

    goto/16 :goto_0
.end method

.method static obtain()Landroid/text/RichTextLine;
    .locals 5

    .prologue
    .line 55
    sget-object v3, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    monitor-enter v3

    .line 56
    :try_start_0
    sget-object v2, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 57
    sget-object v2, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    aget-object v1, v2, v0

    .line 59
    .local v1, "tl":Landroid/text/RichTextLine;
    sget-object v2, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 60
    monitor-exit v3

    .line 68
    :goto_0
    return-object v1

    .line 63
    .end local v1    # "tl":Landroid/text/RichTextLine;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    new-instance v1, Landroid/text/RichTextLine;

    invoke-direct {v1}, Landroid/text/RichTextLine;-><init>()V

    .line 68
    .restart local v1    # "tl":Landroid/text/RichTextLine;
    goto :goto_0

    .line 63
    .end local v1    # "tl":Landroid/text/RichTextLine;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/RichTextLine;)Landroid/text/RichTextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/RichTextLine;

    .prologue
    const/4 v3, 0x0

    .line 79
    iput-object v3, p0, Landroid/text/RichTextLine;->mText:Ljava/lang/CharSequence;

    .line 80
    iput-object v3, p0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    .line 81
    iput-object v3, p0, Landroid/text/RichTextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 83
    iget-object v1, p0, Landroid/text/RichTextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 84
    iget-object v1, p0, Landroid/text/RichTextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 85
    iget-object v1, p0, Landroid/text/RichTextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 86
    iput-object v3, p0, Landroid/text/RichTextLine;->mCharsW:[F

    .line 87
    iput-object v3, p0, Landroid/text/RichTextLine;->mCharsX:[F

    .line 89
    sget-object v2, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    monitor-enter v2

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 91
    sget-object v1, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 92
    sget-object v1, Landroid/text/RichTextLine;->sCached:[Landroid/text/RichTextLine;

    aput-object p0, v1, v0

    .line 96
    :cond_0
    monitor-exit v2

    .line 97
    return-object v3

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method ascent(I)F
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 470
    iget-object v6, p0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_0

    .line 471
    iget-object v6, p0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 485
    :goto_0
    return v6

    .line 474
    :cond_0
    iget v6, p0, Landroid/text/RichTextLine;->mStart:I

    add-int/2addr p1, v6

    .line 475
    iget-object v6, p0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 476
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 477
    iget-object v6, p0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0

    .line 480
    :cond_1
    iget-object v5, p0, Landroid/text/RichTextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 481
    .local v5, "wp":Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 482
    move-object v0, v4

    .local v0, "arr$":[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 483
    .local v3, "span":Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 485
    .end local v3    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;III)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "y"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/RichTextLine;->mHasTabs:Z

    if-nez v1, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v5, :cond_1

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichTextLine;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/text/RichTextLine;->handleRun(IIZLandroid/graphics/Canvas;III)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v5, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v5, :cond_2

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/RichTextLine;->mLen:I

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/text/RichTextLine;->handleRun(IIZLandroid/graphics/Canvas;III)V

    goto :goto_0

    .line 184
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    .line 185
    .local v17, "runs":[I
    const/4 v13, 0x0

    .line 187
    .local v13, "emojiRect":Landroid/graphics/RectF;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v14, v1, :cond_0

    .line 188
    aget v16, v17, v14

    .line 189
    .local v16, "runStart":I
    add-int/lit8 v1, v14, 0x1

    aget v1, v17, v1

    const v5, 0x3ffffff

    and-int/2addr v1, v5

    add-int v15, v16, v1

    .line 190
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/RichTextLine;->mLen:I

    if-le v15, v1, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/RichTextLine;->mLen:I

    .line 193
    :cond_3
    add-int/lit8 v1, v14, 0x1

    aget v1, v17, v1

    const/high16 v5, 0x4000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 195
    .local v4, "runIsRtl":Z
    :goto_2
    move/from16 v2, v16

    .line 196
    .local v2, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/RichTextLine;->mHasTabs:Z

    if-eqz v1, :cond_9

    move/from16 v3, v16

    .local v3, "j":I
    :goto_3
    if-gt v3, v15, :cond_d

    .line 197
    const/4 v12, 0x0

    .line 198
    .local v12, "codept":I
    const/4 v10, 0x0

    .line 200
    .local v10, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/RichTextLine;->mHasTabs:Z

    if-eqz v1, :cond_4

    if-ge v3, v15, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mChars:[C

    aget-char v12, v1, v3

    .line 202
    const v1, 0xd800

    if-lt v12, v1, :cond_4

    const v1, 0xdc00

    if-ge v12, v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v15, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mChars:[C

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 204
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v12, v1, :cond_a

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v12, v1, :cond_a

    .line 205
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v1, v12}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 213
    :cond_4
    if-eq v3, v15, :cond_5

    const/16 v1, 0x9

    if-eq v12, v1, :cond_5

    if-eqz v10, :cond_7

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 214
    invoke-direct/range {v1 .. v8}, Landroid/text/RichTextLine;->handleRun(IIZLandroid/graphics/Canvas;III)V

    .line 215
    const/16 v1, 0x9

    if-ne v12, v1, :cond_b

    .line 231
    :cond_6
    :goto_4
    add-int/lit8 v2, v3, 0x1

    .line 196
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 193
    .end local v2    # "segstart":I
    .end local v3    # "j":I
    .end local v4    # "runIsRtl":Z
    .end local v10    # "bm":Landroid/graphics/Bitmap;
    .end local v12    # "codept":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .restart local v2    # "segstart":I
    .restart local v4    # "runIsRtl":Z
    :cond_9
    move v3, v15

    .line 196
    goto :goto_3

    .line 206
    .restart local v3    # "j":I
    .restart local v10    # "bm":Landroid/graphics/Bitmap;
    .restart local v12    # "codept":I
    :cond_a
    const v1, 0xffff

    if-le v12, v1, :cond_4

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    goto :goto_5

    .line 217
    :cond_b
    if-eqz v10, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/RichTextLine;->mCharsX:[F

    aget v20, v1, v3

    .line 219
    .local v20, "x":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/RichTextLine;->ascent(I)F

    move-result v11

    .line 220
    .local v11, "bmAscent":F
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v9, v1

    .line 221
    .local v9, "bitmapHeight":F
    neg-float v1, v11

    div-float v18, v1, v9

    .line 222
    .local v18, "scale":F
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v19, v1, v18

    .line 224
    .local v19, "width":F
    if-nez v13, :cond_c

    .line 225
    new-instance v13, Landroid/graphics/RectF;

    .end local v13    # "emojiRect":Landroid/graphics/RectF;
    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 227
    .restart local v13    # "emojiRect":Landroid/graphics/RectF;
    :cond_c
    move/from16 v0, p3

    int-to-float v1, v0

    add-float/2addr v1, v11

    add-float v5, v20, v19

    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0, v1, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 228
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v1, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 187
    .end local v9    # "bitmapHeight":F
    .end local v10    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "bmAscent":F
    .end local v12    # "codept":I
    .end local v18    # "scale":F
    .end local v19    # "width":F
    .end local v20    # "x":F
    :cond_d
    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_1
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;Z[F[F)V
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "charsW"    # [F
    .param p9, "charsX"    # [F

    .prologue
    .line 115
    iput-object p1, p0, Landroid/text/RichTextLine;->mPaint:Landroid/text/TextPaint;

    .line 116
    iput-object p2, p0, Landroid/text/RichTextLine;->mText:Ljava/lang/CharSequence;

    .line 117
    iput p3, p0, Landroid/text/RichTextLine;->mStart:I

    .line 118
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/RichTextLine;->mLen:I

    .line 119
    iput p5, p0, Landroid/text/RichTextLine;->mDir:I

    .line 120
    iput-object p6, p0, Landroid/text/RichTextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 121
    iget-object v7, p0, Landroid/text/RichTextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 122
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 124
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/RichTextLine;->mHasTabs:Z

    .line 125
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 129
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    .line 130
    iget-object v7, p0, Landroid/text/RichTextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/RichTextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 131
    iget-object v7, p0, Landroid/text/RichTextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 134
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/RichTextLine;->mCharsValid:Z

    .line 136
    iget-boolean v7, p0, Landroid/text/RichTextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 137
    iget-object v7, p0, Landroid/text/RichTextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/RichTextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/RichTextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 138
    :cond_3
    iget v7, p0, Landroid/text/RichTextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v7

    new-array v7, v7, [C

    iput-object v7, p0, Landroid/text/RichTextLine;->mChars:[C

    .line 140
    :cond_4
    iget-object v7, p0, Landroid/text/RichTextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 141
    if-eqz v3, :cond_8

    .line 147
    iget-object v1, p0, Landroid/text/RichTextLine;->mChars:[C

    .line 148
    .local v1, "chars":[C
    move v4, p3

    .local v4, "i":I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 149
    iget-object v7, p0, Landroid/text/RichTextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 150
    .local v5, "inext":I
    iget-object v7, p0, Landroid/text/RichTextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 152
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 153
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, "j":I
    sub-int v2, v5, p3

    .local v2, "e":I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 154
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 131
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 134
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 148
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 160
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/RichTextLine;->mCharsW:[F

    .line 161
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/text/RichTextLine;->mCharsX:[F

    .line 162
    return-void
.end method
