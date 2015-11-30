.class Lcom/android/internal/app/AlertActivity$AlertActivityOnTouchListener;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "xiaohongzhi@SDK.Feature.add "
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertActivityOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/AlertActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/app/AlertActivity$AlertActivityOnTouchListener;->this$0:Lcom/android/internal/app/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/AlertActivity;Lcom/android/internal/app/AlertActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/app/AlertActivity;
    .param p2, "x1"    # Lcom/android/internal/app/AlertActivity$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertActivity$AlertActivityOnTouchListener;-><init>(Lcom/android/internal/app/AlertActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 125
    .local v6, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 126
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 127
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 128
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 129
    .local v2, "paddingLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 130
    .local v4, "paddingTop":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 131
    .local v3, "paddingRight":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 133
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

    .line 135
    :cond_0
    iget-object v8, p0, Lcom/android/internal/app/AlertActivity$AlertActivityOnTouchListener;->this$0:Lcom/android/internal/app/AlertActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 138
    :cond_1
    const/4 v8, 0x0

    return v8
.end method
