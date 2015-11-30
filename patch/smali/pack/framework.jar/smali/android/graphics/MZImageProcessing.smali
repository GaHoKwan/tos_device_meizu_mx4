.class public Landroid/graphics/MZImageProcessing;
.super Ljava/lang/Object;
.source "MZImageProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MZImageProcessing"

.field private static sInstance:Landroid/graphics/MZImageProcessing;


# instance fields
.field private mNumOfThreads:I

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Landroid/graphics/MZImageProcessing;->mNumOfThreads:I

    .line 47
    iget v0, p0, Landroid/graphics/MZImageProcessing;->mNumOfThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/MZImageProcessing;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/MZImageProcessing;Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/MZImageProcessing;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/graphics/MZImageProcessing;->nativeStackBlurMultiThread(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 384
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 378
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 380
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 382
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Landroid/graphics/MZImageProcessing;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/graphics/MZImageProcessing;->sInstance:Landroid/graphics/MZImageProcessing;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/MZImageProcessing;

    invoke-direct {v0}, Landroid/graphics/MZImageProcessing;-><init>()V

    sput-object v0, Landroid/graphics/MZImageProcessing;->sInstance:Landroid/graphics/MZImageProcessing;

    .line 58
    :cond_0
    sget-object v0, Landroid/graphics/MZImageProcessing;->sInstance:Landroid/graphics/MZImageProcessing;

    return-object v0
.end method

.method private native nativeStackBlurMultiThread(Landroid/graphics/Bitmap;IIII)V
.end method

.method private static native nativeStackBlurSingleThread(Landroid/graphics/Bitmap;I)V
.end method

.method public static stackBlurSingleThreadProcessedByDVM(Landroid/graphics/Bitmap;I)V
    .locals 42
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 66
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 263
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 69
    .local v5, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 71
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 72
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 74
    add-int/lit8 v36, v5, -0x1

    .line 75
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 76
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 77
    .local v35, "wh":I
    add-int v2, p1, p1

    add-int/lit8 v14, v2, 0x1

    .line 79
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 80
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 81
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 83
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v34, v0

    .line 85
    .local v34, "vmin":[I
    add-int/lit8 v2, v14, 0x1

    shr-int/lit8 v15, v2, 0x1

    .line 86
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 87
    mul-int/lit16 v2, v15, 0x100

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 88
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    mul-int/lit16 v2, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 89
    div-int v2, v22, v15

    aput v2, v16, v22

    .line 88
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 92
    :cond_1
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 94
    .local v41, "yw":I
    const/4 v2, 0x3

    filled-new-array {v14, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 99
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 103
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_2
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 104
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 105
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_3

    .line 106
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, v36

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v2, v39

    aget v23, v3, v2

    .line 107
    .local v23, "p":I
    add-int v2, v22, p1

    aget-object v30, v31, v2

    .line 108
    .local v30, "sir":[I
    const/4 v2, 0x0

    const/high16 v4, 0xff0000

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x10

    aput v4, v30, v2

    .line 109
    const/4 v2, 0x1

    const v4, 0xff00

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x8

    aput v4, v30, v2

    .line 110
    const/4 v2, 0x2

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    aput v4, v30, v2

    .line 111
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v26, v25, v2

    .line 112
    .local v26, "rbs":I
    const/4 v2, 0x0

    aget v2, v30, v2

    mul-int v2, v2, v26

    add-int v29, v29, v2

    .line 113
    const/4 v2, 0x1

    aget v2, v30, v2

    mul-int v2, v2, v26

    add-int v20, v20, v2

    .line 114
    const/4 v2, 0x2

    aget v2, v30, v2

    mul-int v2, v2, v26

    add-int/2addr v13, v2

    .line 115
    if-lez v22, :cond_2

    .line 116
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 117
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 118
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 105
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 120
    :cond_2
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 121
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 122
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    goto :goto_4

    .line 125
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_3
    move/from16 v32, p1

    .line 127
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 129
    aget v2, v16, v29

    aput v2, v24, v39

    .line 130
    aget v2, v16, v20

    aput v2, v17, v39

    .line 131
    aget v2, v16, v13

    aput v2, v10, v39

    .line 133
    sub-int v29, v29, v28

    .line 134
    sub-int v20, v20, v19

    .line 135
    sub-int/2addr v13, v12

    .line 137
    sub-int v2, v32, p1

    add-int v33, v2, v14

    .line 138
    .local v33, "stackstart":I
    rem-int v2, v33, v14

    aget-object v30, v31, v2

    .line 140
    .restart local v30    # "sir":[I
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v28, v28, v2

    .line 141
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v19, v19, v2

    .line 142
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v12, v2

    .line 144
    if-nez v38, :cond_4

    .line 145
    add-int v2, v37, p1

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v36

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v34, v37

    .line 147
    :cond_4
    aget v2, v34, v37

    add-int v2, v2, v41

    aget v23, v3, v2

    .line 149
    .restart local v23    # "p":I
    const/4 v2, 0x0

    const/high16 v4, 0xff0000

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x10

    aput v4, v30, v2

    .line 150
    const/4 v2, 0x1

    const v4, 0xff00

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x8

    aput v4, v30, v2

    .line 151
    const/4 v2, 0x2

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    aput v4, v30, v2

    .line 153
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 154
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 155
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 157
    add-int v29, v29, v27

    .line 158
    add-int v20, v20, v18

    .line 159
    add-int/2addr v13, v11

    .line 161
    add-int/lit8 v2, v32, 0x1

    rem-int v32, v2, v14

    .line 162
    rem-int v2, v32, v14

    aget-object v30, v31, v2

    .line 164
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 165
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 166
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    .line 168
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v27, v27, v2

    .line 169
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v18, v18, v2

    .line 170
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v11, v2

    .line 172
    add-int/lit8 v39, v39, 0x1

    .line 127
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 174
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_5
    add-int v41, v41, v5

    .line 103
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 177
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_6
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 178
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 179
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v2, v0

    mul-int v40, v2, v5

    .line 180
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_9

    .line 181
    const/4 v2, 0x0

    move/from16 v0, v40

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v39, v2, v37

    .line 183
    add-int v2, v22, p1

    aget-object v30, v31, v2

    .line 185
    .restart local v30    # "sir":[I
    const/4 v2, 0x0

    aget v4, v24, v39

    aput v4, v30, v2

    .line 186
    const/4 v2, 0x1

    aget v4, v17, v39

    aput v4, v30, v2

    .line 187
    const/4 v2, 0x2

    aget v4, v10, v39

    aput v4, v30, v2

    .line 189
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v26, v25, v2

    .line 191
    .restart local v26    # "rbs":I
    aget v2, v24, v39

    mul-int v2, v2, v26

    add-int v29, v29, v2

    .line 192
    aget v2, v17, v39

    mul-int v2, v2, v26

    add-int v20, v20, v2

    .line 193
    aget v2, v10, v39

    mul-int v2, v2, v26

    add-int/2addr v13, v2

    .line 195
    if-lez v22, :cond_8

    .line 196
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 197
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 198
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 205
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 206
    add-int v40, v40, v5

    .line 180
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 200
    :cond_8
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 201
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 202
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    goto :goto_8

    .line 210
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_9
    move/from16 v39, v37

    .line 211
    move/from16 v32, p1

    .line 212
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 214
    const/high16 v2, -0x1000000

    aget v4, v3, v39

    and-int/2addr v2, v4

    aget v4, v16, v29

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    aget v4, v16, v20

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget v4, v16, v13

    or-int/2addr v2, v4

    aput v2, v3, v39

    .line 217
    sub-int v29, v29, v28

    .line 218
    sub-int v20, v20, v19

    .line 219
    sub-int/2addr v13, v12

    .line 221
    sub-int v2, v32, p1

    add-int v33, v2, v14

    .line 222
    .restart local v33    # "stackstart":I
    rem-int v2, v33, v14

    aget-object v30, v31, v2

    .line 224
    .restart local v30    # "sir":[I
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v28, v28, v2

    .line 225
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v19, v19, v2

    .line 226
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v12, v2

    .line 228
    if-nez v37, :cond_a

    .line 229
    add-int v2, v38, v25

    move/from16 v0, v21

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v5

    aput v2, v34, v38

    .line 231
    :cond_a
    aget v2, v34, v38

    add-int v23, v37, v2

    .line 233
    .restart local v23    # "p":I
    const/4 v2, 0x0

    aget v4, v24, v23

    aput v4, v30, v2

    .line 234
    const/4 v2, 0x1

    aget v4, v17, v23

    aput v4, v30, v2

    .line 235
    const/4 v2, 0x2

    aget v4, v10, v23

    aput v4, v30, v2

    .line 237
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 238
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 239
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 241
    add-int v29, v29, v27

    .line 242
    add-int v20, v20, v18

    .line 243
    add-int/2addr v13, v11

    .line 245
    add-int/lit8 v2, v32, 0x1

    rem-int v32, v2, v14

    .line 246
    aget-object v30, v31, v32

    .line 248
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 249
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 250
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    .line 252
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v27, v27, v2

    .line 253
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v18, v18, v2

    .line 254
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v11, v2

    .line 256
    add-int v39, v39, v5

    .line 212
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 177
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 259
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method public static stackBlurSingleThreadProcessedByNative(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 272
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/MZImageProcessing;->nativeStackBlurSingleThread(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method


# virtual methods
.method public getThumbnailBlurBehind(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downSampling"    # I
    .param p3, "radius"    # I

    .prologue
    .line 339
    const-string/jumbo v15, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 340
    .local v14, "wManager":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 341
    .local v5, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    .local v6, "displayMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 344
    const/4 v15, 0x2

    new-array v4, v15, [F

    const/4 v15, 0x0

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v4, v15

    const/4 v15, 0x1

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v4, v15

    .line 345
    .local v4, "dims":[F
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/graphics/MZImageProcessing;->getDegreesForRotation(I)F

    move-result v3

    .line 346
    .local v3, "degrees":F
    const/4 v15, 0x0

    cmpl-float v15, v3, v15

    if-lez v15, :cond_1

    const/4 v9, 0x1

    .line 347
    .local v9, "requiresRotation":Z
    :goto_0
    if-eqz v9, :cond_0

    .line 349
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 350
    neg-float v15, v3

    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 351
    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 352
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    aput v16, v4, v15

    .line 353
    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    aput v16, v4, v15

    .line 357
    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 358
    .local v10, "scale":F
    const/4 v15, 0x0

    aget v15, v4, v15

    mul-float/2addr v15, v10

    float-to-int v13, v15

    .line 359
    .local v13, "w":I
    const/4 v15, 0x1

    aget v15, v4, v15

    mul-float/2addr v15, v10

    float-to-int v8, v15

    .line 360
    .local v8, "h":I
    invoke-static {v13, v8}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 361
    .local v2, "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 362
    const/4 v11, 0x0

    .line 369
    :goto_1
    return-object v11

    .line 346
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "h":I
    .end local v9    # "requiresRotation":Z
    .end local v10    # "scale":F
    .end local v13    # "w":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 364
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v8    # "h":I
    .restart local v9    # "requiresRotation":Z
    .restart local v10    # "scale":F
    .restart local v13    # "w":I
    :cond_2
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v8, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 365
    .local v11, "screenBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v12, "screenshotCanvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v2, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Landroid/graphics/MZImageProcessing;->stackBlurMultiThreadProcessedByNative(Landroid/graphics/Bitmap;I)V

    .line 368
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public stackBlurMultiThreadProcessedByNative(Landroid/graphics/Bitmap;I)V
    .locals 10
    .param p1, "bitmapOut"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 309
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 311
    :cond_0
    iget v4, p0, Landroid/graphics/MZImageProcessing;->mNumOfThreads:I

    .line 312
    .local v4, "cores":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v8, "horizontal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v9, "vertical":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 316
    new-instance v0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;-><init>(Landroid/graphics/MZImageProcessing;Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;-><init>(Landroid/graphics/MZImageProcessing;Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 320
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/graphics/MZImageProcessing;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    :try_start_1
    iget-object v0, p0, Landroid/graphics/MZImageProcessing;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v7

    .line 328
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 322
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
