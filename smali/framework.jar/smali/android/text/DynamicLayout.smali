.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 752
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 754
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 63
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 80
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 20
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 99
    if-nez p10, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 106
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 107
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 109
    if-eqz p10, :cond_4

    .line 110
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 111
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 112
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 119
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 121
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 131
    if-eqz p10, :cond_0

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 134
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 135
    move/from16 v0, p11

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 136
    move-object/from16 v0, p10

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 137
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 146
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p10, :cond_5

    .line 147
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 148
    .local v19, "start":[I
    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    aput v3, v19, v2

    .line 153
    :goto_2
    const/4 v2, 0x1

    new-array v13, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v13, v2

    .line 156
    .local v13, "dirs":[Landroid/text/Layout$Directions;
    new-instance v15, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v15}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 157
    .local v15, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 160
    iget v10, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 161
    .local v10, "asc":I
    iget v12, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 163
    .local v12, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v19, v2

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v19, v2

    .line 165
    const/4 v2, 0x2

    aput v12, v19, v2

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 168
    const/4 v2, 0x1

    sub-int v3, v12, v10

    aput v3, v19, v2

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 174
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 176
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 178
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v17, p1

    .line 181
    check-cast v17, Landroid/text/Spannable;

    .line 182
    .local v17, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 183
    .local v18, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 184
    aget-object v2, v18, v16

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 183
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 99
    .end local v10    # "asc":I
    .end local v12    # "desc":I
    .end local v13    # "dirs":[Landroid/text/Layout$Directions;
    .end local v15    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v16    # "i":I
    .end local v17    # "sp":Landroid/text/Spannable;
    .end local v18    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v19    # "start":[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 114
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 115
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 150
    :cond_5
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .restart local v19    # "start":[I
    goto/16 :goto_2

    .line 189
    .restart local v10    # "asc":I
    .restart local v12    # "desc":I
    .restart local v13    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v15    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v16    # "i":I
    .restart local v17    # "sp":Landroid/text/Spannable;
    .restart local v18    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    const/4 v2, 0x0

    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/RichDynamicLayout$ChangeWatcher;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/RichDynamicLayout$ChangeWatcher;

    .line 191
    .local v11, "cwSpans":[Landroid/text/RichDynamicLayout$ChangeWatcher;
    const/16 v16, 0x0

    :goto_4
    array-length v2, v11

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    .line 192
    aget-object v2, v11, v16

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 191
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 195
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 199
    .end local v11    # "cwSpans":[Landroid/text/RichDynamicLayout$ChangeWatcher;
    .end local v16    # "i":I
    .end local v17    # "sp":Landroid/text/Spannable;
    .end local v18    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_8
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/text/DynamicLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 413
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v1

    .line 415
    .local v1, "line":I
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_1

    .line 417
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 418
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v1, v3, v4

    .line 419
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    .line 424
    .local v2, "previousBlockEndLine":I
    if-le v1, v2, :cond_0

    .line 425
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    iget-object v4, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 427
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    new-array v0, v3, [I

    .line 428
    .local v0, "blockEndLines":[I
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 431
    .end local v0    # "blockEndLines":[I
    :cond_2
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v1, v3, v4

    .line 432
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto :goto_0
.end method

.method private createBlocks()V
    .locals 5

    .prologue
    .line 385
    const/16 v1, 0x190

    .line 386
    .local v1, "offset":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 387
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 390
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 391
    if-gez v1, :cond_0

    .line 392
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 401
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 403
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 396
    add-int/lit16 v1, v1, 0x190

    goto :goto_0

    .line 405
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 40
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 378
    :goto_0
    return-void

    .line 205
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 206
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v30

    .line 210
    .local v30, "len":I
    const/16 v5, 0xa

    add-int/lit8 v6, p2, -0x1

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v24

    .line 211
    .local v24, "find":I
    if-gez v24, :cond_4

    .line 212
    const/16 v24, 0x0

    .line 217
    :goto_1
    sub-int v20, p2, v24

    .line 218
    .local v20, "diff":I
    add-int p3, p3, v20

    .line 219
    add-int p4, p4, v20

    .line 220
    sub-int p2, p2, v20

    .line 225
    const/16 v5, 0xa

    add-int v6, p2, p4

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v31

    .line 226
    .local v31, "look":I
    if-gez v31, :cond_5

    .line 227
    move/from16 v31, v30

    .line 231
    :goto_2
    add-int v5, p2, p4

    sub-int v18, v31, v5

    .line 232
    .local v18, "change":I
    add-int p3, p3, v18

    .line 233
    add-int p4, p4, v18

    .line 237
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object/from16 v34, v4

    .line 238
    check-cast v34, Landroid/text/Spanned;

    .line 242
    .local v34, "sp":Landroid/text/Spanned;
    :cond_1
    const/16 v16, 0x0

    .line 244
    .local v16, "again":Z
    add-int v5, p2, p4

    const-class v6, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-interface {v0, v1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    .line 247
    .local v25, "force":[Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_3
    move-object/from16 v0, v25

    array-length v5, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_6

    .line 248
    aget-object v5, v25, v27

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v35

    .line 249
    .local v35, "st":I
    aget-object v5, v25, v27

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    .line 251
    .local v21, "en":I
    move/from16 v0, v35

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 252
    const/16 v16, 0x1

    .line 254
    sub-int v20, p2, v35

    .line 255
    add-int p3, p3, v20

    .line 256
    add-int p4, p4, v20

    .line 257
    sub-int p2, p2, v20

    .line 260
    :cond_2
    add-int v5, p2, p4

    move/from16 v0, v21

    if-le v0, v5, :cond_3

    .line 261
    const/16 v16, 0x1

    .line 263
    add-int v5, p2, p4

    sub-int v20, v21, v5

    .line 264
    add-int p3, p3, v20

    .line 265
    add-int p4, p4, v20

    .line 247
    :cond_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 214
    .end local v16    # "again":Z
    .end local v18    # "change":I
    .end local v20    # "diff":I
    .end local v21    # "en":I
    .end local v25    # "force":[Ljava/lang/Object;
    .end local v27    # "i":I
    .end local v31    # "look":I
    .end local v34    # "sp":Landroid/text/Spanned;
    .end local v35    # "st":I
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 229
    .restart local v20    # "diff":I
    .restart local v31    # "look":I
    :cond_5
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 268
    .restart local v16    # "again":Z
    .restart local v18    # "change":I
    .restart local v25    # "force":[Ljava/lang/Object;
    .restart local v27    # "i":I
    .restart local v34    # "sp":Landroid/text/Spanned;
    :cond_6
    if-nez v16, :cond_1

    .line 273
    .end local v16    # "again":Z
    .end local v25    # "force":[Ljava/lang/Object;
    .end local v27    # "i":I
    .end local v34    # "sp":Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v36

    .line 274
    .local v36, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v37

    .line 276
    .local v37, "startv":I
    add-int v5, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v22

    .line 277
    .local v22, "endline":I
    add-int v5, p2, p4

    move/from16 v0, v30

    if-ne v5, v0, :cond_8

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v22

    .line 279
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v23

    .line 280
    .local v23, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v5

    move/from16 v0, v22

    if-ne v0, v5, :cond_f

    const/16 v29, 0x1

    .line 286
    .local v29, "islast":Z
    :goto_4
    sget-object v6, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 287
    :try_start_0
    sget-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 288
    .local v3, "reflowed":Landroid/text/StaticLayout;
    const/4 v5, 0x0

    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 289
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-nez v3, :cond_10

    .line 292
    new-instance v3, Landroid/text/StaticLayout;

    .end local v3    # "reflowed":Landroid/text/StaticLayout;
    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    .restart local v3    # "reflowed":Landroid/text/StaticLayout;
    :goto_5
    add-int v6, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 301
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v32

    .line 307
    .local v32, "n":I
    add-int v5, p2, p4

    move/from16 v0, v30

    if-eq v5, v0, :cond_9

    add-int/lit8 v5, v32, -0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    add-int v6, p2, p4

    if-ne v5, v6, :cond_9

    .line 308
    add-int/lit8 v32, v32, -0x1

    .line 311
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v6, v22, v36

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v6, v22, v36

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 316
    move/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v26

    .line 317
    .local v26, "ht":I
    const/16 v39, 0x0

    .local v39, "toppad":I
    const/16 v17, 0x0

    .line 319
    .local v17, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_a

    if-nez v36, :cond_a

    .line 320
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v39

    .line 321
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 322
    sub-int v26, v26, v39

    .line 324
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_b

    if-eqz v29, :cond_b

    .line 325
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v17

    .line 326
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 327
    add-int v26, v26, v17

    .line 330
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x0

    sub-int v7, p4, p3

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x1

    sub-int v7, v37, v23

    add-int v7, v7, v26

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 337
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_11

    .line 338
    const/4 v5, 0x5

    new-array v0, v5, [I

    move-object/from16 v28, v0

    .line 339
    .local v28, "ints":[I
    const/4 v5, 0x3

    const/high16 v6, -0x80000000

    aput v6, v28, v5

    .line 344
    :goto_6
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/Layout$Directions;

    move-object/from16 v33, v0

    .line 346
    .local v33, "objects":[Landroid/text/Layout$Directions;
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_7
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 347
    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x1e

    or-int/2addr v7, v5

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/high16 v5, 0x20000000

    :goto_8
    or-int/2addr v5, v7

    aput v5, v28, v6

    .line 351
    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    add-int v38, v5, v37

    .line 352
    .local v38, "top":I
    if-lez v27, :cond_c

    .line 353
    sub-int v38, v38, v39

    .line 354
    :cond_c
    const/4 v5, 0x1

    aput v38, v28, v5

    .line 356
    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v19

    .line 357
    .local v19, "desc":I
    add-int/lit8 v5, v32, -0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_d

    .line 358
    add-int v19, v19, v17

    .line 360
    :cond_d
    const/4 v5, 0x2

    aput v19, v28, v5

    .line 361
    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    aput-object v6, v33, v5

    .line 363
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_e

    .line 364
    const/4 v5, 0x3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v6

    aput v6, v28, v5

    .line 365
    const/4 v5, 0x4

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v6

    aput v6, v28, v5

    .line 368
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v6, v36, v27

    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v6, v36, v27

    move-object/from16 v0, v33

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 346
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 280
    .end local v3    # "reflowed":Landroid/text/StaticLayout;
    .end local v17    # "botpad":I
    .end local v19    # "desc":I
    .end local v26    # "ht":I
    .end local v27    # "i":I
    .end local v28    # "ints":[I
    .end local v29    # "islast":Z
    .end local v32    # "n":I
    .end local v33    # "objects":[Landroid/text/Layout$Directions;
    .end local v38    # "top":I
    .end local v39    # "toppad":I
    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 289
    .restart local v29    # "islast":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 294
    .restart local v3    # "reflowed":Landroid/text/StaticLayout;
    :cond_10
    invoke-virtual {v3}, Landroid/text/StaticLayout;->prepare()V

    goto/16 :goto_5

    .line 341
    .restart local v17    # "botpad":I
    .restart local v26    # "ht":I
    .restart local v32    # "n":I
    .restart local v39    # "toppad":I
    :cond_11
    const/4 v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v28, v0

    .restart local v28    # "ints":[I
    goto/16 :goto_6

    .line 347
    .restart local v27    # "i":I
    .restart local v33    # "objects":[Landroid/text/Layout$Directions;
    :cond_12
    const/4 v5, 0x0

    goto :goto_8

    .line 372
    :cond_13
    add-int/lit8 v5, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 374
    sget-object v6, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 375
    :try_start_2
    sput-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 376
    invoke-virtual {v3}, Landroid/text/StaticLayout;->finish()V

    .line 377
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 707
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 708
    const/4 v0, 0x0

    .line 711
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 698
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 622
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 612
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 632
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 617
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 607
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 627
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public isSingleLineRtoL()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 720
    invoke-virtual {p0, v1}, Landroid/text/DynamicLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

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

.method setBlocksDataForTest([I[II)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    const/4 v2, 0x0

    .line 558
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 559
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 560
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 563
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 597
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 598
    return-void
.end method

.method updateBlocks(III)V
    .locals 25
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 457
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/4 v11, -0x1

    .line 462
    .local v11, "firstBlock":I
    const/4 v13, -0x1

    .line 463
    .local v13, "lastBlock":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    .line 465
    move v11, v12

    .line 469
    :cond_2
    move v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    .line 471
    move v13, v12

    .line 475
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v14, v20, v13

    .line 477
    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_9

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    const/4 v9, 0x1

    .line 479
    .local v9, "createBlockBefore":Z
    :goto_4
    if-lez p3, :cond_b

    const/4 v7, 0x1

    .line 480
    .local v7, "createBlock":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v20, v20, v13

    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    const/4 v8, 0x1

    .line 482
    .local v8, "createBlockAfter":Z
    :goto_6
    const/16 v18, 0x0

    .line 483
    .local v18, "numAddedBlocks":I
    if-eqz v9, :cond_4

    add-int/lit8 v18, v18, 0x1

    .line 484
    :cond_4
    if-eqz v7, :cond_5

    add-int/lit8 v18, v18, 0x1

    .line 485
    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v18, v18, 0x1

    .line 487
    :cond_6
    sub-int v20, v13, v11

    add-int/lit8 v19, v20, 0x1

    .line 488
    .local v19, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    add-int v20, v20, v18

    sub-int v16, v20, v19

    .line 490
    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_d

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, -0x1

    aput v22, v20, v21

    .line 494
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto/16 :goto_0

    .line 463
    .end local v7    # "createBlock":Z
    .end local v8    # "createBlockAfter":Z
    .end local v9    # "createBlockBefore":Z
    .end local v14    # "lastBlockEndLine":I
    .end local v16    # "newNumberOfBlocks":I
    .end local v18    # "numAddedBlocks":I
    .end local v19    # "numRemovedBlocks":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 469
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 477
    .restart local v14    # "lastBlockEndLine":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, -0x1

    aget v20, v20, v21

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 479
    .restart local v9    # "createBlockBefore":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 480
    .restart local v7    # "createBlock":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 498
    .restart local v8    # "createBlockAfter":Z
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v18    # "numAddedBlocks":I
    .restart local v19    # "numRemovedBlocks":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    .line 499
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v17

    .line 500
    .local v17, "newSize":I
    move/from16 v0, v17

    new-array v4, v0, [I

    .line 501
    .local v4, "blockEndLines":[I
    move/from16 v0, v17

    new-array v6, v0, [I

    .line 502
    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    add-int v22, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    add-int v22, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 509
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 517
    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    .end local v17    # "newSize":I
    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 519
    sub-int v20, p2, p1

    add-int/lit8 v20, v20, 0x1

    sub-int v10, p3, v20

    .line 520
    .local v10, "deltaLines":I
    if-eqz v10, :cond_f

    .line 523
    add-int v15, v11, v18

    .line 524
    .local v15, "newFirstChangedBlock":I
    move v12, v15

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_10

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v21, v20, v12

    add-int v21, v21, v10

    aput v21, v20, v12

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v12

    .line 524
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 511
    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v22, v0

    add-int v23, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v22, v0

    add-int v23, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 530
    .restart local v10    # "deltaLines":I
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 532
    .restart local v15    # "newFirstChangedBlock":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 534
    move v5, v11

    .line 535
    .local v5, "blockIndex":I
    if-eqz v9, :cond_11

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    aput v21, v20, v5

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v5

    .line 538
    add-int/lit8 v5, v5, 0x1

    .line 541
    :cond_11
    if-eqz v7, :cond_12

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int v21, p1, p3

    add-int/lit8 v21, v21, -0x1

    aput v21, v20, v5

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v5

    .line 544
    add-int/lit8 v5, v5, 0x1

    .line 547
    :cond_12
    if-eqz v8, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int v21, v14, v10

    aput v21, v20, v5

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v5

    goto/16 :goto_0
.end method