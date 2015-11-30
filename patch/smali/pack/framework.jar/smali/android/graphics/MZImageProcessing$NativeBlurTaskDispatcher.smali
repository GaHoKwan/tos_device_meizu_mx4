.class Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;
.super Ljava/lang/Object;
.source "MZImageProcessing.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/MZImageProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeBlurTaskDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _bitmapOut:Landroid/graphics/Bitmap;

.field private final _coreIndex:I

.field private final _radius:I

.field private final _round:I

.field private final _totalCores:I

.field final synthetic this$0:Landroid/graphics/MZImageProcessing;


# direct methods
.method public constructor <init>(Landroid/graphics/MZImageProcessing;Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .param p2, "bitmapOut"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I
    .param p4, "totalCores"    # I
    .param p5, "coreIndex"    # I
    .param p6, "round"    # I

    .prologue
    .line 293
    iput-object p1, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->this$0:Landroid/graphics/MZImageProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_bitmapOut:Landroid/graphics/Bitmap;

    .line 295
    iput p3, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_radius:I

    .line 296
    iput p4, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_totalCores:I

    .line 297
    iput p5, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_coreIndex:I

    .line 298
    iput p6, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_round:I

    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->this$0:Landroid/graphics/MZImageProcessing;

    iget-object v1, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_bitmapOut:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_radius:I

    iget v3, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_totalCores:I

    iget v4, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_coreIndex:I

    iget v5, p0, Landroid/graphics/MZImageProcessing$NativeBlurTaskDispatcher;->_round:I

    # invokes: Landroid/graphics/MZImageProcessing;->nativeStackBlurMultiThread(Landroid/graphics/Bitmap;IIII)V
    invoke-static/range {v0 .. v5}, Landroid/graphics/MZImageProcessing;->access$000(Landroid/graphics/MZImageProcessing;Landroid/graphics/Bitmap;IIII)V

    .line 304
    const/4 v0, 0x0

    return-object v0
.end method
