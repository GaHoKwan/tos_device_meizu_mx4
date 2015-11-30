.class Lcom/meizu/widget/OptionPopupWindow$HandleView;
.super Landroid/view/View;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# instance fields
.field private final ITEM_PADDING:I

.field private final ITEM_WIDTH_MAX:I

.field private final ITEM_WIDTH_MIN:I

.field private final NAVI_NEXT_CONTENT_OFFSET:I

.field private final NAVI_PREV_CONTENT_OFFSET:I

.field private final TEXT_SIZE:I

.field USER_ITEM_WIDTH_MAX:I

.field USER_ITEM_WIDTH_MIN:I

.field private final kHeight:I

.field private final kMinWidth:I

.field private mActionIndex:I

.field private mActiveIndex:I

.field private mArrowOffsetX:I

.field private mBGPadding:Landroid/graphics/Rect;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private final mClickAction:Ljava/lang/Runnable;

.field mClickable:Z

.field private mContentWidth:I

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIsArrowUp:Z

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mNavigationMenuWidth:I

.field private mNextDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintLabel:Landroid/text/TextPaint;

.field private mPixels:[I

.field private mPrevDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mSepDrawable:Landroid/graphics/drawable/Drawable;

.field private mSuspensionPointsWidth:F

.field private final mTouchSlop:I

.field private offsetX:I

.field final synthetic this$0:Lcom/meizu/widget/OptionPopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V
    .locals 6
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 341
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    .line 342
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 269
    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 271
    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    .line 273
    iput-boolean v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    .line 285
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    .line 289
    iput-boolean v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    .line 291
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    .line 293
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    .line 299
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    .line 309
    new-instance v2, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;-><init>(Lcom/meizu/widget/OptionPopupWindow$HandleView;)V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickAction:Ljava/lang/Runnable;

    .line 343
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 344
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x10500b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->TEXT_SIZE:I

    .line 345
    const v2, 0x10500b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_PADDING:I

    .line 346
    const v2, 0x10500ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MIN:I

    .line 347
    const v2, 0x10500bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MAX:I

    .line 348
    const v2, 0x10500be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->NAVI_NEXT_CONTENT_OFFSET:I

    .line 349
    const v2, 0x10500bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->NAVI_PREV_CONTENT_OFFSET:I

    .line 350
    const v2, 0x10500bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    .line 351
    const v2, 0x10804d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    const v2, 0x10804d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 353
    const v2, 0x10804d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    const v2, 0x10804cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    const v2, 0x10804d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    .line 356
    const v2, 0x10804d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    const v2, 0x10500bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    .line 358
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 362
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 363
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 364
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 366
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 367
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 368
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 370
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 371
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 372
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 373
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 375
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMinWidth:I

    .line 379
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    .line 380
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 381
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 382
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 383
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const-string v3, "\u2025"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSuspensionPointsWidth:F

    .line 384
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 386
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 387
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 388
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/OptionPopupWindow$HandleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow$HandleView;

    .prologue
    .line 260
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/OptionPopupWindow$HandleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow$HandleView;
    .param p1, "x1"    # I

    .prologue
    .line 260
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    return p1
.end method

.method private calcActiveIndex(FF)I
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, -0x1

    .line 817
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 819
    .local v0, "activeIndex":I
    iget-object v7, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static {v7}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v7

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-le v7, v9, :cond_1

    move v0, v8

    .line 844
    .end local v0    # "activeIndex":I
    :cond_0
    :goto_0
    return v0

    .line 822
    .restart local v0    # "activeIndex":I
    :cond_1
    iget-object v7, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static {v9}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 823
    .local v3, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 824
    .local v2, "count":I
    if-ltz v0, :cond_2

    if-ge v0, v2, :cond_2

    .line 826
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    iget-object v1, v7, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->clip:Landroid/graphics/Rect;

    .line 827
    .local v1, "clip":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_2

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gez v7, :cond_2

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    sub-int/2addr v7, v9

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_2

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_0

    .line 833
    .end local v1    # "clip":Landroid/graphics/Rect;
    :cond_2
    const/4 v5, 0x0

    .line 834
    .local v5, "left":I
    const/4 v6, 0x0

    .line 835
    .local v6, "right":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 837
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    iget-object v1, v7, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->clip:Landroid/graphics/Rect;

    .line 838
    .restart local v1    # "clip":Landroid/graphics/Rect;
    if-nez v4, :cond_3

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v5, v7, v9

    .line 839
    :goto_2
    add-int/lit8 v7, v2, -0x1

    if-ne v7, v4, :cond_4

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v6, v7, v9

    .line 840
    :goto_3
    int-to-float v7, v5

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_5

    int-to-float v7, v6

    cmpg-float v7, p1, v7

    if-gez v7, :cond_5

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_5

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_5

    move v0, v4

    .line 841
    goto/16 :goto_0

    .line 838
    :cond_3
    iget v5, v1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 839
    :cond_4
    iget v6, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 835
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "clip":Landroid/graphics/Rect;
    :cond_6
    move v0, v8

    .line 844
    goto/16 :goto_0
.end method

.method private calcOptionPage(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/OptionPopupWindow$OptionMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "actionMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    if-nez p1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMaxWidth()I

    move-result v10

    .line 535
    .local v10, "maxWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v21, v22, v23

    .line 536
    .local v21, "totalWidth":I
    const/4 v11, 0x0

    .line 537
    .local v11, "menuCount":I
    const/4 v8, 0x0

    .line 538
    .local v8, "isNewPage":Z
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v18, "pageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$PageInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    .line 540
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 541
    .local v14, "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 543
    :cond_1
    iget v0, v14, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    if-le v0, v10, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v22, v0

    sub-int v22, v21, v22

    iget v0, v14, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    if-ge v0, v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_3

    .line 545
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 546
    const/4 v8, 0x1

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v21, v22, v23

    .line 548
    new-instance v22, Lcom/meizu/widget/OptionPopupWindow$PageInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/meizu/widget/OptionPopupWindow$PageInfo;-><init>(Lcom/meizu/widget/OptionPopupWindow;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const/4 v11, 0x0

    .line 539
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 551
    :cond_3
    iget v0, v14, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 552
    const/4 v8, 0x0

    .line 553
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 556
    .end local v14    # "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_4
    new-instance v22, Lcom/meizu/widget/OptionPopupWindow$PageInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/meizu/widget/OptionPopupWindow$PageInfo;-><init>(Lcom/meizu/widget/OptionPopupWindow;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const/4 v5, 0x0

    .line 566
    .local v5, "curPage":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/widget/OptionPopupWindow$PageInfo;

    .line 567
    .local v17, "pageInfo":Lcom/meizu/widget/OptionPopupWindow$PageInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$PageInfo;->mMenuCount:I

    move/from16 v20, v0

    .line 568
    .local v20, "rectCountPerPage":I
    const/4 v6, 0x0

    .line 569
    .local v6, "curPageCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 570
    .local v9, "left":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v16, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_8

    .line 572
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 573
    .local v15, "optionRect":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    if-eqz v5, :cond_7

    .line 574
    if-nez v6, :cond_5

    .line 575
    new-instance v4, Landroid/graphics/Rect;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 576
    .local v4, "clip":Landroid/graphics/Rect;
    new-instance v19, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/graphics/Rect;Landroid/view/MenuItem;I)V

    .line 577
    .local v19, "prevOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isPrev:Z

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->NAVI_PREV_CONTENT_OFFSET:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->contentOffset:I

    .line 579
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v22, v0

    add-int v9, v9, v22

    .line 582
    .end local v4    # "clip":Landroid/graphics/Rect;
    .end local v19    # "prevOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_5
    iget-object v13, v15, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->clip:Landroid/graphics/Rect;

    .line 583
    .local v13, "optionClip":Landroid/graphics/Rect;
    iput v9, v13, Landroid/graphics/Rect;->left:I

    .line 584
    iget v0, v15, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    move/from16 v22, v0

    add-int v22, v22, v9

    move/from16 v0, v22

    iput v0, v13, Landroid/graphics/Rect;->right:I

    .line 585
    iget v9, v13, Landroid/graphics/Rect;->right:I

    .line 586
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    add-int/lit8 v6, v6, 0x1

    .line 593
    .end local v13    # "optionClip":Landroid/graphics/Rect;
    :goto_4
    move/from16 v0, v20

    if-ne v6, v0, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    add-int/lit8 v22, v5, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 594
    new-instance v4, Landroid/graphics/Rect;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 595
    .restart local v4    # "clip":Landroid/graphics/Rect;
    new-instance v12, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNavigationMenuWidth:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v12, v0, v4, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/graphics/Rect;Landroid/view/MenuItem;I)V

    .line 596
    .local v12, "nextOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v12, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isNext:Z

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->NAVI_NEXT_CONTENT_OFFSET:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->contentOffset:I

    .line 598
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v22, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .restart local v16    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 602
    const/4 v6, 0x0

    .line 603
    add-int/lit8 v5, v5, 0x1

    .line 604
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "pageInfo":Lcom/meizu/widget/OptionPopupWindow$PageInfo;
    check-cast v17, Lcom/meizu/widget/OptionPopupWindow$PageInfo;

    .line 605
    .restart local v17    # "pageInfo":Lcom/meizu/widget/OptionPopupWindow$PageInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$PageInfo;->mMenuCount:I

    move/from16 v20, v0

    .line 571
    .end local v4    # "clip":Landroid/graphics/Rect;
    .end local v12    # "nextOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 589
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget v0, v15, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    move/from16 v22, v0

    add-int v9, v9, v22

    .line 591
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 608
    .end local v15    # "optionRect":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v22, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private canDrawDivider(Ljava/util/ArrayList;I)Z
    .locals 8
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/OptionPopupWindow$OptionMenu;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "optionMenu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 670
    if-lez p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p2, v6, :cond_2

    .line 671
    add-int/lit8 v6, p2, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 672
    .local v3, "prevOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 673
    .local v1, "nextOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    iget-boolean v6, v3, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isPrev:Z

    if-nez v6, :cond_0

    iget-boolean v6, v1, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isNext:Z

    if-eqz v6, :cond_1

    .line 679
    .end local v1    # "nextOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    .end local v3    # "prevOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_0
    :goto_0
    return v4

    .line 674
    .restart local v1    # "nextOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    .restart local v3    # "prevOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_1
    iget-object v2, v3, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->menuItem:Landroid/view/MenuItem;

    .line 675
    .local v2, "prev":Landroid/view/MenuItem;
    iget-object v0, v1, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->menuItem:Landroid/view/MenuItem;

    .line 676
    .local v0, "next":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v7

    if-ne v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "next":Landroid/view/MenuItem;
    .end local v1    # "nextOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    .end local v2    # "prev":Landroid/view/MenuItem;
    .end local v3    # "prevOptionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_2
    move v4, v5

    .line 679
    goto :goto_0
.end method

.method private drawOptionItem(Landroid/graphics/Canvas;Lcom/meizu/widget/OptionPopupWindow$OptionMenu;IIII)V
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "optionMenu"    # Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 768
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isNext:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isPrev:Z

    if-eqz v14, :cond_2

    :cond_0
    const/4 v4, 0x1

    .line 769
    .local v4, "isKey":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 771
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isNext:Z

    if-eqz v14, :cond_3

    .line 772
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    .line 776
    .local v6, "keyDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 777
    .local v11, "w":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 779
    .local v2, "h":I
    move-object/from16 v0, p2

    iget v14, v0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->contentOffset:I

    add-int v12, p3, v14

    .line 780
    .local v12, "x":I
    add-int v14, p4, p6

    sub-int/2addr v14, v2

    div-int/lit8 v13, v14, 0x2

    .line 781
    .local v13, "y":I
    add-int v14, v12, v11

    add-int v15, v13, v2

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 782
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 814
    .end local v2    # "h":I
    .end local v6    # "keyDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1
    :goto_2
    return-void

    .line 768
    .end local v4    # "isKey":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 774
    .restart local v4    # "isKey":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v6    # "keyDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 787
    .end local v6    # "keyDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->menuItem:Landroid/view/MenuItem;

    .line 788
    .local v5, "item":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 789
    .local v10, "s":Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 790
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 791
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 792
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 793
    .restart local v11    # "w":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 794
    .restart local v2    # "h":I
    add-int v14, p3, p5

    sub-int/2addr v14, v11

    div-int/lit8 v12, v14, 0x2

    .line 795
    .restart local v12    # "x":I
    add-int v14, p4, p6

    sub-int/2addr v14, v2

    div-int/lit8 v13, v14, 0x2

    .line 796
    .restart local v13    # "y":I
    add-int v14, v12, v11

    add-int v15, v13, v2

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 797
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 800
    .end local v2    # "h":I
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 801
    .local v8, "labelToDraw":Ljava/lang/String;
    sub-int v14, p5, p3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_PADDING:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v9, v14

    .line 802
    .local v9, "maxMeasuredWidth":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v14, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 803
    .local v7, "labelMeasuredWidth":F
    cmpl-float v14, v7, v9

    if-lez v14, :cond_6

    .line 804
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    .line 805
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v14, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 808
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v14, v15

    .line 809
    .local v1, "fontHeight":I
    add-int v14, p3, p5

    int-to-float v14, v14

    sub-float/2addr v14, v7

    const/high16 v15, 0x40000000    # 2.0f

    div-float v12, v14, v15

    .line 810
    .local v12, "x":F
    add-int v14, p6, p4

    sub-int/2addr v14, v1

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v15, v15

    sub-float v13, v14, v15

    .line 811
    .local v13, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private getBackgrounds()[Landroid/graphics/Bitmap;
    .locals 26

    .prologue
    .line 620
    new-instance v19, Landroid/graphics/Canvas;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Canvas;-><init>()V

    .line 621
    .local v19, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredHeight()I

    move-result v20

    .line 622
    .local v20, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    move/from16 v23, v0

    .line 623
    .local v23, "midLeft":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v24, v4, v5

    .line 624
    .local v24, "midRight":I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    # invokes: Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/meizu/widget/OptionPopupWindow;->access$500(III)[Landroid/graphics/Bitmap;

    move-result-object v18

    .line 625
    .local v18, "bitmaps":[Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ge v0, v4, :cond_3

    .line 626
    # getter for: Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I
    invoke-static {}, Lcom/meizu/widget/OptionPopupWindow;->access$600()[[I

    move-result-object v4

    aget-object v25, v4, v21

    .line 627
    .local v25, "state":[I
    aget-object v3, v18, v21

    .line 628
    .local v3, "bmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 629
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v4, v0, v5, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v4, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_1

    .line 644
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    .line 646
    :cond_1
    shr-int/lit8 v17, v20, 0x1

    .line 647
    .local v17, "MID":I
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 648
    move/from16 v8, v22

    .line 649
    .local v8, "top":I
    sub-int v4, v20, v22

    add-int/lit8 v14, v4, -0x1

    .line 650
    .local v14, "bottom":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 651
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/16 v16, 0x1

    move-object v9, v3

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 653
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    const/16 v16, 0x1

    move-object v9, v3

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 647
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 625
    .end local v8    # "top":I
    .end local v14    # "bottom":I
    .end local v17    # "MID":I
    .end local v22    # "j":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 657
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v25    # "state":[I
    :cond_3
    return-object v18
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .param p1, "rawLabel"    # Ljava/lang/String;
    .param p2, "widthToDraw"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 893
    .local v0, "subLen":I
    if-gt v0, v4, :cond_0

    .line 899
    .end local p1    # "rawLabel":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 896
    .restart local p1    # "rawLabel":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 897
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 898
    .local v1, "width":F
    iget v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 899
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2025"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getMaxWidth()I
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 394
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 395
    const/4 v1, 0x0

    .line 397
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private measureMenuItem(Landroid/view/MenuItem;)I
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 451
    const/4 v2, 0x0

    .line 452
    .local v2, "width":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 461
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v2

    .line 458
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 459
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getContentWidth()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v18

    .line 688
    .local v18, "menu":Landroid/view/Menu;
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getBackgrounds()[Landroid/graphics/Bitmap;

    move-result-object v12

    .line 690
    .local v12, "bitmaps":[Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 694
    .local v14, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 695
    .local v10, "N":I
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 696
    .local v20, "temp":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->offsetX:I

    if-eqz v3, :cond_2

    .line 697
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->offsetX:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    :cond_2
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_d

    .line 701
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 702
    .local v5, "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    iget-object v13, v5, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->clip:Landroid/graphics/Rect;

    .line 703
    .local v13, "clip":Landroid/graphics/Rect;
    if-nez v16, :cond_3

    .line 704
    const/4 v3, 0x0

    iput v3, v13, Landroid/graphics/Rect;->left:I

    .line 706
    :cond_3
    add-int/lit8 v3, v10, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 707
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    .line 709
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_6

    const/4 v11, 0x1

    .line 710
    .local v11, "active":Z
    :goto_2
    if-eqz v11, :cond_7

    const/4 v3, 0x1

    :goto_3
    aget-object v3, v12, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13, v13, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 711
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->canDrawDivider(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 713
    .local v21, "w":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 714
    .local v15, "h":I
    iget v3, v13, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v21, 0x2

    sub-int v17, v3, v4

    .line 715
    .local v17, "l":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v15

    div-int/lit8 v19, v3, 0x2

    .line 716
    .local v19, "t":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    :goto_4
    add-int v19, v19, v3

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    add-int v4, v17, v21

    add-int v22, v19, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 721
    .end local v15    # "h":I
    .end local v17    # "l":I
    .end local v19    # "t":I
    .end local v21    # "w":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 722
    .local v7, "top":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_6
    sub-int v9, v4, v3

    .line 723
    .local v9, "bottom":I
    if-nez v16, :cond_b

    iget v3, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int v6, v3, v4

    .line 724
    .local v6, "left":I
    :goto_7
    add-int/lit8 v3, v10, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_c

    iget v3, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v4

    .local v8, "right":I
    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 732
    invoke-direct/range {v3 .. v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->drawOptionItem(Landroid/graphics/Canvas;Lcom/meizu/widget/OptionPopupWindow$OptionMenu;IIII)V

    .line 699
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 709
    .end local v6    # "left":I
    .end local v7    # "top":I
    .end local v8    # "right":I
    .end local v9    # "bottom":I
    .end local v11    # "active":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 710
    .restart local v11    # "active":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 716
    .restart local v15    # "h":I
    .restart local v17    # "l":I
    .restart local v19    # "t":I
    .restart local v21    # "w":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 721
    .end local v15    # "h":I
    .end local v17    # "l":I
    .end local v19    # "t":I
    .end local v21    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    goto :goto_5

    .line 722
    .restart local v7    # "top":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 723
    .restart local v9    # "bottom":I
    :cond_b
    iget v6, v13, Landroid/graphics/Rect;->left:I

    goto :goto_7

    .line 724
    .restart local v6    # "left":I
    :cond_c
    iget v8, v13, Landroid/graphics/Rect;->right:I

    goto :goto_8

    .line 734
    .end local v5    # "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    .end local v6    # "left":I
    .end local v7    # "top":I
    .end local v9    # "bottom":I
    .end local v11    # "active":Z
    .end local v13    # "clip":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->offsetX:I

    if-eqz v3, :cond_0

    .line 735
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->offsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v16

    if-nez v16, :cond_0

    .line 468
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 524
    :goto_0
    return-void

    .line 472
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 473
    .local v9, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v15, v16, v17

    .line 474
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v11

    .line 475
    .local v11, "menu":Landroid/view/Menu;
    invoke-interface {v11}, Landroid/view/Menu;->size()I

    move-result v4

    .line 476
    .local v4, "N":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_6

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v5, "actionMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_5

    .line 479
    invoke-interface {v11, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->measureMenuItem(Landroid/view/MenuItem;)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_PADDING:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v14, v16, v17

    .line 480
    .local v14, "w":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    .line 481
    .local v10, "max":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    .line 482
    .local v12, "min":I
    :goto_3
    if-ge v14, v12, :cond_1

    .line 483
    move v14, v12

    .line 485
    :cond_1
    if-le v14, v10, :cond_2

    .line 486
    move v14, v10

    .line 488
    :cond_2
    new-instance v16, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    add-int v20, v9, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v11, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/graphics/Rect;Landroid/view/MenuItem;I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/2addr v9, v14

    .line 478
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 480
    .end local v10    # "max":I
    .end local v12    # "min":I
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MAX:I

    goto :goto_2

    .line 481
    .restart local v10    # "max":I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MIN:I

    goto :goto_3

    .line 494
    .end local v10    # "max":I
    .end local v14    # "w":I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_6

    .line 496
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcOptionPage(Ljava/util/ArrayList;)V

    .line 500
    .end local v5    # "actionMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    .end local v7    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static/range {v17 .. v17}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 502
    .local v6, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 503
    .local v13, "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    iget v0, v13, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    move/from16 v16, v0

    add-int v15, v15, v16

    goto :goto_4

    .line 506
    .end local v6    # "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMinWidth:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 514
    move-object/from16 v0, p0

    iput v15, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mContentWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 849
    iget-boolean v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    if-nez v3, :cond_1

    .line 887
    :cond_0
    :goto_0
    return v5

    .line 852
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 854
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 855
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 856
    .local v2, "y":F
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcActiveIndex(FF)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 857
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    .line 858
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ltz v3, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    goto :goto_0

    .line 863
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 864
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 865
    .restart local v2    # "y":F
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcActiveIndex(FF)I

    move-result v0

    .line 866
    .local v0, "activeIndex":I
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-eq v3, v0, :cond_0

    .line 867
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-gez v3, :cond_2

    if-ltz v0, :cond_3

    .line 868
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    .line 870
    :cond_3
    iput v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 871
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    goto :goto_0

    .line 876
    .end local v0    # "activeIndex":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ltz v3, :cond_4

    .line 877
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->post(Ljava/lang/Runnable;)Z

    .line 878
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    .line 880
    :cond_4
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    goto :goto_0

    .line 884
    :pswitch_3
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setArrowOffsetX(II)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "width"    # I

    .prologue
    .line 411
    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 412
    .local v2, "half":I
    const/4 v1, 0x0

    .line 413
    .local v1, "firstOptionWidth":I
    const/4 v3, 0x0

    .line 414
    .local v3, "lastOptionWidth":I
    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static {v5}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 415
    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    # getter for: Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I
    invoke-static {v6}, Lcom/meizu/widget/OptionPopupWindow;->access$200(Lcom/meizu/widget/OptionPopupWindow;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 416
    .local v0, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 417
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 418
    .local v4, "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    iget v1, v4, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    check-cast v4, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;

    .line 420
    .restart local v4    # "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    iget v3, v4, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    .line 429
    .end local v0    # "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/OptionPopupWindow$OptionMenu;>;"
    .end local v4    # "optionMenu":Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
    :cond_0
    div-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    if-ge p1, v5, :cond_1

    .line 430
    div-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int p1, v5, v6

    .line 432
    :cond_1
    div-int/lit8 v5, v3, 0x2

    sub-int v5, p2, v5

    iget-object v6, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le p1, v5, :cond_2

    .line 433
    div-int/lit8 v5, v3, 0x2

    sub-int v5, p2, v5

    iget-object v6, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int p1, v5, v6

    .line 435
    :cond_2
    sub-int v5, p1, v2

    iput v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    .line 436
    return p1
.end method

.method public setArrowUp(Z)V
    .locals 2
    .param p1, "up"    # Z

    .prologue
    .line 401
    iget-boolean v1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 402
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 403
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    .line 404
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->postInvalidate()V

    .line 408
    :cond_0
    return-void

    .line 401
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffsetX(I)V
    .locals 2
    .param p1, "offsetX"    # I

    .prologue
    const/4 v1, 0x0

    .line 444
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->offsetX:I

    if-eq v0, p1, :cond_0

    .line 445
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->offsetX:I

    .line 446
    invoke-virtual {p0, v1, v1}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->onMeasure(II)V

    .line 448
    :cond_0
    return-void
.end method
