.class Lcom/android/internal/app/AlertController$6;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->clickOnPaddingDismiss(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0

    .prologue
    .line 2327
    iput-object p1, p0, Lcom/android/internal/app/AlertController$6;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2332
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 2333
    .local v6, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 2334
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2335
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2336
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 2337
    .local v2, "paddingLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 2338
    .local v4, "paddingTop":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 2339
    .local v3, "paddingRight":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 2340
    .local v1, "paddingButtom":I
    int-to-float v8, v2

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_0

    sub-int v8, v5, v3

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_0

    int-to-float v8, v4

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    sub-int v8, v0, v1

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1

    .line 2341
    :cond_0
    iget-object v8, p0, Lcom/android/internal/app/AlertController$6;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/app/AlertController;->access$1800(Lcom/android/internal/app/AlertController;)Landroid/app/Dialog;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/app/AlertController$6;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/app/AlertController;->access$1800(Lcom/android/internal/app/AlertController;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->isCancelable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2342
    iget-object v8, p0, Lcom/android/internal/app/AlertController$6;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/app/AlertController;->access$1800(Lcom/android/internal/app/AlertController;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->cancel()V

    .line 2345
    :cond_1
    const/4 v8, 0x0

    return v8
.end method
