.class Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState$DragAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShapeHolder"
.end annotation


# instance fields
.field private alpha:F

.field private scale:F

.field final synthetic this$1:Lcom/android/server/wm/DragState$DragAnimator;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState$DragAnimator;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 976
    iput-object p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->this$1:Lcom/android/server/wm/DragState$DragAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->x:F

    .line 947
    iput v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->y:F

    .line 948
    iput v1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->scale:F

    .line 949
    iput v1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->alpha:F

    .line 977
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->alpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->scale:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 970
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->alpha:F

    .line 971
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 964
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->scale:F

    .line 965
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 952
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->x:F

    .line 953
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 958
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->y:F

    .line 959
    return-void
.end method
