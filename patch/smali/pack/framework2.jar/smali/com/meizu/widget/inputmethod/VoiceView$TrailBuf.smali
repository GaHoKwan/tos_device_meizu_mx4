.class Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;
.super Ljava/lang/Object;
.source "VoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/inputmethod/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrailBuf"
.end annotation


# static fields
.field public static final SIZE_TRAIL_BUF:I = 0x5


# instance fields
.field private buf:[F

.field private count:I

.field final synthetic this$0:Lcom/meizu/widget/inputmethod/VoiceView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/inputmethod/VoiceView;)V
    .locals 1

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    .line 1222
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    .line 1223
    return-void
.end method


# virtual methods
.method public getCur()F
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    aget v0, v0, v1

    return v0
.end method

.method public getFinal()F
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    return v0
.end method

.method public getNext()F
    .locals 2

    .prologue
    .line 1240
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1241
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    aget v0, v0, v1

    return v0
.end method

.method public loadData(FF)F
    .locals 6
    .param p1, "dest"    # F
    .param p2, "src"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1227
    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    move p1, v2

    .line 1229
    :cond_0
    sub-float v2, p1, p2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v0, v2, v3

    .line 1230
    .local v0, "gap":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 1231
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, p2

    float-to-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v1

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1233
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    aput p1, v2, v5

    .line 1234
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->count:I

    .line 1236
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView$TrailBuf;->buf:[F

    aget v2, v2, v4

    return v2
.end method
