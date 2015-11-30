.class public Landroid/view/animation/ComboAnimation;
.super Landroid/view/animation/Animation;
.source "ComboAnimation.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "jiangjunlei@SDK.By animating the data of each frame, but because applyTransformation system call is not guaranteed for all the frames called fill"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# instance fields
.field private final mAlpha:[F

.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private mIsXMapped:Z

.field private mIsYMapped:Z

.field private mIsZMapped:Z

.field private final mReverse:Z

.field private final mRotateDegreeX:[F

.field private final mRotateDegreeY:[F

.field private final mRotateDegreeZ:[F

.field private final mScale:[F

.field private mTranslateDisX:I

.field private mTranslateDisY:I

.field private mTranslateDisZ:I

.field private final mTranslateX:[F

.field private final mTranslateY:[F

.field private final mTranslateZ:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v3, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 55
    iput-boolean v3, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 56
    iput-boolean v3, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 62
    sget-object v1, Lcom/android/internal/R$styleable;->ComboAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {v0, v3}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateX:[F

    .line 64
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateY:[F

    .line 65
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateZ:[F

    .line 67
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    .line 68
    const/4 v1, 0x4

    iget v2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    .line 69
    const/4 v1, 0x5

    iget v2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    .line 71
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mAlpha:[F

    .line 72
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mScale:[F

    .line 74
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeX:[F

    .line 75
    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeY:[F

    .line 76
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeZ:[F

    .line 78
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mCenterX:F

    .line 79
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mCenterY:F

    .line 81
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 82
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 83
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 84
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mReverse:Z

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method

.method public constructor <init>([F[F[F[F[F[F[F[FFFZ)V
    .locals 1
    .param p1, "translateX"    # [F
    .param p2, "translateY"    # [F
    .param p3, "translateZ"    # [F
    .param p4, "alpha"    # [F
    .param p5, "scale"    # [F
    .param p6, "rotateDegreeX"    # [F
    .param p7, "rotateDegreeY"    # [F
    .param p8, "rotateDegreeZ"    # [F
    .param p9, "centerX"    # F
    .param p10, "centerY"    # F
    .param p11, "reverse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 54
    iput-boolean v0, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 55
    iput-boolean v0, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 56
    iput-boolean v0, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 92
    iput-object p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateX:[F

    .line 93
    iput-object p2, p0, Landroid/view/animation/ComboAnimation;->mTranslateY:[F

    .line 94
    iput-object p3, p0, Landroid/view/animation/ComboAnimation;->mTranslateZ:[F

    .line 95
    iput p9, p0, Landroid/view/animation/ComboAnimation;->mCenterX:F

    .line 96
    iput p10, p0, Landroid/view/animation/ComboAnimation;->mCenterY:F

    .line 97
    iput-boolean p11, p0, Landroid/view/animation/ComboAnimation;->mReverse:Z

    .line 98
    iput-object p6, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeX:[F

    .line 99
    iput-object p7, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeY:[F

    .line 100
    iput-object p8, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeZ:[F

    .line 101
    iput-object p5, p0, Landroid/view/animation/ComboAnimation;->mScale:[F

    .line 102
    iput-object p4, p0, Landroid/view/animation/ComboAnimation;->mAlpha:[F

    .line 103
    return-void
.end method

.method private calculateValue([FFF)F
    .locals 7
    .param p1, "values"    # [F
    .param p2, "time"    # F
    .param p3, "def"    # F

    .prologue
    .line 260
    move v3, p3

    .line 261
    .local v3, "value":F
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 262
    const/high16 v4, 0x3f800000    # 1.0f

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 263
    .local v2, "segment":F
    div-float v4, p2, v2

    float-to-int v1, v4

    .line 264
    .local v1, "index":I
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1

    .line 265
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v3, p1, v4

    .line 271
    .end local v1    # "index":I
    .end local v2    # "segment":F
    :cond_0
    :goto_0
    return v3

    .line 267
    .restart local v1    # "index":I
    .restart local v2    # "segment":F
    :cond_1
    int-to-float v4, v1

    mul-float/2addr v4, v2

    sub-float v0, p2, v4

    .line 268
    .local v0, "extra":F
    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aget v6, p1, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v5, v2

    add-float v3, v4, v5

    goto :goto_0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "stringArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 245
    array-length v3, v2

    new-array v0, v3, [F

    .line 246
    .local v0, "floatArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 247
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "floatArray":[F
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;I)[F
    .locals 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "id"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 227
    .local v0, "charArray":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 228
    array-length v3, v0

    new-array v1, v3, [F

    .line 229
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 230
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "floatArray":[F
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 15
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 167
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mReverse:Z

    if-eqz v13, :cond_0

    .line 168
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float p1, v13, p1

    .line 170
    :cond_0
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateX:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v10

    .line 171
    .local v10, "translateX":F
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    if-nez v13, :cond_1

    .line 172
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    int-to-float v13, v13

    mul-float/2addr v10, v13

    .line 174
    :cond_1
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateY:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v11

    .line 175
    .local v11, "translateY":F
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    if-nez v13, :cond_2

    .line 176
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    int-to-float v13, v13

    mul-float/2addr v11, v13

    .line 178
    :cond_2
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateZ:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v12

    .line 179
    .local v12, "translateZ":F
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    if-nez v13, :cond_3

    .line 180
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    .line 182
    :cond_3
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mAlpha:[F

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v1

    .line 183
    .local v1, "alpha":F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeX:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v6

    .line 184
    .local v6, "rotateDegreeX":F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeY:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v7

    .line 185
    .local v7, "rotateDegreeY":F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeZ:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v8

    .line 186
    .local v8, "rotateDegreeZ":F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mScale:[F

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v9

    .line 187
    .local v9, "scale":F
    iget v14, p0, Landroid/view/animation/ComboAnimation;->mCenterX:F

    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    if-eqz v13, :cond_c

    move v13, v10

    :goto_0
    add-float v3, v14, v13

    .line 188
    .local v3, "centerX":F
    iget v14, p0, Landroid/view/animation/ComboAnimation;->mCenterY:F

    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    if-eqz v13, :cond_d

    move v13, v11

    :goto_1
    add-float v4, v14, v13

    .line 190
    .local v4, "centerY":F
    iget-object v2, p0, Landroid/view/animation/ComboAnimation;->mCamera:Landroid/graphics/Camera;

    .line 191
    .local v2, "camera":Landroid/graphics/Camera;
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 193
    .local v5, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 195
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 196
    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_5

    .line 197
    :cond_4
    neg-float v13, v11

    invoke-virtual {v2, v10, v13, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 199
    :cond_5
    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    if-eqz v13, :cond_6

    .line 200
    invoke-virtual {v2, v6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 202
    :cond_6
    const/4 v13, 0x0

    cmpl-float v13, v7, v13

    if-eqz v13, :cond_7

    .line 203
    invoke-virtual {v2, v7}, Landroid/graphics/Camera;->rotateY(F)V

    .line 205
    :cond_7
    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-eqz v13, :cond_8

    .line 206
    invoke-virtual {v2, v8}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 208
    :cond_8
    invoke-virtual {v2, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 209
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 211
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v9, v13

    if-eqz v13, :cond_9

    .line 212
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 215
    :cond_9
    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    cmpl-float v13, v7, v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-nez v13, :cond_a

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v9, v13

    if-eqz v13, :cond_b

    .line 216
    :cond_a
    neg-float v13, v3

    neg-float v14, v4

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 217
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 219
    :cond_b
    return-void

    .line 187
    .end local v2    # "camera":Landroid/graphics/Camera;
    .end local v3    # "centerX":F
    .end local v4    # "centerY":F
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_c
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    goto :goto_0

    .line 188
    .restart local v3    # "centerX":F
    :cond_d
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 159
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ComboAnimation;->mCamera:Landroid/graphics/Camera;

    .line 160
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    .line 161
    iput p2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    .line 162
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    .line 163
    return-void
.end method

.method public setIsXMapped(Z)V
    .locals 0
    .param p1, "mapped"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 112
    return-void
.end method

.method public setIsYMapped(Z)V
    .locals 0
    .param p1, "mapped"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 121
    return-void
.end method

.method public setIsZMapped(Z)V
    .locals 0
    .param p1, "mapped"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 130
    return-void
.end method

.method public setTranslateDisX(I)V
    .locals 0
    .param p1, "translateDisX"    # I

    .prologue
    .line 137
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    .line 138
    return-void
.end method

.method public setTranslateDisY(I)V
    .locals 0
    .param p1, "translateDisY"    # I

    .prologue
    .line 145
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    .line 146
    return-void
.end method

.method public setTranslateDisZ(I)V
    .locals 0
    .param p1, "translateDisZ"    # I

    .prologue
    .line 153
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    .line 154
    return-void
.end method
