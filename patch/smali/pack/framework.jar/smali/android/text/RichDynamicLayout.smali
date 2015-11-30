.class public Landroid/text/RichDynamicLayout;
.super Landroid/text/RichLayout;
.source "RichDynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/RichDynamicLayout$PackedFloatVector;,
        Landroid/text/RichDynamicLayout$ChangeWatcher;
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

.field private static sStaticLayout:Landroid/text/RichStaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mBufStart:I

.field private mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

.field private mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mLineCharsWidthsTemp:[F

.field private mLineCharsXTemp:[F

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

.field private mWatcher:Landroid/text/RichDynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Landroid/text/RichStaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/RichStaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/RichDynamicLayout;->sStaticLayout:Landroid/text/RichStaticLayout;

    .line 709
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/RichDynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;IFZ)V
    .locals 29
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
    .param p12, "paragraphSpacing"    # F
    .param p13, "justified"    # Z

    .prologue
    .line 43
    if-nez p10, :cond_3

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p12

    move/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Landroid/text/RichLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFFZ)V

    .line 26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/RichDynamicLayout;->mBufStart:I

    .line 50
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/RichDynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 51
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/RichDynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->isJustified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v23

    .line 55
    .local v23, "need":I
    :goto_1
    new-instance v2, Landroid/text/RichDynamicLayout$PackedFloatVector;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v2, v0, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;-><init>(Landroid/text/RichDynamicLayout;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

    .line 56
    new-instance v2, Landroid/text/RichDynamicLayout$PackedFloatVector;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v2, v0, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;-><init>(Landroid/text/RichDynamicLayout;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

    .line 59
    .end local v23    # "need":I
    :cond_0
    if-eqz p10, :cond_6

    .line 60
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 61
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mEllipsizedWidth:I

    .line 62
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/RichDynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 69
    :goto_2
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 71
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/RichDynamicLayout;->mIncludePad:Z

    .line 81
    if-eqz p10, :cond_1

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Layout$Ellipsizer;

    .line 84
    .local v18, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 85
    move/from16 v0, p11

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 86
    move-object/from16 v0, p10

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 87
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/RichDynamicLayout;->mEllipsize:Z

    .line 96
    .end local v18    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_1
    if-eqz p10, :cond_7

    .line 97
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v26, v0

    .line 98
    .local v26, "start":[I
    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    aput v3, v26, v2

    .line 103
    :goto_3
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/Layout$Directions;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/text/RichDynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v17, v2

    .line 105
    .local v17, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    .line 106
    .local v19, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 107
    .local v13, "asc":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v16, v0

    .line 109
    .local v16, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v26, v2

    .line 110
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v26, v2

    .line 111
    const/4 v2, 0x2

    aput v16, v26, v2

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 114
    const/4 v2, 0x1

    sub-int v3, v16, v13

    aput v3, v26, v2

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/RichDynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 122
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_c

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mWatcher:Landroid/text/RichDynamicLayout$ChangeWatcher;

    if-nez v2, :cond_2

    .line 124
    new-instance v2, Landroid/text/RichDynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/RichDynamicLayout$ChangeWatcher;-><init>(Landroid/text/RichDynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mWatcher:Landroid/text/RichDynamicLayout$ChangeWatcher;

    :cond_2
    move-object/from16 v24, p1

    .line 127
    check-cast v24, Landroid/text/Spannable;

    .line 128
    .local v24, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v24 .. v24}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/RichDynamicLayout$ChangeWatcher;

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/text/RichDynamicLayout$ChangeWatcher;

    .line 129
    .local v25, "spans":[Landroid/text/RichDynamicLayout$ChangeWatcher;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    .line 130
    aget-object v2, v25, v20

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 129
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 43
    .end local v13    # "asc":I
    .end local v16    # "desc":I
    .end local v17    # "dirs":[Landroid/text/Layout$Directions;
    .end local v19    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "i":I
    .end local v24    # "sp":Landroid/text/Spannable;
    .end local v25    # "spans":[Landroid/text/RichDynamicLayout$ChangeWatcher;
    .end local v26    # "start":[I
    :cond_3
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 54
    :cond_5
    const/16 v23, 0xa

    goto/16 :goto_1

    .line 64
    :cond_6
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 65
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mEllipsizedWidth:I

    .line 66
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/RichDynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_2

    .line 100
    :cond_7
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v26, v0

    .restart local v26    # "start":[I
    goto/16 :goto_3

    .line 132
    .restart local v13    # "asc":I
    .restart local v16    # "desc":I
    .restart local v17    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v19    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "i":I
    .restart local v24    # "sp":Landroid/text/Spannable;
    .restart local v25    # "spans":[Landroid/text/RichDynamicLayout$ChangeWatcher;
    :cond_8
    const/4 v14, 0x0

    .line 133
    .local v14, "changeWatcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v28

    .line 134
    .local v28, "subClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v28, :cond_9

    move-object/from16 v0, v28

    array-length v2, v0

    if-lez v2, :cond_9

    .line 135
    move-object/from16 v12, v28

    .local v12, "arr$":[Ljava/lang/Class;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    aget-object v27, v12, v21

    .line 136
    .local v27, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v27, :cond_a

    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 137
    move-object/from16 v14, v27

    .line 142
    .end local v12    # "arr$":[Ljava/lang/Class;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v27    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    if-eqz v14, :cond_b

    .line 143
    const/4 v2, 0x0

    invoke-interface/range {v24 .. v24}, Landroid/text/Spannable;->length()I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v3, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    .line 144
    .local v15, "cwSpans":[Ljava/lang/Object;
    const/16 v20, 0x0

    :goto_6
    array-length v2, v15

    move/from16 v0, v20

    if-ge v0, v2, :cond_b

    .line 145
    aget-object v2, v15, v20

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 144
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 135
    .end local v15    # "cwSpans":[Ljava/lang/Object;
    .restart local v12    # "arr$":[Ljava/lang/Class;
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    .restart local v27    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 148
    .end local v12    # "arr$":[Ljava/lang/Class;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v27    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/RichDynamicLayout;->mWatcher:Landroid/text/RichDynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 152
    .end local v14    # "changeWatcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "i":I
    .end local v24    # "sp":Landroid/text/Spannable;
    .end local v25    # "spans":[Landroid/text/RichDynamicLayout$ChangeWatcher;
    .end local v28    # "subClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    return-void
.end method

.method static synthetic access$000(Landroid/text/RichDynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/text/RichDynamicLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/RichDynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 379
    invoke-virtual {p0, p1}, Landroid/text/RichDynamicLayout;->getLineForOffset(I)I

    move-result v1

    .line 381
    .local v1, "line":I
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_1

    .line 383
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    .line 384
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    aput v1, v3, v4

    .line 385
    iget v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    .line 390
    .local v2, "previousBlockEndLine":I
    if-le v1, v2, :cond_0

    .line 391
    iget v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    iget-object v4, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 393
    iget v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    new-array v0, v3, [I

    .line 394
    .local v0, "blockEndLines":[I
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iput-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    .line 397
    .end local v0    # "blockEndLines":[I
    :cond_2
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    aput v1, v3, v4

    .line 398
    iget v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    goto :goto_0
.end method

.method private createBlocks()V
    .locals 5

    .prologue
    .line 351
    const/16 v1, 0x190

    .line 352
    .local v1, "offset":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    .line 353
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 356
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 357
    if-gez v1, :cond_0

    .line 358
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/RichDynamicLayout;->addBlockAtOffset(I)V

    .line 367
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 369
    iget-object v3, p0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/RichDynamicLayout;->addBlockAtOffset(I)V

    .line 362
    add-int/lit16 v1, v1, 0x190

    goto :goto_0

    .line 371
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 45
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 344
    :goto_0
    return-void

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/RichDynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 159
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v35

    .line 163
    .local v35, "len":I
    const/16 v5, 0xa

    add-int/lit8 v6, p2, -0x1

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v27

    .line 164
    .local v27, "find":I
    if-gez v27, :cond_4

    .line 165
    const/16 v27, 0x0

    .line 170
    :goto_1
    sub-int v23, p2, v27

    .line 171
    .local v23, "diff":I
    add-int p3, p3, v23

    .line 172
    add-int p4, p4, v23

    .line 173
    sub-int p2, p2, v23

    .line 178
    const/16 v5, 0xa

    add-int v6, p2, p4

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v36

    .line 179
    .local v36, "look":I
    if-gez v36, :cond_5

    .line 180
    move/from16 v36, v35

    .line 184
    :goto_2
    add-int v5, p2, p4

    sub-int v20, v36, v5

    .line 185
    .local v20, "change":I
    add-int p3, p3, v20

    .line 186
    add-int p4, p4, v20

    .line 190
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object/from16 v39, v4

    .line 191
    check-cast v39, Landroid/text/Spanned;

    .line 195
    .local v39, "sp":Landroid/text/Spanned;
    :cond_1
    const/16 v18, 0x0

    .line 197
    .local v18, "again":Z
    add-int v5, p2, p4

    const-class v6, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v39

    move/from16 v1, p2

    invoke-interface {v0, v1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v28

    .line 200
    .local v28, "force":[Ljava/lang/Object;
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_3
    move-object/from16 v0, v28

    array-length v5, v0

    move/from16 v0, v30

    if-ge v0, v5, :cond_6

    .line 201
    aget-object v5, v28, v30

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 202
    .local v40, "st":I
    aget-object v5, v28, v30

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v24

    .line 204
    .local v24, "en":I
    move/from16 v0, v40

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 205
    const/16 v18, 0x1

    .line 207
    sub-int v23, p2, v40

    .line 208
    add-int p3, p3, v23

    .line 209
    add-int p4, p4, v23

    .line 210
    sub-int p2, p2, v23

    .line 213
    :cond_2
    add-int v5, p2, p4

    move/from16 v0, v24

    if-le v0, v5, :cond_3

    .line 214
    const/16 v18, 0x1

    .line 216
    add-int v5, p2, p4

    sub-int v23, v24, v5

    .line 217
    add-int p3, p3, v23

    .line 218
    add-int p4, p4, v23

    .line 200
    :cond_3
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 167
    .end local v18    # "again":Z
    .end local v20    # "change":I
    .end local v23    # "diff":I
    .end local v24    # "en":I
    .end local v28    # "force":[Ljava/lang/Object;
    .end local v30    # "i":I
    .end local v36    # "look":I
    .end local v39    # "sp":Landroid/text/Spanned;
    .end local v40    # "st":I
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 182
    .restart local v23    # "diff":I
    .restart local v36    # "look":I
    :cond_5
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 221
    .restart local v18    # "again":Z
    .restart local v20    # "change":I
    .restart local v28    # "force":[Ljava/lang/Object;
    .restart local v30    # "i":I
    .restart local v39    # "sp":Landroid/text/Spanned;
    :cond_6
    if-nez v18, :cond_1

    .line 226
    .end local v18    # "again":Z
    .end local v28    # "force":[Ljava/lang/Object;
    .end local v30    # "i":I
    .end local v39    # "sp":Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/RichDynamicLayout;->getLineForOffset(I)I

    move-result v41

    .line 227
    .local v41, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/text/RichDynamicLayout;->getLineTop(I)I

    move-result v42

    .line 229
    .local v42, "startv":I
    add-int v5, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichDynamicLayout;->getLineForOffset(I)I

    move-result v25

    .line 230
    .local v25, "endline":I
    add-int v5, p2, p4

    move/from16 v0, v35

    if-ne v5, v0, :cond_8

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getLineCount()I

    move-result v25

    .line 232
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/RichDynamicLayout;->getLineTop(I)I

    move-result v26

    .line 233
    .local v26, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getLineCount()I

    move-result v5

    move/from16 v0, v25

    if-ne v0, v5, :cond_11

    const/16 v34, 0x1

    .line 239
    .local v34, "islast":Z
    :goto_4
    sget-object v6, Landroid/text/RichDynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 240
    :try_start_0
    sget-object v3, Landroid/text/RichDynamicLayout;->sStaticLayout:Landroid/text/RichStaticLayout;

    .line 241
    .local v3, "reflowed":Landroid/text/RichStaticLayout;
    const/4 v5, 0x0

    sput-object v5, Landroid/text/RichDynamicLayout;->sStaticLayout:Landroid/text/RichStaticLayout;

    .line 242
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    if-nez v3, :cond_12

    .line 245
    new-instance v3, Landroid/text/RichStaticLayout;

    .end local v3    # "reflowed":Landroid/text/RichStaticLayout;
    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/text/RichStaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    .restart local v3    # "reflowed":Landroid/text/RichStaticLayout;
    :goto_5
    add-int v6, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getSpacingMultiplier()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getSpacingAdd()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/RichDynamicLayout;->mEllipsizedWidth:I

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/RichDynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->getParagraphSpacing()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->isJustified()Z

    move-result v17

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v17}, Landroid/text/RichStaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;FZ)V

    .line 254
    invoke-virtual {v3}, Landroid/text/RichStaticLayout;->getLineCount()I

    move-result v37

    .line 260
    .local v37, "n":I
    add-int v5, p2, p4

    move/from16 v0, v35

    if-eq v5, v0, :cond_9

    add-int/lit8 v5, v37, -0x1

    invoke-virtual {v3, v5}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v5

    add-int v6, p2, p4

    if-ne v5, v6, :cond_9

    .line 261
    add-int/lit8 v37, v37, -0x1

    .line 263
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->isJustified()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 264
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/text/RichDynamicLayout;->getLineStart(I)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/RichDynamicLayout;->getLineStart(I)I

    move-result v6

    sub-int v21, v5, v6

    .line 265
    .local v21, "delIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->delete(II)V

    .line 266
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->delete(II)V

    .line 270
    .end local v21    # "delIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v6, v25, v41

    move/from16 v0, v41

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v6, v25, v41

    move/from16 v0, v41

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 275
    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineTop(I)I

    move-result v29

    .line 276
    .local v29, "ht":I
    const/16 v44, 0x0

    .local v44, "toppad":I
    const/16 v19, 0x0

    .line 278
    .local v19, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/RichDynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_b

    if-nez v41, :cond_b

    .line 279
    invoke-virtual {v3}, Landroid/text/RichStaticLayout;->getTopPadding()I

    move-result v44

    .line 280
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mTopPadding:I

    .line 281
    sub-int v29, v29, v44

    .line 283
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/RichDynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_c

    if-eqz v34, :cond_c

    .line 284
    invoke-virtual {v3}, Landroid/text/RichStaticLayout;->getBottomPadding()I

    move-result v19

    .line 285
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mBottomPadding:I

    .line 286
    add-int v29, v29, v19

    .line 289
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x0

    sub-int v7, p4, p3

    move/from16 v0, v41

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x1

    sub-int v7, v42, v26

    add-int v7, v7, v29

    move/from16 v0, v41

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 296
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/RichDynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_13

    .line 297
    const/4 v5, 0x5

    new-array v0, v5, [I

    move-object/from16 v33, v0

    .line 298
    .local v33, "ints":[I
    const/4 v5, 0x3

    const/high16 v6, -0x80000000

    aput v6, v33, v5

    .line 303
    :goto_6
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/Layout$Directions;

    move-object/from16 v38, v0

    .line 305
    .local v38, "objects":[Landroid/text/Layout$Directions;
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_7
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    .line 306
    const/4 v6, 0x0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v5

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getParagraphDirection(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x1e

    or-int/2addr v7, v5

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineContainsTab(I)Z

    move-result v5

    if-eqz v5, :cond_14

    const/high16 v5, 0x20000000

    :goto_8
    or-int/2addr v5, v7

    aput v5, v33, v6

    .line 310
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineTop(I)I

    move-result v5

    add-int v43, v5, v42

    .line 311
    .local v43, "top":I
    if-lez v30, :cond_d

    .line 312
    sub-int v43, v43, v44

    .line 313
    :cond_d
    const/4 v5, 0x1

    aput v43, v33, v5

    .line 315
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineDescent(I)I

    move-result v22

    .line 316
    .local v22, "desc":I
    add-int/lit8 v5, v37, -0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_e

    .line 317
    add-int v22, v22, v19

    .line 319
    :cond_e
    const/4 v5, 0x2

    aput v22, v33, v5

    .line 320
    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    aput-object v6, v38, v5

    .line 322
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/RichDynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_f

    .line 323
    const/4 v5, 0x3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getEllipsisStart(I)I

    move-result v6

    aput v6, v33, v5

    .line 324
    const/4 v5, 0x4

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getEllipsisCount(I)I

    move-result v6

    aput v6, v33, v5

    .line 327
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v6, v41, v30

    move-object/from16 v0, v33

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v6, v41, v30

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->isJustified()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 331
    add-int v5, v41, v30

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/RichDynamicLayout;->getLineStart(I)I

    move-result v31

    .line 332
    .local v31, "insertIndex":I
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineEnd(I)I

    move-result v5

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineStart(I)I

    move-result v6

    sub-int v32, v5, v6

    .line 333
    .local v32, "insertLen":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineCharsHorizontalX(I)[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v5, v0, v6, v7, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->insertValues(I[FII)V

    .line 334
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/RichDynamicLayout;->mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/RichStaticLayout;->getLineCharsWidths(I)[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v5, v0, v6, v7, v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->insertValues(I[FII)V

    .line 305
    .end local v31    # "insertIndex":I
    .end local v32    # "insertLen":I
    :cond_10
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_7

    .line 233
    .end local v3    # "reflowed":Landroid/text/RichStaticLayout;
    .end local v19    # "botpad":I
    .end local v22    # "desc":I
    .end local v29    # "ht":I
    .end local v30    # "i":I
    .end local v33    # "ints":[I
    .end local v34    # "islast":Z
    .end local v37    # "n":I
    .end local v38    # "objects":[Landroid/text/Layout$Directions;
    .end local v43    # "top":I
    .end local v44    # "toppad":I
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 242
    .restart local v34    # "islast":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 247
    .restart local v3    # "reflowed":Landroid/text/RichStaticLayout;
    :cond_12
    invoke-virtual {v3}, Landroid/text/RichStaticLayout;->prepare()V

    goto/16 :goto_5

    .line 300
    .restart local v19    # "botpad":I
    .restart local v29    # "ht":I
    .restart local v37    # "n":I
    .restart local v44    # "toppad":I
    :cond_13
    const/4 v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v33, v0

    .restart local v33    # "ints":[I
    goto/16 :goto_6

    .line 306
    .restart local v30    # "i":I
    .restart local v38    # "objects":[Landroid/text/Layout$Directions;
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 338
    :cond_15
    add-int/lit8 v5, v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v37

    invoke-virtual {v0, v1, v5, v2}, Landroid/text/RichDynamicLayout;->updateBlocks(III)V

    .line 340
    sget-object v6, Landroid/text/RichDynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 341
    :try_start_2
    sput-object v3, Landroid/text/RichDynamicLayout;->sStaticLayout:Landroid/text/RichStaticLayout;

    .line 342
    invoke-virtual {v3}, Landroid/text/RichStaticLayout;->finish()V

    .line 343
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
    .line 533
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Landroid/text/RichDynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getCharHorizontalX(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 749
    iget v1, p0, Landroid/text/RichDynamicLayout;->mBufStart:I

    sub-int v0, p1, v1

    .line 750
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/text/RichDynamicLayout;->mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

    invoke-virtual {v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 751
    :cond_0
    const/4 v1, 0x0

    .line 753
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/RichDynamicLayout;->mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

    invoke-virtual {v1, v0}, Landroid/text/RichDynamicLayout$PackedFloatVector;->value(I)F

    move-result v1

    goto :goto_0
.end method

.method public getCharWidth(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 757
    iget v1, p0, Landroid/text/RichDynamicLayout;->mBufStart:I

    sub-int v0, p1, v1

    .line 758
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/text/RichDynamicLayout;->mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

    invoke-virtual {v1}, Landroid/text/RichDynamicLayout$PackedFloatVector;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 759
    :cond_0
    const/4 v1, 0x0

    .line 761
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/RichDynamicLayout;->mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

    invoke-virtual {v1, v0}, Landroid/text/RichDynamicLayout$PackedFloatVector;->value(I)F

    move-result v1

    goto :goto_0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 671
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 662
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 666
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Landroid/text/RichDynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Landroid/text/RichDynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineCharsHorizontalX(I)[F
    .locals 6
    .param p1, "line"    # I

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Landroid/text/RichDynamicLayout;->getLineStart(I)I

    move-result v1

    .line 730
    .local v1, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/RichDynamicLayout;->getLineEnd(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 731
    .local v0, "len":I
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsXTemp:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsXTemp:[F

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 732
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsXTemp:[F

    .line 734
    :cond_1
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mCharsX:Landroid/text/RichDynamicLayout$PackedFloatVector;

    invoke-virtual {v2}, Landroid/text/RichDynamicLayout$PackedFloatVector;->values()[F

    move-result-object v2

    iget v3, p0, Landroid/text/RichDynamicLayout;->mBufStart:I

    sub-int v3, v1, v3

    iget-object v4, p0, Landroid/text/RichDynamicLayout;->mLineCharsXTemp:[F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsXTemp:[F

    return-object v2
.end method

.method public getLineCharsWidths(I)[F
    .locals 6
    .param p1, "line"    # I

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Landroid/text/RichDynamicLayout;->getLineStart(I)I

    move-result v1

    .line 740
    .local v1, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/RichDynamicLayout;->getLineEnd(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 741
    .local v0, "len":I
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsWidthsTemp:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsWidthsTemp:[F

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 742
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsWidthsTemp:[F

    .line 744
    :cond_1
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mCharsWidths:Landroid/text/RichDynamicLayout$PackedFloatVector;

    invoke-virtual {v2}, Landroid/text/RichDynamicLayout$PackedFloatVector;->values()[F

    move-result-object v2

    iget v3, p0, Landroid/text/RichDynamicLayout;->mBufStart:I

    sub-int v3, v1, v3

    iget-object v4, p0, Landroid/text/RichDynamicLayout;->mLineCharsWidthsTemp:[F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    iget-object v2, p0, Landroid/text/RichDynamicLayout;->mLineCharsWidthsTemp:[F

    return-object v2
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

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
    .line 566
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 576
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 596
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

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
    .line 581
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

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
    .line 571
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 591
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Landroid/text/RichDynamicLayout;->mTopPadding:I

    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    .line 523
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    .line 524
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iget-object v0, p0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    iput p3, p0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    .line 527
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 561
    iput p1, p0, Landroid/text/RichDynamicLayout;->mIndexFirstChangedBlock:I

    .line 562
    return-void
.end method

.method updateBlocks(III)V
    .locals 25
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 423
    invoke-direct/range {p0 .. p0}, Landroid/text/RichDynamicLayout;->createBlocks()V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const/4 v11, -0x1

    .line 428
    .local v11, "firstBlock":I
    const/4 v13, -0x1

    .line 429
    .local v13, "lastBlock":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_2

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    .line 431
    move v11, v12

    .line 435
    :cond_2
    move v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    .line 437
    move v13, v12

    .line 441
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v14, v20, v13

    .line 443
    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_9

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    const/4 v9, 0x1

    .line 445
    .local v9, "createBlockBefore":Z
    :goto_4
    if-lez p3, :cond_b

    const/4 v7, 0x1

    .line 446
    .local v7, "createBlock":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v20, v20, v13

    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    const/4 v8, 0x1

    .line 448
    .local v8, "createBlockAfter":Z
    :goto_6
    const/16 v18, 0x0

    .line 449
    .local v18, "numAddedBlocks":I
    if-eqz v9, :cond_4

    add-int/lit8 v18, v18, 0x1

    .line 450
    :cond_4
    if-eqz v7, :cond_5

    add-int/lit8 v18, v18, 0x1

    .line 451
    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v18, v18, 0x1

    .line 453
    :cond_6
    sub-int v20, v13, v11

    add-int/lit8 v19, v20, 0x1

    .line 454
    .local v19, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    add-int v20, v20, v18

    sub-int v16, v20, v19

    .line 456
    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_d

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, -0x1

    aput v22, v20, v21

    .line 460
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    goto/16 :goto_0

    .line 429
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

    .line 435
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 443
    .restart local v14    # "lastBlockEndLine":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, -0x1

    aget v20, v20, v21

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 445
    .restart local v9    # "createBlockBefore":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 446
    .restart local v7    # "createBlock":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 464
    .restart local v8    # "createBlockAfter":Z
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v18    # "numAddedBlocks":I
    .restart local v19    # "numRemovedBlocks":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    .line 465
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v17

    .line 466
    .local v17, "newSize":I
    move/from16 v0, v17

    new-array v4, v0, [I

    .line 467
    .local v4, "blockEndLines":[I
    move/from16 v0, v17

    new-array v6, v0, [I

    .line 468
    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    add-int v22, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    add-int v22, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    .line 475
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    .line 483
    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    .end local v17    # "newSize":I
    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    .line 485
    sub-int v20, p2, p1

    add-int/lit8 v20, v20, 0x1

    sub-int v10, p3, v20

    .line 486
    .local v10, "deltaLines":I
    if-eqz v10, :cond_f

    .line 489
    add-int v15, v11, v18

    .line 490
    .local v15, "newFirstChangedBlock":I
    move v12, v15

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_10

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    aget v21, v20, v12

    add-int v21, v21, v10

    aput v21, v20, v12

    .line 490
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 477
    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v22, v0

    add-int v23, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v22, v0

    add-int v23, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 494
    .restart local v10    # "deltaLines":I
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/RichDynamicLayout;->mNumberOfBlocks:I

    .line 496
    .restart local v15    # "newFirstChangedBlock":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/RichDynamicLayout;->mIndexFirstChangedBlock:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/RichDynamicLayout;->mIndexFirstChangedBlock:I

    .line 498
    move v5, v11

    .line 499
    .local v5, "blockIndex":I
    if-eqz v9, :cond_11

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    aput v21, v20, v5

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v5

    .line 502
    add-int/lit8 v5, v5, 0x1

    .line 505
    :cond_11
    if-eqz v7, :cond_12

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int v21, p1, p3

    add-int/lit8 v21, v21, -0x1

    aput v21, v20, v5

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v5

    .line 508
    add-int/lit8 v5, v5, 0x1

    .line 511
    :cond_12
    if-eqz v8, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockEndLines:[I

    move-object/from16 v20, v0

    add-int v21, v14, v10

    aput v21, v20, v5

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/RichDynamicLayout;->mBlockIndices:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v5

    goto/16 :goto_0
.end method
