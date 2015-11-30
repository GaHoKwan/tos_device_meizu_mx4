.class Lcom/android/internal/app/AlertController$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->limitCustomPanelHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$dialogMaxHeight:I

.field final synthetic val$parentPanel:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;Landroid/widget/LinearLayout;I)V
    .locals 0

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$5;->val$parentPanel:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/android/internal/app/AlertController$5;->val$dialogMaxHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2286
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->val$parentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    .line 2287
    .local v10, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v10, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2288
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertController;->access$2000(Lcom/android/internal/app/AlertController;)Landroid/view/Window;

    move-result-object v11

    const v12, 0x102029c

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2289
    .local v0, "buttonPanel":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertController;->access$2000(Lcom/android/internal/app/AlertController;)Landroid/view/Window;

    move-result-object v11

    const v12, 0x102029f

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 2290
    .local v2, "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertController;->access$2000(Lcom/android/internal/app/AlertController;)Landroid/view/Window;

    move-result-object v11

    const v12, 0x1020298

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2291
    .local v8, "topPanel":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertController;->access$2000(Lcom/android/internal/app/AlertController;)Landroid/view/Window;

    move-result-object v11

    const v12, 0x1020318

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 2292
    .local v4, "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    .line 2293
    .local v9, "topPanelHeight":I
    const/4 v3, 0x0

    .line 2294
    .local v3, "contentPanelHeight":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 2295
    .local v1, "buttonPanelHeight":I
    iget v11, p0, Lcom/android/internal/app/AlertController$5;->val$dialogMaxHeight:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v1

    div-int/lit8 v5, v11, 0x2

    .line 2296
    .local v5, "halfOfSurplusHeight":I
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 2297
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v11}, Lcom/android/internal/app/AlertController;->access$2100(Lcom/android/internal/app/AlertController;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2298
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/internal/app/AlertController;->access$1700(Lcom/android/internal/app/AlertController;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 2302
    :goto_0
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2303
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 2304
    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v11, v5, v11

    iget v12, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    invoke-virtual {v2, v11}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 2308
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMaxHeight()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2309
    iget v11, p0, Lcom/android/internal/app/AlertController$5;->val$dialogMaxHeight:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v3

    sub-int/2addr v11, v1

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2310
    .local v7, "maxHeight":I
    invoke-virtual {v4, v7}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 2311
    iget-object v11, p0, Lcom/android/internal/app/AlertController$5;->val$parentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2312
    const/4 v11, 0x1

    return v11

    .line 2300
    .end local v7    # "maxHeight":I
    :cond_0
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getHeight()I

    move-result v3

    goto :goto_0

    .line 2306
    :cond_1
    invoke-virtual {v2, v13}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_1
.end method
