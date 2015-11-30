.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$1;,
        Landroid/widget/ListView$DividerFilter;,
        Landroid/widget/ListView$ScrollSelectionRunnable;,
        Landroid/widget/ListView$OnDragSelectListener;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAbandonActiveViews:Z

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerFilterListener:Landroid/widget/ListView$DividerFilter;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDragDownPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragMotionPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragMotionViewBottom:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragMotionViewTop:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragMotionY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragRegionRect:Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragSlop:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mEnableDragSelection:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature variables about drag"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mEnableTopShadow:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mEnableTopShadowReachHeader:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFocuseRect:Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInDividerHeight:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIntercepeDragMotionX:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIntercepeDragMotionY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsBeginDragSelect:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mIsCheckBoxAnim:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsDividerInside:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable whether or not cover divider when press one item"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsMeizuPartitionStyle:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsOutOfDragRegion:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsOutOfListContent:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mItemsCanFocus:Z

.field private mLastDownSelectPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mLastDragMotionY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mLastUpSelectPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mLongPressPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSelectToBottom:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 334
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature init listview for meizu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 342
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 135
    iput-boolean v11, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 137
    iput-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 140
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 145
    new-instance v7, Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-direct {v7, v10}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v7, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 151
    iput-boolean v9, p0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 153
    iput-boolean v9, p0, Landroid/widget/ListView;->mEnableTopShadow:Z

    .line 160
    iput-boolean v9, p0, Landroid/widget/ListView;->mEnableTopShadowReachHeader:Z

    .line 166
    iput-boolean v9, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    .line 172
    iput-object v10, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    .line 178
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 184
    iput v9, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    .line 190
    iput v9, p0, Landroid/widget/ListView;->mDragMotionViewBottom:I

    .line 196
    iput v8, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    .line 202
    iput v8, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 208
    iput v9, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 214
    iput v9, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    .line 220
    iput v9, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    .line 226
    iput v8, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 233
    iput v8, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 239
    iput v8, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 245
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 251
    iput v9, p0, Landroid/widget/ListView;->mDragWidth:I

    .line 257
    iput v9, p0, Landroid/widget/ListView;->mDragSlop:I

    .line 263
    iput v8, p0, Landroid/widget/ListView;->mLongPressPosition:I

    .line 269
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    .line 275
    iput-object v10, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 281
    iput-boolean v9, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    .line 287
    iput-object v10, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    .line 293
    iput-object v10, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    .line 305
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsDividerInside:Z

    .line 311
    iget v7, p0, Landroid/widget/ListView;->mDividerHeight:I

    iput v7, p0, Landroid/widget/ListView;->mInDividerHeight:I

    .line 317
    iput-boolean v11, p0, Landroid/widget/ListView;->mIsCheckBoxAnim:Z

    .line 323
    iput-object v10, p0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    .line 344
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 347
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 349
    .local v4, "entries":[Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 350
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    :cond_0
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_1
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 362
    .local v6, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 363
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_2
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 368
    .local v5, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 369
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 375
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 376
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 379
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 380
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 384
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mIsMeizuPartitionStyle:Z

    .line 388
    const/16 v7, 0x8

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 389
    .local v3, "dividerInside":Z
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDividerInSide(Z)V

    .line 391
    invoke-static {}, Landroid/os/Build;->isProductInternational()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 392
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setDividerInSide(Z)V

    .line 396
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ListView;Z)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ListView;->findCandidateScrollSelection(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListView;

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ListView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->upSelect(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListView;

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/ListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/ListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooLow(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListView;

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/ListView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->downSelect(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/ListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooHigh(I)V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3497
    add-int/lit8 v2, p2, -0x1

    .line 3498
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3499
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3500
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3502
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3506
    add-int/lit8 v2, p2, 0x1

    .line 3507
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3508
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3509
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3511
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 420
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 423
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 426
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 428
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 431
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 433
    :cond_0
    if-gez v2, :cond_1

    .line 435
    const/4 v2, 0x0

    .line 458
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 459
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 462
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 439
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 444
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ListView;->mDockingBottomHeight:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 447
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 450
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 453
    :cond_4
    if-lez v2, :cond_1

    .line 454
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 3092
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 3093
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 3095
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3097
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_6

    .line 3098
    add-int/lit8 v3, v7, -0x1

    .line 3099
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 3100
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3102
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 3104
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 3105
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3107
    :cond_1
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3108
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3110
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 3111
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 3112
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 3115
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3

    .line 3117
    const/4 v10, 0x0

    .line 3169
    .end local v1    # "goalBottom":I
    :goto_1
    return v10

    .line 3120
    .restart local v1    # "goalBottom":I
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 3123
    const/4 v10, 0x0

    goto :goto_1

    .line 3126
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 3128
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 3130
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 3131
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3134
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .line 3136
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 3137
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 3138
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3140
    :cond_7
    :goto_2
    if-gez v3, :cond_8

    .line 3142
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 3143
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3144
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    .line 3146
    :cond_8
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3147
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3148
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 3149
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    .line 3150
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 3152
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_a

    .line 3154
    const/4 v10, 0x0

    goto :goto_1

    .line 3157
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 3160
    const/4 v10, 0x0

    goto :goto_1

    .line 3163
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 3164
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 3166
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 3167
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3169
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3361
    const/4 v0, 0x0

    .line 3362
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3363
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3364
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3365
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3366
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3367
    if-lez p3, :cond_0

    .line 3368
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3380
    :cond_0
    :goto_0
    return v0

    .line 3372
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3373
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3374
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3375
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3376
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 3259
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 3261
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3262
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3263
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3288
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3289
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3293
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3294
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3295
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 3298
    :cond_1
    const/4 v14, 0x0

    .line 3320
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 3265
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 3266
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 3267
    .local v12, "topFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 3269
    .local v5, "listTop":I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3273
    .local v13, "ySearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3285
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 3266
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 3267
    .restart local v12    # "topFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5    # "listTop":I
    :cond_5
    move v13, v5

    .line 3269
    goto :goto_4

    .line 3275
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 3277
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 3279
    .local v4, "listBottom":I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3283
    .restart local v13    # "ySearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 3275
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 3277
    .restart local v2    # "bottomFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4    # "listBottom":I
    :cond_9
    move v13, v4

    .line 3279
    goto :goto_8

    .line 3302
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3304
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 3305
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    .line 3307
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3308
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3310
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3315
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3316
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3317
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3320
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2876
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2950
    :cond_0
    :goto_0
    return v9

    .line 2880
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2881
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2883
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2884
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2887
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2888
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2889
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2890
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2893
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2894
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2895
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2896
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2897
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2898
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2899
    move v5, v4

    .line 2900
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2903
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2904
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2905
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2908
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2909
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2912
    :cond_4
    if-lez v0, :cond_5

    .line 2913
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2914
    const/4 v3, 0x1

    .line 2919
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2921
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2922
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2923
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2928
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2930
    const/4 v6, 0x0

    .line 2931
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2935
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2938
    :cond_8
    if-eqz v3, :cond_0

    .line 2939
    if-eqz v6, :cond_9

    .line 2940
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2941
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2943
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2944
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2946
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2947
    goto/16 :goto_0

    .line 2887
    .end local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2893
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_d
    move v7, v9

    .line 2895
    goto :goto_3

    .line 2913
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 752
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 754
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 755
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 756
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 757
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 758
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 754
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2520
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2667
    :cond_1
    :goto_0
    return v4

    .line 2524
    :cond_2
    iget-boolean v5, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2525
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2528
    :cond_3
    const/4 v2, 0x0

    .line 2529
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2531
    .local v0, "action":I
    if-eq v0, v4, :cond_4

    .line 2532
    sparse-switch p1, :sswitch_data_0

    .line 2648
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2652
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2656
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2667
    goto :goto_0

    .line 2534
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2535
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2536
    if-nez v2, :cond_4

    move v1, p2

    .line 2537
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2538
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2539
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2545
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2546
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2551
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2552
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2553
    if-nez v2, :cond_4

    move v1, p2

    .line 2554
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2555
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2556
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2562
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2563
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2568
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2569
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2574
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2575
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2581
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2582
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2583
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2585
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2586
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2592
    :sswitch_5
    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2593
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2594
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2598
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2594
    goto :goto_6

    .line 2595
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2596
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2603
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2604
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2605
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2606
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2611
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2612
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2613
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2614
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2619
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2620
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2625
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2626
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2658
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2661
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2664
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2532
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private contentFits()Z
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature copy from AbsListView.contentFits()"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5082
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 5083
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 5092
    :cond_0
    :goto_0
    return v1

    .line 5084
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 5092
    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature recompute the value of end"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1710
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1711
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1714
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1717
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1724
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ListView;->mDockingBottomHeight:I

    sub-int v1, v7, v8

    .line 1729
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1730
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1731
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1735
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1736
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1738
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1741
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1742
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1745
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1747
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1752
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1764
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1767
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1770
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1773
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1776
    .local v6, "start":I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1780
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1781
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1782
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1783
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1787
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    .line 1788
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1789
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1791
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1794
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1795
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1798
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1800
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1807
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    .line 1802
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1803
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3391
    const/4 v0, 0x0

    .line 3392
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3393
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3394
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3395
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3396
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3400
    :cond_0
    :goto_0
    return v0

    .line 3397
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3398
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private downSelect(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Slide down from the upper"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4393
    if-ne p1, v6, :cond_1

    .line 4394
    move p1, p2

    .line 4397
    :goto_0
    move v4, p1

    .local v4, "position":I
    :goto_1
    if-gt v4, p2, :cond_6

    .line 4398
    iget v5, p0, Landroid/widget/ListView;->mLongPressPosition:I

    if-ne v4, v5, :cond_2

    .line 4423
    :cond_0
    :goto_2
    return-void

    .line 4396
    .end local v4    # "position":I
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4401
    .restart local v4    # "position":I
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isItemSelectable(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4397
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4405
    :cond_3
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, v4, v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4406
    .local v0, "dragView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 4407
    .local v1, "id":J
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4408
    const/4 v3, 0x0

    .line 4409
    .local v3, "newSelected":Z
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    if-eqz v5, :cond_4

    .line 4410
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    invoke-interface {v5, v0, v4, v1, v2}, Landroid/widget/ListView$OnDragSelectListener;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v3

    .line 4415
    :goto_4
    invoke-direct {p0, v0, v3}, Landroid/widget/ListView;->updateDragView(Landroid/view/View;Z)V

    .line 4419
    iput v4, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4420
    iput v6, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    goto :goto_3

    .line 4412
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    .line 4413
    :goto_5
    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_4

    .line 4412
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 4422
    .end local v0    # "dragView":Landroid/view/View;
    .end local v1    # "id":J
    .end local v3    # "newSelected":Z
    :cond_6
    iput v6, p0, Landroid/widget/ListView;->mLongPressPosition:I

    goto :goto_2
.end method

.method private endDragSelection()V
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature end drag selection"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4762
    iput v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 4763
    iput v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 4764
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 4765
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    .line 4766
    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4767
    iput v0, p0, Landroid/widget/ListView;->mLongPressPosition:I

    .line 4768
    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4769
    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4770
    iput v0, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    .line 4771
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4772
    iput v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    .line 4773
    iput v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    .line 4774
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-eqz v0, :cond_0

    .line 4775
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->finish()V

    .line 4777
    :cond_0
    return-void
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1099
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1100
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 1101
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1102
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1103
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1109
    :goto_0
    return-void

    .line 1105
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1106
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1107
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 11
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature load all item for EditTextPreference"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 938
    const/4 v8, 0x0

    .line 940
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 941
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 947
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableForEditTextPreference:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableLoadAllItems:Z

    if-eqz v0, :cond_5

    .line 948
    :cond_1
    :goto_0
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_4

    .line 950
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3

    move v5, v3

    .line 951
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 953
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 954
    if-eqz v5, :cond_2

    .line 955
    move-object v8, v6

    .line 957
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 958
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_3
    move v5, v10

    .line 950
    goto :goto_1

    .line 959
    :cond_4
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    move-object v9, v8

    .line 977
    .end local v8    # "selectedView":Landroid/view/View;
    .local v9, "selectedView":Landroid/view/View;
    :goto_2
    return-object v9

    .line 964
    .end local v9    # "selectedView":Landroid/view/View;
    .restart local v8    # "selectedView":Landroid/view/View;
    :cond_5
    :goto_3
    if-ge p2, v7, :cond_8

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_8

    .line 966
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_7

    move v5, v3

    .line 967
    .restart local v5    # "selected":Z
    :goto_4
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 969
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 970
    if-eqz v5, :cond_6

    .line 971
    move-object v8, v6

    .line 973
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 974
    goto :goto_3

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    move v5, v10

    .line 966
    goto :goto_4

    .line 976
    :cond_8
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    move-object v9, v8

    .line 977
    .end local v8    # "selectedView":Landroid/view/View;
    .restart local v9    # "selectedView":Landroid/view/View;
    goto :goto_2
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 1067
    sub-int v6, p2, p1

    .line 1069
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1071
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 1073
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1075
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1076
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    .line 1077
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1080
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1082
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 1083
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1088
    :goto_0
    return-object v7

    .line 1085
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 1123
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1124
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1128
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 1130
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 1133
    .local v7, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1137
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 1140
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 1144
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 1145
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1148
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1164
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1166
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1167
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1172
    :goto_1
    return-object v10

    .line 1149
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 1152
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 1156
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 1157
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1160
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1169
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .param p1, "nextTop"    # I

    .prologue
    .line 1047
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1048
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1049
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1050
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1052
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v3, 0x1

    .line 1658
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1659
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1661
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1666
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1667
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1668
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1670
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1671
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1672
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1673
    .local v8, "childCount":I
    if-lez v8, :cond_0

    .line 1674
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1687
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1692
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1658
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1677
    .restart local v5    # "tempIsSelected":Z
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1679
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1680
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1681
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1682
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    .line 1683
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1689
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1690
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1692
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 11
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature load all item for EditTextPreference"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 995
    const/4 v8, 0x0

    .line 997
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 998
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 999
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1004
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableForEditTextPreference:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableLoadAllItems:Z

    if-eqz v0, :cond_5

    .line 1005
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 1007
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3

    move v5, v10

    .line 1008
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1009
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 1010
    if-eqz v5, :cond_2

    .line 1011
    move-object v8, v6

    .line 1013
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 1014
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_3
    move v5, v3

    .line 1007
    goto :goto_1

    .line 1016
    :cond_4
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1017
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    move-object v9, v8

    .line 1035
    .end local v8    # "selectedView":Landroid/view/View;
    .local v9, "selectedView":Landroid/view/View;
    :goto_2
    return-object v9

    .line 1022
    .end local v9    # "selectedView":Landroid/view/View;
    .restart local v8    # "selectedView":Landroid/view/View;
    :cond_5
    :goto_3
    if-le p2, v7, :cond_8

    if-ltz p1, :cond_8

    .line 1024
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_7

    move v5, v10

    .line 1025
    .restart local v5    # "selected":Z
    :goto_4
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1026
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 1027
    if-eqz v5, :cond_6

    .line 1028
    move-object v8, v6

    .line 1030
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 1031
    goto :goto_3

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    move v5, v3

    .line 1024
    goto :goto_4

    .line 1033
    :cond_8
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1034
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    move-object v9, v8

    .line 1035
    .end local v8    # "selectedView":Landroid/view/View;
    .restart local v9    # "selectedView":Landroid/view/View;
    goto :goto_2
.end method

.method private findCandidateScrollSelection(Z)I
    .locals 8
    .param p1, "up"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature find candidate item"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4900
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4901
    .local v1, "childCount":I
    const/4 v4, -0x1

    .line 4902
    .local v4, "position":I
    if-eqz p1, :cond_4

    .line 4903
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 4904
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4905
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_3

    .line 4906
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v4, v5, v3

    .line 4921
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 4922
    .local v2, "firtFooterPosition":I
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isItemSelectable(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4923
    :cond_1
    const/4 v4, -0x1

    .line 4926
    :cond_2
    return v4

    .line 4903
    .end local v2    # "firtFooterPosition":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4911
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "index":I
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .restart local v3    # "index":I
    :goto_2
    if-ltz v3, :cond_0

    .line 4912
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4913
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    .line 4914
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v4, v5, v3

    .line 4915
    goto :goto_1

    .line 4911
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private getAccessibilityFocusedChild()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2113
    invoke-virtual {p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 2114
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_1

    move-object v0, v3

    .line 2133
    :cond_0
    :goto_0
    return-object v0

    .line 2118
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 2119
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 2120
    goto :goto_0

    .line 2123
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2124
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v1, p0, :cond_3

    move-object v0, v1

    .line 2125
    check-cast v0, Landroid/view/View;

    .line 2126
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 2129
    :cond_3
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 2130
    goto :goto_0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 3076
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1185
    move v0, p1

    .line 1186
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1187
    sub-int/2addr v0, p2

    .line 1189
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1202
    move v0, p1

    .line 1203
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 1204
    add-int/2addr v0, p2

    .line 1206
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 2768
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2769
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2773
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2774
    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2775
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2776
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2779
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2780
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2782
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2784
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2785
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2786
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2787
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2788
    const/4 v5, 0x1

    .line 2802
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .line 2795
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2797
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2798
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2802
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2968
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2969
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2979
    :cond_0
    const/4 v5, 0x0

    .line 2980
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2981
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2982
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2983
    move v7, v2

    .line 2984
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2985
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2986
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2987
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2995
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2998
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    .line 2999
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3000
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3004
    :cond_1
    if-eqz v0, :cond_2

    .line 3005
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3006
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3008
    :cond_2
    return-void

    .line 2989
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_3
    move v7, v4

    .line 2990
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2991
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2992
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 2999
    .restart local v3    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 3005
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3343
    if-ne p1, p2, :cond_1

    .line 3348
    :cond_0
    :goto_0
    return v1

    .line 3347
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3348
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutChildrenForMeiZu()V
    .locals 9
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 5143
    iget-boolean v5, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 5144
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5145
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ListView;->mDockingBottomHeight:I

    sub-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 5146
    .local v0, "bottomDelta":I
    if-lez v0, :cond_0

    .line 5147
    neg-int v5, v0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 5149
    :cond_0
    iput-boolean v8, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    .line 5154
    .end local v0    # "bottomDelta":I
    .end local v2    # "lastChild":Landroid/view/View;
    :cond_1
    :goto_0
    iget-boolean v5, p0, Landroid/widget/ListView;->mCenterContent:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->shouldCenterContent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5155
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    .line 5156
    .local v1, "childrenHeight":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v5, v6

    .line 5157
    .local v3, "listHeight":I
    sub-int v5, v3, v1

    div-int/lit8 v4, v5, 0x2

    .line 5158
    .local v4, "trackOffset":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    neg-int v4, v4

    .line 5159
    :cond_2
    invoke-virtual {p0, v4, v4}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    .line 5161
    .end local v1    # "childrenHeight":I
    .end local v3    # "listHeight":I
    .end local v4    # "trackOffset":I
    :cond_3
    return-void

    .line 5150
    :cond_4
    iget-boolean v5, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    if-eqz v5, :cond_1

    .line 5151
    iput-boolean v8, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 3206
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3207
    .local v1, "firstPosition":I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 3208
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 3211
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 3246
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 3208
    goto :goto_0

    .line 3214
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 3215
    move v5, v1

    .line 3218
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3219
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3220
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 3221
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3220
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3227
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 3228
    .local v2, "last":I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 3231
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 3232
    goto :goto_1

    .line 3228
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 3234
    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    .line 3235
    move v5, v2

    .line 3238
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3239
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 3240
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3239
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    .line 3246
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 2154
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2156
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2157
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2160
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2172
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .line 2167
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2170
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2172
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 3018
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 3019
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 3020
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 3022
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3025
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 3026
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 3027
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3030
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3038
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3039
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 3040
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3045
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3047
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3049
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 3050
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3054
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3055
    return-void

    .line 3052
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1503
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1504
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1505
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1508
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1510
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1512
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1514
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1515
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1519
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1520
    return-void

    .line 1517
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1249
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1253
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1255
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1258
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1280
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1283
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1286
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1290
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1293
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1296
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1299
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1300
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1301
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1304
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1306
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1310
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1311
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1312
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1313
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1394
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    .line 1315
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1316
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1317
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1319
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1340
    if-eqz p2, :cond_4

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1352
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1354
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1357
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1360
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1361
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1362
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1365
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1369
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1347
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1372
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1377
    .local v4, "oldTop":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1380
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1383
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1384
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1386
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1391
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x82

    const/4 v4, -0x1

    .line 2839
    if-ne p3, v7, :cond_3

    .line 2840
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2841
    .local v1, "listBottom":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_2

    .line 2842
    if-eq p2, v4, :cond_1

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 2862
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 2865
    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .line 2842
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_0

    .line 2847
    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    goto :goto_1

    .line 2850
    .end local v1    # "listBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2851
    .local v2, "listTop":I
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_5

    .line 2852
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2853
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_4

    if-gt p2, v0, :cond_4

    add-int/lit8 v3, p2, -0x1

    .line 2856
    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_4
    move v3, v0

    .line 2853
    goto :goto_2

    .line 2858
    .end local v0    # "lastPos":I
    :cond_5
    invoke-direct {p0, p3}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    goto :goto_1

    .line 2865
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_6
    if-ne p3, v7, :cond_7

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private onDragMotionChanged(I)Z
    .locals 8
    .param p1, "motionY"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature deal on drag motion change"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4361
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 4362
    .local v4, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v6, v7

    .line 4363
    .local v3, "listBottom":I
    if-lt p1, v4, :cond_0

    if-le p1, v3, :cond_1

    .line 4385
    :cond_0
    :goto_0
    return v5

    .line 4367
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v1

    .line 4370
    .local v1, "dragPosition":I
    iget v6, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v7

    sub-int v2, v6, v7

    .line 4371
    .local v2, "firtFooterPosition":I
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->isHeaderOrFooter(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4375
    if-ltz p1, :cond_0

    if-ltz v1, :cond_0

    .line 4376
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4377
    .local v0, "dragMotionView":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    .line 4378
    iget v5, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    if-nez v5, :cond_2

    .line 4379
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    .line 4382
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, p0, Landroid/widget/ListView;->mDragMotionViewBottom:I

    .line 4383
    const/4 v5, 0x1

    goto :goto_0

    .line 4381
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    goto :goto_1
.end method

.method private onSizeChangedForMeiZu()V
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature update region on size change"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5119
    iget-object v0, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 5120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 5131
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getRight()I

    move-result v1

    iget v2, p0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5132
    iget-object v0, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/widget/ListView;->mDefaultCheckWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5133
    iget-object v0, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/ListView;->mPaddingTop:I

    iget v2, p0, Landroid/widget/ListView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5134
    iget-object v0, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/widget/ListView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5135
    return-void
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3328
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3329
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3330
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3331
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3332
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3335
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3063
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3064
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3065
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 3066
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 3067
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3068
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 3069
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3070
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 548
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 549
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 550
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 551
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 548
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature for EditTextPreference"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 3416
    iget-boolean v9, p0, Landroid/widget/ListView;->mShouldDelaySpringBack:Z

    if-eqz v9, :cond_1

    if-gez p1, :cond_1

    iget v9, p0, Landroid/widget/ListView;->mCurrentOverScrollDistance:I

    if-gez v9, :cond_1

    .line 3417
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->springBackDelay(I)V

    .line 3494
    :cond_0
    :goto_0
    return-void

    .line 3420
    :cond_1
    iget-boolean v9, p0, Landroid/widget/ListView;->mEnableForEditTextPreference:Z

    if-eqz v9, :cond_2

    .line 3421
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    goto :goto_0

    .line 3425
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3427
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3428
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3429
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3431
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_6

    .line 3435
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3436
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3437
    .local v1, "last":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_3

    .line 3438
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3439
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_3

    .line 3440
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3441
    add-int/lit8 v7, v7, 0x1

    .line 3445
    goto :goto_1

    .line 3450
    .end local v3    # "lastVisiblePosition":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_4

    .line 3451
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3455
    :cond_4
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3456
    .local v0, "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_0

    .line 3457
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3458
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3459
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3461
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3462
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3463
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3467
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_6
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3470
    .restart local v0    # "first":Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_7

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_7

    .line 3471
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3472
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_3

    .line 3477
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_8

    .line 3478
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3481
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3482
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3485
    .restart local v1    # "last":Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_0

    .line 3486
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3487
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3488
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3490
    :cond_9
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3491
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3492
    goto :goto_4
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature set the state of checkbox"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2195
    const-wide/16 v22, 0x8

    const-string/jumbo v24, "setupListItem"

    invoke-static/range {v22 .. v24}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2197
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_9

    const/4 v14, 0x1

    .line 2198
    .local v14, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_a

    const/16 v20, 0x1

    .line 2199
    .local v20, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move/from16 v16, v0

    .line 2200
    .local v16, "mode":I
    if-lez v16, :cond_b

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    .line 2202
    .local v13, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_c

    const/16 v19, 0x1

    .line 2203
    .local v19, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_0
    const/16 v17, 0x1

    .line 2207
    .local v17, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 2208
    .local v18, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 2209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 2211
    .restart local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2213
    if-eqz p7, :cond_2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    :cond_2
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 2215
    :cond_3
    if-eqz p4, :cond_e

    const/16 v22, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2224
    :goto_6
    if-eqz v20, :cond_4

    .line 2225
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 2228
    :cond_4
    if-eqz v19, :cond_5

    .line 2229
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 2232
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2233
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v22, p1

    .line 2234
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2256
    :cond_6
    :goto_7
    if-eqz v17, :cond_18

    .line 2257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 2259
    .local v10, "childWidthSpec":I
    move-object/from16 v0, v18

    iget v15, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2261
    .local v15, "lpHeight":I
    if-lez v15, :cond_17

    .line 2262
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2266
    .local v7, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v7}, Landroid/view/View;->measure(II)V

    .line 2271
    .end local v7    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v15    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 2272
    .local v21, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 2273
    .local v11, "h":I
    if-eqz p4, :cond_19

    move/from16 v9, p3

    .line 2275
    .local v9, "childTop":I
    :goto_a
    if-eqz v17, :cond_1a

    .line 2276
    add-int v8, p5, v21

    .line 2277
    .local v8, "childRight":I
    add-int v6, v9, v11

    .line 2278
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 2284
    .end local v6    # "childBottom":I
    .end local v8    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v22

    if-nez v22, :cond_7

    .line 2285
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2288
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 2290
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2293
    :cond_8
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 2294
    return-void

    .line 2197
    .end local v9    # "childTop":I
    .end local v11    # "h":I
    .end local v13    # "isPressed":Z
    .end local v14    # "isSelected":Z
    .end local v16    # "mode":I
    .end local v17    # "needToMeasure":Z
    .end local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v19    # "updateChildPressed":Z
    .end local v20    # "updateChildSelected":Z
    .end local v21    # "w":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2198
    .restart local v14    # "isSelected":Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2200
    .restart local v16    # "mode":I
    .restart local v20    # "updateChildSelected":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2202
    .restart local v13    # "isPressed":Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2203
    .restart local v19    # "updateChildPressed":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 2215
    .restart local v17    # "needToMeasure":Z
    .restart local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 2217
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2218
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 2219
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2221
    :cond_10
    if-eqz p4, :cond_11

    const/16 v22, -0x1

    :goto_c
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v18

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v22, 0x0

    goto :goto_c

    .line 2235
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 2241
    if-eqz p1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 2243
    :cond_13
    const v22, 0x1020001

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2244
    .local v5, "checkbox":Landroid/view/View;
    if-eqz v5, :cond_15

    instance-of v0, v5, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 2245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCheckBoxAnim:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    instance-of v0, v5, Landroid/widget/CheckBox;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v22, v5

    check-cast v22, Landroid/widget/CheckBox;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setIsAnimation(Z)V

    .line 2246
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    const/4 v12, 0x1

    .line 2247
    .local v12, "inSelectionMode":Z
    :goto_d
    check-cast v5, Landroid/widget/Checkable;

    .end local v5    # "checkbox":Landroid/view/View;
    invoke-interface {v5, v12}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2251
    .end local v12    # "inSelectionMode":Z
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 2246
    .restart local v5    # "checkbox":Landroid/view/View;
    :cond_16
    const/4 v12, 0x0

    goto :goto_d

    .line 2264
    .end local v5    # "checkbox":Landroid/view/View;
    .restart local v10    # "childWidthSpec":I
    .restart local v15    # "lpHeight":I
    :cond_17
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_8

    .line 2268
    .end local v7    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v15    # "lpHeight":I
    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2273
    .restart local v11    # "h":I
    .restart local v21    # "w":I
    :cond_19
    sub-int v9, p3, v11

    goto/16 :goto_a

    .line 2280
    .restart local v9    # "childTop":I
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, p5, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2281
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v9, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 776
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 777
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 778
    .local v0, "bottomOfBottomChild":I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 780
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 782
    .local v3, "listBottom":I
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 768
    iget v2, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 769
    .local v0, "listTop":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private upSelect(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Sliding from bottom to top"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4430
    if-ne p1, v6, :cond_1

    .line 4431
    move p1, p2

    .line 4435
    :goto_0
    move v4, p1

    .local v4, "position":I
    :goto_1
    if-lt v4, p2, :cond_6

    .line 4436
    iget v5, p0, Landroid/widget/ListView;->mLongPressPosition:I

    if-ne v4, v5, :cond_2

    .line 4462
    :cond_0
    :goto_2
    return-void

    .line 4433
    .end local v4    # "position":I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 4439
    .restart local v4    # "position":I
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isItemSelectable(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4435
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4443
    :cond_3
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, v4, v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4444
    .local v0, "dragView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 4445
    .local v1, "id":J
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4446
    const/4 v3, 0x0

    .line 4447
    .local v3, "newSelected":Z
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    if-eqz v5, :cond_4

    .line 4448
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    invoke-interface {v5, v0, v4, v1, v2}, Landroid/widget/ListView$OnDragSelectListener;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v3

    .line 4453
    :goto_4
    invoke-direct {p0, v0, v3}, Landroid/widget/ListView;->updateDragView(Landroid/view/View;Z)V

    .line 4458
    iput v4, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4459
    iput v6, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    goto :goto_3

    .line 4450
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    .line 4451
    :goto_5
    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_4

    .line 4450
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 4461
    .end local v0    # "dragView":Landroid/view/View;
    .end local v1    # "id":J
    .end local v3    # "newSelected":Z
    :cond_6
    iput v6, p0, Landroid/widget/ListView;->mLongPressPosition:I

    goto :goto_2
.end method

.method private updateDragView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "checked"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature update drag view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4472
    if-nez p1, :cond_0

    .line 4476
    :goto_0
    return-void

    .line 4475
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 609
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 610
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 574
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 575
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 576
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 577
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 578
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 583
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 588
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 592
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 517
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 481
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 482
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 483
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 484
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 485
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 490
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 495
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 499
    :cond_1
    return-void
.end method

.method public applyMeizuPartitionStyle()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature apply meizu partition style"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 5060
    iput-boolean v4, p0, Landroid/widget/ListView;->mIsMeizuPartitionStyle:Z

    .line 5061
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 5066
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 5067
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 5068
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDividerInSide(Z)V

    .line 5069
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 5070
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10804ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5071
    const v0, 0x1080500

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 5072
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 4009
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3986
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2814
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2815
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2816
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2817
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2821
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2298
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkedAll()V
    .locals 7
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Select all"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 4790
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 4791
    .local v0, "firtFooterPosition":I
    invoke-virtual {p0}, Landroid/widget/ListView;->clearChoices()V

    .line 4792
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 4793
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "position":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4794
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->isItemSelectable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4793
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4798
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4799
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4800
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4802
    :cond_1
    iget v2, p0, Landroid/widget/ListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/ListView;->mCheckedItemCount:I

    goto :goto_1

    .line 4806
    .end local v1    # "position":I
    :cond_2
    iget-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-nez v2, :cond_3

    .line 4807
    iput-boolean v6, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 4808
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 4809
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4811
    :cond_3
    return-void
.end method

.method public clearScrapViewsIfNeeded()V
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5030
    const-string v0, "ListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearScrapViewsIfNeeded: mRecycler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAbandonActiveViews = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 5033
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 5034
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature set data changed when set mEnableForEditTextPreference"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 3609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v45, v0

    if-eqz v45, :cond_0

    .line 3610
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    .line 3614
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3615
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v37, v0

    .line 3616
    .local v37, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    .line 3617
    .local v36, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v37, :cond_a

    const/4 v14, 0x1

    .line 3618
    .local v14, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v36, :cond_b

    const/4 v13, 0x1

    .line 3619
    .local v13, "drawOverscrollFooter":Z
    :goto_1
    if-lez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v45, v0

    if-eqz v45, :cond_c

    const/4 v12, 0x1

    .line 3621
    .local v12, "drawDividers":Z
    :goto_2
    if-nez v12, :cond_1

    if-nez v14, :cond_1

    if-eqz v13, :cond_21

    .line 3623
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3624
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v45, v0

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3625
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v46, v0

    sub-int v45, v45, v46

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v46, v0

    sub-int v45, v45, v46

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3627
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    .line 3628
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3629
    .local v22, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v31, v0

    .line 3634
    .local v31, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    sub-int v45, v31, v45

    add-int/lit8 v21, v45, -0x1

    .line 3636
    .local v21, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v23, v0

    .line 3637
    .local v23, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v20, v0

    .line 3638
    .local v20, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v19, v0

    .line 3639
    .local v19, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3640
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3645
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v45

    if-eqz v45, :cond_d

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v45

    if-nez v45, :cond_d

    const/16 v18, 0x1

    .line 3647
    .local v18, "fillForMissingDividers":Z
    :goto_3
    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    if-nez v45, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v45, v0

    if-eqz v45, :cond_2

    .line 3648
    new-instance v45, Landroid/graphics/Paint;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Landroid/graphics/Paint;->setColor(I)V

    .line 3651
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    .line 3653
    .local v38, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x0

    .line 3654
    .local v17, "effectivePaddingTop":I
    const/16 v16, 0x0

    .line 3655
    .local v16, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x22

    const/16 v46, 0x22

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 3662
    :cond_3
    instance-of v0, v4, Landroid/widget/ListView$DividerFilter;

    move/from16 v25, v0

    .line 3663
    .local v25, "isDividerFilter":Z
    instance-of v0, v4, Landroid/widget/HeaderViewListAdapter;

    move/from16 v29, v0

    .line 3664
    .local v29, "isHeaderViewListAdapter":Z
    const/16 v44, 0x0

    .line 3665
    .local v44, "wrappedAdapter":Landroid/widget/ListAdapter;
    if-eqz v29, :cond_4

    move-object/from16 v45, v4

    .line 3666
    check-cast v45, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual/range {v45 .. v45}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v44

    .line 3667
    move-object/from16 v0, v44

    instance-of v0, v0, Landroid/widget/ListView$DividerFilter;

    move/from16 v25, v0

    .line 3668
    if-nez v25, :cond_4

    .line 3669
    const/16 v44, 0x0

    .line 3675
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v46, v0

    sub-int v45, v45, v46

    sub-int v45, v45, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v46, v0

    add-int v33, v45, v46

    .line 3676
    .local v33, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v45, v0

    if-nez v45, :cond_24

    .line 3677
    const/4 v6, 0x0

    .line 3680
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v40, v0

    .line 3681
    .local v40, "scrollY":I
    if-lez v9, :cond_5

    if-gez v40, :cond_5

    .line 3682
    if-eqz v14, :cond_e

    .line 3683
    const/16 v45, 0x0

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3684
    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3693
    :cond_5
    :goto_4
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_5
    move/from16 v0, v24

    if-ge v0, v9, :cond_1c

    .line 3694
    add-int v32, v19, v24

    .line 3695
    .local v32, "itemIndex":I
    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    const/16 v28, 0x1

    .line 3696
    .local v28, "isHeader":Z
    :goto_6
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    const/16 v27, 0x1

    .line 3697
    .local v27, "isFooter":Z
    :goto_7
    if-nez v23, :cond_6

    if-nez v28, :cond_9

    :cond_6
    if-nez v20, :cond_7

    if-nez v27, :cond_9

    .line 3698
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3699
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3700
    add-int/lit8 v45, v9, -0x1

    move/from16 v0, v24

    move/from16 v1, v45

    if-ne v0, v1, :cond_11

    const/16 v30, 0x1

    .line 3704
    .local v30, "isLastItem":Z
    :goto_8
    const/16 v42, 0x1

    .line 3705
    .local v42, "toDraw":Z
    if-eqz v25, :cond_13

    .line 3706
    if-eqz v29, :cond_12

    .line 3707
    if-eqz v44, :cond_8

    if-nez v28, :cond_8

    if-nez v27, :cond_8

    move-object/from16 v45, v44

    .line 3708
    check-cast v45, Landroid/widget/ListView$DividerFilter;

    add-int v46, v19, v24

    sub-int v46, v46, v22

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    .line 3721
    :cond_8
    :goto_9
    if-nez v42, :cond_15

    .line 3693
    .end local v8    # "child":Landroid/view/View;
    .end local v30    # "isLastItem":Z
    .end local v42    # "toDraw":Z
    :cond_9
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 3617
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v12    # "drawDividers":Z
    .end local v13    # "drawOverscrollFooter":Z
    .end local v14    # "drawOverscrollHeader":Z
    .end local v16    # "effectivePaddingBottom":I
    .end local v17    # "effectivePaddingTop":I
    .end local v18    # "fillForMissingDividers":Z
    .end local v19    # "first":I
    .end local v20    # "footerDividers":Z
    .end local v21    # "footerLimit":I
    .end local v22    # "headerCount":I
    .end local v23    # "headerDividers":Z
    .end local v24    # "i":I
    .end local v25    # "isDividerFilter":Z
    .end local v27    # "isFooter":Z
    .end local v28    # "isHeader":Z
    .end local v29    # "isHeaderViewListAdapter":Z
    .end local v31    # "itemCount":I
    .end local v32    # "itemIndex":I
    .end local v33    # "listBottom":I
    .end local v38    # "paint":Landroid/graphics/Paint;
    .end local v40    # "scrollY":I
    .end local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 3618
    .restart local v14    # "drawOverscrollHeader":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3619
    .restart local v13    # "drawOverscrollFooter":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3645
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v12    # "drawDividers":Z
    .restart local v19    # "first":I
    .restart local v20    # "footerDividers":Z
    .restart local v21    # "footerLimit":I
    .restart local v22    # "headerCount":I
    .restart local v23    # "headerDividers":Z
    .restart local v31    # "itemCount":I
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3686
    .restart local v6    # "bottom":I
    .restart local v16    # "effectivePaddingBottom":I
    .restart local v17    # "effectivePaddingTop":I
    .restart local v18    # "fillForMissingDividers":Z
    .restart local v25    # "isDividerFilter":Z
    .restart local v29    # "isHeaderViewListAdapter":Z
    .restart local v33    # "listBottom":I
    .restart local v38    # "paint":Landroid/graphics/Paint;
    .restart local v40    # "scrollY":I
    .restart local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_e
    if-eqz v12, :cond_5

    .line 3687
    const/16 v45, 0x0

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3688
    neg-int v0, v10

    move/from16 v45, v0

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3689
    const/16 v45, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 3695
    .restart local v24    # "i":I
    .restart local v32    # "itemIndex":I
    :cond_f
    const/16 v28, 0x0

    goto :goto_6

    .line 3696
    .restart local v28    # "isHeader":Z
    :cond_10
    const/16 v27, 0x0

    goto :goto_7

    .line 3700
    .restart local v8    # "child":Landroid/view/View;
    .restart local v27    # "isFooter":Z
    :cond_11
    const/16 v30, 0x0

    goto :goto_8

    .restart local v30    # "isLastItem":Z
    .restart local v42    # "toDraw":Z
    :cond_12
    move-object/from16 v45, v4

    .line 3711
    check-cast v45, Landroid/widget/ListView$DividerFilter;

    add-int v46, v19, v24

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    goto :goto_9

    .line 3713
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    if-eqz v45, :cond_8

    .line 3714
    if-eqz v29, :cond_14

    if-nez v28, :cond_14

    if-nez v27, :cond_14

    .line 3715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    add-int v46, v19, v24

    sub-int v46, v46, v22

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    goto :goto_9

    .line 3717
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    add-int v46, v19, v24

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    goto :goto_9

    .line 3725
    :cond_15
    if-eqz v12, :cond_9

    move/from16 v0, v33

    if-ge v6, v0, :cond_9

    if-eqz v13, :cond_16

    if-nez v30, :cond_9

    .line 3727
    :cond_16
    add-int/lit8 v34, v32, 0x1

    .line 3730
    .local v34, "nextIndex":I
    if-nez v5, :cond_1a

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v45

    if-nez v45, :cond_18

    if-eqz v23, :cond_17

    if-nez v28, :cond_18

    :cond_17
    if-eqz v20, :cond_1b

    if-eqz v27, :cond_1b

    :cond_18
    if-nez v30, :cond_1a

    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v45

    if-nez v45, :cond_1a

    if-eqz v23, :cond_19

    move/from16 v0, v34

    move/from16 v1, v22

    if-lt v0, v1, :cond_1a

    :cond_19
    if-eqz v20, :cond_1b

    move/from16 v0, v34

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b

    .line 3736
    :cond_1a
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3737
    add-int v45, v6, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3738
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a

    .line 3739
    :cond_1b
    if-eqz v18, :cond_9

    .line 3740
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3741
    add-int v45, v6, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3742
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 3750
    .end local v8    # "child":Landroid/view/View;
    .end local v27    # "isFooter":Z
    .end local v28    # "isHeader":Z
    .end local v30    # "isLastItem":Z
    .end local v32    # "itemIndex":I
    .end local v34    # "nextIndex":I
    .end local v42    # "toDraw":Z
    :cond_1c
    const/4 v15, 0x0

    .line 3751
    .local v15, "drawTop":Z
    if-eqz v25, :cond_23

    .line 3752
    if-eqz v29, :cond_22

    .line 3753
    if-eqz v44, :cond_1d

    .line 3754
    check-cast v44, Landroid/widget/ListView$DividerFilter;

    .end local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    invoke-interface/range {v44 .. v44}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v15

    .line 3764
    :cond_1d
    :goto_b
    if-eqz v15, :cond_20

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrentOverScrollDistance:I

    move/from16 v45, v0

    if-ltz v45, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCenterContent:Z

    move/from16 v45, v0

    if-eqz v45, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldCenterContent()Z

    move-result v45

    if-eqz v45, :cond_20

    :cond_1e
    if-nez v19, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v45

    if-lez v45, :cond_20

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v45

    if-eqz v45, :cond_20

    if-eqz v22, :cond_1f

    if-lez v22, :cond_20

    if-eqz v23, :cond_20

    .line 3768
    :cond_1f
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTop()I

    move-result v45

    sub-int v43, v45, v10

    .line 3769
    .local v43, "top":I
    move/from16 v0, v43

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3770
    add-int v45, v43, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3771
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3775
    .end local v43    # "top":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v46, v0

    add-int v35, v45, v46

    .line 3776
    .local v35, "overFooterBottom":I
    if-eqz v13, :cond_21

    add-int v45, v19, v9

    move/from16 v0, v45

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    move/from16 v0, v35

    if-le v0, v6, :cond_21

    .line 3778
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3779
    move/from16 v0, v35

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3780
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3890
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v15    # "drawTop":Z
    .end local v16    # "effectivePaddingBottom":I
    .end local v17    # "effectivePaddingTop":I
    .end local v18    # "fillForMissingDividers":Z
    .end local v19    # "first":I
    .end local v20    # "footerDividers":Z
    .end local v21    # "footerLimit":I
    .end local v22    # "headerCount":I
    .end local v23    # "headerDividers":Z
    .end local v24    # "i":I
    .end local v25    # "isDividerFilter":Z
    .end local v29    # "isHeaderViewListAdapter":Z
    .end local v31    # "itemCount":I
    .end local v33    # "listBottom":I
    .end local v35    # "overFooterBottom":I
    .end local v38    # "paint":Landroid/graphics/Paint;
    .end local v40    # "scrollY":I
    :cond_21
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3891
    return-void

    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bottom":I
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v15    # "drawTop":Z
    .restart local v16    # "effectivePaddingBottom":I
    .restart local v17    # "effectivePaddingTop":I
    .restart local v18    # "fillForMissingDividers":Z
    .restart local v19    # "first":I
    .restart local v20    # "footerDividers":Z
    .restart local v21    # "footerLimit":I
    .restart local v22    # "headerCount":I
    .restart local v23    # "headerDividers":Z
    .restart local v24    # "i":I
    .restart local v25    # "isDividerFilter":Z
    .restart local v29    # "isHeaderViewListAdapter":Z
    .restart local v31    # "itemCount":I
    .restart local v33    # "listBottom":I
    .restart local v38    # "paint":Landroid/graphics/Paint;
    .restart local v40    # "scrollY":I
    .restart local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_22
    move-object/from16 v45, v4

    .line 3757
    check-cast v45, Landroid/widget/ListView$DividerFilter;

    invoke-interface/range {v45 .. v45}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v15

    goto/16 :goto_b

    .line 3760
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1d

    .line 3761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v15

    goto/16 :goto_b

    .line 3785
    .end local v6    # "bottom":I
    .end local v15    # "drawTop":Z
    .end local v24    # "i":I
    .end local v40    # "scrollY":I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v40, v0

    .line 3787
    .restart local v40    # "scrollY":I
    if-lez v9, :cond_25

    if-eqz v14, :cond_25

    .line 3788
    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3789
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTop()I

    move-result v45

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3790
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3793
    :cond_25
    if-eqz v14, :cond_2a

    const/16 v41, 0x1

    .line 3794
    .local v41, "start":I
    :goto_d
    move/from16 v24, v41

    .restart local v24    # "i":I
    :goto_e
    move/from16 v0, v24

    if-ge v0, v9, :cond_37

    .line 3795
    add-int v32, v19, v24

    .line 3796
    .restart local v32    # "itemIndex":I
    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_2b

    const/16 v28, 0x1

    .line 3797
    .restart local v28    # "isHeader":Z
    :goto_f
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_2c

    const/16 v27, 0x1

    .line 3798
    .restart local v27    # "isFooter":Z
    :goto_10
    if-nez v23, :cond_26

    if-nez v28, :cond_29

    :cond_26
    if-nez v20, :cond_27

    if-nez v27, :cond_29

    .line 3801
    :cond_27
    const/16 v42, 0x1

    .line 3802
    .restart local v42    # "toDraw":Z
    if-eqz v25, :cond_2e

    .line 3803
    if-eqz v29, :cond_2d

    .line 3804
    if-eqz v44, :cond_28

    if-nez v28, :cond_28

    if-nez v27, :cond_28

    move-object/from16 v45, v44

    .line 3805
    check-cast v45, Landroid/widget/ListView$DividerFilter;

    add-int v46, v19, v24

    sub-int v46, v46, v22

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    .line 3817
    :cond_28
    :goto_11
    if-nez v42, :cond_30

    .line 3794
    .end local v42    # "toDraw":Z
    :cond_29
    :goto_12
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 3793
    .end local v24    # "i":I
    .end local v27    # "isFooter":Z
    .end local v28    # "isHeader":Z
    .end local v32    # "itemIndex":I
    .end local v41    # "start":I
    :cond_2a
    const/16 v41, 0x0

    goto :goto_d

    .line 3796
    .restart local v24    # "i":I
    .restart local v32    # "itemIndex":I
    .restart local v41    # "start":I
    :cond_2b
    const/16 v28, 0x0

    goto :goto_f

    .line 3797
    .restart local v28    # "isHeader":Z
    :cond_2c
    const/16 v27, 0x0

    goto :goto_10

    .restart local v27    # "isFooter":Z
    .restart local v42    # "toDraw":Z
    :cond_2d
    move-object/from16 v45, v4

    .line 3808
    check-cast v45, Landroid/widget/ListView$DividerFilter;

    add-int v46, v19, v24

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    goto :goto_11

    .line 3810
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    if-eqz v45, :cond_28

    .line 3811
    if-eqz v29, :cond_2f

    if-nez v28, :cond_2f

    if-nez v27, :cond_2f

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    add-int v46, v19, v24

    sub-int v46, v46, v22

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    goto :goto_11

    .line 3814
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    add-int v46, v19, v24

    invoke-interface/range {v45 .. v46}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v42

    goto :goto_11

    .line 3821
    :cond_30
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3822
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v43

    .line 3823
    .restart local v43    # "top":I
    if-eqz v12, :cond_29

    move/from16 v0, v43

    move/from16 v1, v17

    if-le v0, v1, :cond_29

    .line 3824
    move/from16 v0, v24

    move/from16 v1, v41

    if-ne v0, v1, :cond_35

    const/16 v26, 0x1

    .line 3825
    .local v26, "isFirstItem":Z
    :goto_13
    add-int/lit8 v39, v32, -0x1

    .line 3828
    .local v39, "previousIndex":I
    if-nez v5, :cond_34

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v45

    if-nez v45, :cond_32

    if-eqz v23, :cond_31

    if-nez v28, :cond_32

    :cond_31
    if-eqz v20, :cond_36

    if-eqz v27, :cond_36

    :cond_32
    if-nez v26, :cond_34

    move/from16 v0, v39

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v45

    if-nez v45, :cond_34

    if-eqz v23, :cond_33

    move/from16 v0, v39

    move/from16 v1, v22

    if-lt v0, v1, :cond_34

    :cond_33
    if-eqz v20, :cond_36

    move/from16 v0, v39

    move/from16 v1, v21

    if-lt v0, v1, :cond_36

    .line 3834
    :cond_34
    sub-int v45, v43, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3835
    move/from16 v0, v43

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3840
    add-int/lit8 v45, v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_12

    .line 3824
    .end local v26    # "isFirstItem":Z
    .end local v39    # "previousIndex":I
    :cond_35
    const/16 v26, 0x0

    goto :goto_13

    .line 3841
    .restart local v26    # "isFirstItem":Z
    .restart local v39    # "previousIndex":I
    :cond_36
    if-eqz v18, :cond_29

    .line 3842
    sub-int v45, v43, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3843
    move/from16 v0, v43

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3844
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 3852
    .end local v8    # "child":Landroid/view/View;
    .end local v26    # "isFirstItem":Z
    .end local v27    # "isFooter":Z
    .end local v28    # "isHeader":Z
    .end local v32    # "itemIndex":I
    .end local v39    # "previousIndex":I
    .end local v42    # "toDraw":Z
    .end local v43    # "top":I
    :cond_37
    const/4 v11, 0x1

    .line 3853
    .local v11, "drawBottom":Z
    if-eqz v25, :cond_3b

    .line 3854
    if-eqz v29, :cond_3a

    .line 3855
    if-eqz v44, :cond_38

    .line 3856
    check-cast v44, Landroid/widget/ListView$DividerFilter;

    .end local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    invoke-interface/range {v44 .. v44}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v11

    .line 3865
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    :cond_38
    :goto_14
    if-eqz v11, :cond_39

    if-eqz v12, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrentOverScrollDistance:I

    move/from16 v45, v0

    if-lez v45, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v45, v0

    add-int v45, v45, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v46, v0

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v45

    if-lez v45, :cond_39

    .line 3868
    add-int/lit8 v45, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getBottom()I

    move-result v43

    .line 3869
    .restart local v43    # "top":I
    move/from16 v0, v43

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3870
    add-int v45, v43, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3871
    add-int/lit8 v45, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3874
    .end local v43    # "top":I
    :cond_39
    if-lez v9, :cond_21

    if-lez v40, :cond_21

    .line 3875
    if-eqz v13, :cond_3c

    .line 3876
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3877
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3878
    add-int v45, v3, v40

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3879
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_c

    .line 3859
    .end local v3    # "absListBottom":I
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_3a
    check-cast v4, Landroid/widget/ListView$DividerFilter;

    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v4}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v11

    goto :goto_14

    .line 3861
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    if-eqz v45, :cond_38

    .line 3862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v11

    goto :goto_14

    .line 3880
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v44    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_3c
    if-eqz v12, :cond_21

    .line 3881
    move/from16 v0, v33

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3882
    add-int v45, v33, v10

    move/from16 v0, v45

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3883
    const/16 v45, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_c
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2491
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2492
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2494
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2495
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2501
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3895
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3896
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3897
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3899
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3913
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3915
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3916
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3917
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3587
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3589
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3590
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3592
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3593
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3594
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3597
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3598
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3601
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3570
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3572
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3573
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3575
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3576
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3577
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3580
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3581
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3583
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3584
    return-void
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature cover top divider and bottom divider when press one items"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5186
    iget-boolean v2, p0, Landroid/widget/ListView;->mIsDividerInside:Z

    if-nez v2, :cond_1

    .line 5187
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 5202
    :cond_0
    :goto_0
    return-void

    .line 5191
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5192
    iget-object v2, p0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5193
    iget-object v1, p0, Landroid/widget/ListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 5194
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5195
    .local v0, "newRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 5196
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5197
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5200
    .end local v0    # "newRect":Landroid/graphics/Rect;
    .end local v1    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableTopShadowReachHeader(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Enables or disables the top of the shadow effect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4353
    iput-boolean p1, p0, Landroid/widget/ListView;->mEnableTopShadowReachHeader:Z

    .line 4354
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "down"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature do something during fillgap"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 888
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 889
    .local v0, "count":I
    if-eqz p1, :cond_4

    .line 890
    const/4 v2, 0x0

    .line 891
    .local v2, "paddingTop":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 892
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 894
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 896
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 899
    invoke-virtual {p0}, Landroid/widget/ListView;->canOverScroll()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 920
    .end local v2    # "paddingTop":I
    :cond_1
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_2
    move v3, v2

    .line 894
    goto :goto_0

    .line 903
    .restart local v3    # "startOffset":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_1

    .line 905
    .end local v2    # "paddingTop":I
    .end local v3    # "startOffset":I
    :cond_4
    const/4 v1, 0x0

    .line 906
    .local v1, "paddingBottom":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_5

    .line 907
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 909
    :cond_5
    if-lez v0, :cond_6

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 911
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 914
    invoke-virtual {p0}, Landroid/widget/ListView;->canOverScroll()Z

    move-result v4

    if-nez v4, :cond_1

    .line 918
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 909
    .end local v3    # "startOffset":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1625
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1626
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1627
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1628
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1629
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1630
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1631
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1643
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1628
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1635
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 1636
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1637
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1638
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1635
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1643
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4242
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 4243
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4246
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4247
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4249
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4250
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4252
    if-eqz v2, :cond_0

    .line 4258
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 4246
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4258
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4220
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4221
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4222
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4223
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4232
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 4227
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4228
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4229
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4232
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4147
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4151
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4154
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4155
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4157
    if-eqz v2, :cond_0

    .line 4163
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 4151
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4163
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 4128
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4129
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4130
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4131
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4139
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 4134
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4135
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4136
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4139
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4193
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4197
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4198
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4200
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4201
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4203
    if-eqz v2, :cond_0

    .line 4209
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 4197
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4209
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4173
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4174
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4175
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4176
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4185
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 4180
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4181
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4182
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4185
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2727
    const/4 v1, 0x0

    .line 2728
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    .line 2729
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2730
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2731
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2732
    iput v5, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2733
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2734
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2736
    :cond_0
    const/4 v1, 0x1

    .line 2752
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2753
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2754
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2757
    :cond_2
    return v1

    .line 2738
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 2739
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2740
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2741
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2743
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2744
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2745
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2746
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2748
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4273
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4274
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 4303
    :cond_0
    :goto_0
    return-object v5

    .line 4279
    :cond_1
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4280
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4281
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4282
    .local v3, "count":I
    new-array v5, v3, [J

    .line 4283
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4285
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4286
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 4287
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4288
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4286
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 4294
    :cond_2
    if-eq v2, v3, :cond_0

    .line 4297
    new-array v6, v2, [J

    .line 4298
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 4300
    goto :goto_0

    .line 4303
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3925
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3951
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3532
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 405
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4048
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4029
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3537
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3539
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3541
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3542
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3543
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3553
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3537
    goto :goto_0

    .line 3541
    .restart local v4    # "retValue":Z
    :cond_5
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    goto :goto_1

    .line 3546
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listTop":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3548
    .local v2, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3549
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3550
    goto :goto_2

    .line 3546
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_8
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 29
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature do something on layout children"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1815
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1816
    .local v10, "blockLayoutRequests":Z
    if-eqz v10, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1825
    const/16 v23, 0x0

    .line 1826
    .local v23, "restoreOffset":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldRestoreOverScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1827
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mCurrentOverScrollDistance:I

    neg-int v0, v2

    move/from16 v23, v0

    .line 1830
    :cond_2
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1832
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_3

    .line 1835
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1836
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    if-nez v10, :cond_0

    .line 2103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1840
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1841
    .local v6, "childrenTop":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v27, v0

    sub-int v2, v2, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v7, v2, v27

    .line 1842
    .local v7, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 1844
    .local v12, "childCount":I
    const/16 v18, 0x0

    .line 1845
    .local v18, "index":I
    const/4 v5, 0x0

    .line 1848
    .local v5, "delta":I
    const/4 v3, 0x0

    .line 1849
    .local v3, "oldSel":Landroid/view/View;
    const/16 v20, 0x0

    .line 1850
    .local v20, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .line 1853
    .local v4, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1868
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v18, v2, v27

    .line 1869
    if-ltz v18, :cond_4

    move/from16 v0, v18

    if-ge v0, v12, :cond_4

    .line 1870
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1874
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1876
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_5

    .line 1877
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v27, v0

    sub-int v5, v2, v27

    .line 1881
    :cond_5
    add-int v2, v18, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1885
    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1886
    .local v13, "dataChanged":Z
    if-eqz v13, :cond_7

    .line 1887
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1892
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    if-nez v2, :cond_8

    .line 1893
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1894
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    if-nez v10, :cond_0

    .line 2103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1855
    .end local v13    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v18, v2, v27

    .line 1856
    if-ltz v18, :cond_6

    move/from16 v0, v18

    if-ge v0, v12, :cond_6

    .line 1857
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1896
    .restart local v13    # "dataChanged":Z
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    move/from16 v0, v27

    if-eq v2, v0, :cond_a

    .line 1897
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ") with Adapter("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2102
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenTop":I
    .end local v7    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v13    # "dataChanged":Z
    .end local v18    # "index":I
    .end local v20    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v10, :cond_9

    .line 2103
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_9
    throw v2

    .line 1905
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenTop":I
    .restart local v7    # "childrenBottom":I
    .restart local v12    # "childCount":I
    .restart local v13    # "dataChanged":Z
    .restart local v18    # "index":I
    .restart local v20    # "oldFirst":Landroid/view/View;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1909
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getAccessibilityFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1910
    .local v8, "accessFocusedChild":Landroid/view/View;
    if-eqz v8, :cond_c

    .line 1911
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .line 1912
    .local v9, "accessibilityFocusPosition":I
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1920
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1921
    .local v16, "focusedChild":Landroid/view/View;
    if-eqz v16, :cond_b

    .line 1922
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1927
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1928
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1929
    .local v22, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v13, :cond_d

    .line 1933
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    if-nez v2, :cond_e

    .line 1940
    add-int/lit8 v17, v12, -0x1

    .local v17, "i":I
    :goto_3
    if-ltz v17, :cond_e

    .line 1941
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v27, v14, v17

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1940
    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    .line 1914
    .end local v9    # "accessibilityFocusPosition":I
    .end local v14    # "firstPosition":I
    .end local v16    # "focusedChild":Landroid/view/View;
    .end local v17    # "i":I
    .end local v22    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_c
    const/4 v9, -0x1

    .restart local v9    # "accessibilityFocusPosition":I
    goto :goto_2

    .line 1946
    .restart local v14    # "firstPosition":I
    .restart local v16    # "focusedChild":Landroid/view/View;
    .restart local v22    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_d
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1950
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1951
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1953
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1980
    if-nez v12, :cond_16

    .line 1981
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_15

    .line 1982
    const/4 v2, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1983
    .local v21, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1984
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 2011
    .end local v6    # "childrenTop":I
    .end local v21    # "position":I
    .local v25, "sel":Landroid/view/View;
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->layoutChildrenForMeiZu()V

    .line 2015
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    if-eqz v2, :cond_1b

    .line 2016
    const-string v2, "ListView"

    const-string v27, "Abandon active views because it cann\'t be reused!"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 2023
    :goto_5
    if-eqz v25, :cond_21

    .line 2024
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v26, 0x1

    .line 2025
    .local v26, "shouldPlaceFocus":Z
    :goto_6
    if-eqz v16, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v19, 0x1

    .line 2026
    .local v19, "maintainedFocus":Z
    :goto_7
    if-eqz v26, :cond_20

    if-nez v19, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2027
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2029
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2031
    const-string v2, "ListView"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "mSelectorRect.setEmpty in layoutChildren with sel="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", this="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :goto_8
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2059
    .end local v19    # "maintainedFocus":Z
    .end local v26    # "shouldPlaceFocus":Z
    :cond_f
    :goto_9
    if-eqz v8, :cond_10

    .line 2060
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 2064
    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, -0x1

    if-eq v9, v2, :cond_10

    .line 2067
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, v9, v2

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v21

    .line 2069
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 2070
    .local v24, "restoreView":Landroid/view/View;
    if-eqz v24, :cond_10

    .line 2071
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2076
    .end local v21    # "position":I
    .end local v24    # "restoreView":Landroid/view/View;
    :cond_10
    if-eqz v16, :cond_11

    .line 2077
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 2080
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2081
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDataChanged(Z)Z

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_12

    .line 2083
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2084
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2086
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mNeedSync:Z

    .line 2087
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2089
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 2091
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_13

    .line 2092
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2097
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->restoreOverScroll(I)V

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2102
    if-nez v10, :cond_0

    .line 2103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1955
    .end local v25    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :pswitch_2
    if-eqz v4, :cond_14

    .line 1956
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1958
    .end local v25    # "sel":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1960
    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1962
    .end local v25    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1963
    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1965
    .end local v25    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1966
    .restart local v25    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1969
    .end local v25    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1970
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1971
    .restart local v25    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1974
    .end local v25    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1975
    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v25    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1977
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1978
    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1986
    .end local v25    # "sel":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1987
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1992
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDockingBottomHeight:I

    move/from16 v27, v0

    sub-int v27, v7, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1994
    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1996
    .end local v21    # "position":I
    .end local v25    # "sel":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v2, v0, :cond_18

    .line 1997
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v3, :cond_17

    .end local v6    # "childrenTop":I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v25    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_a

    .line 1999
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v2, v0, :cond_1a

    .line 2000
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v20, :cond_19

    .end local v6    # "childrenTop":I
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v25    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_19
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_b

    .line 2003
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2020
    .end local v6    # "childrenTop":I
    :cond_1b
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    goto/16 :goto_5

    .line 2024
    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 2025
    .restart local v26    # "shouldPlaceFocus":Z
    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 2034
    .restart local v19    # "maintainedFocus":Z
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v15

    .line 2035
    .local v15, "focused":Landroid/view/View;
    if-eqz v15, :cond_1f

    .line 2036
    invoke-virtual {v15}, Landroid/view/View;->clearFocus()V

    .line 2038
    :cond_1f
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_8

    .line 2041
    .end local v15    # "focused":Landroid/view/View;
    :cond_20
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_8

    .line 2047
    .end local v19    # "maintainedFocus":Z
    .end local v26    # "shouldPlaceFocus":Z
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v2, v0, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v2, v0, :cond_23

    .line 2048
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v2, v2, v27

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2049
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_f

    .line 2050
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 2053
    .end local v11    # "child":Landroid/view/View;
    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2055
    const-string v2, "ListView"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "mSelectorRect.setEmpty in layoutChildren this="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    .line 1853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1953
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 2393
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2394
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2417
    :cond_0
    :goto_0
    return v2

    .line 2398
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2399
    .local v1, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_3

    .line 2400
    if-eqz p2, :cond_2

    .line 2401
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2402
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2403
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2406
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2407
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2408
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2413
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2417
    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2433
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2434
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 2465
    :cond_1
    :goto_0
    return v1

    .line 2439
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2440
    .local v1, "after":I
    if-ne v1, v3, :cond_1

    .line 2445
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2446
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2447
    if-eqz p3, :cond_4

    .line 2448
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2449
    :goto_1
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2450
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2452
    :cond_3
    if-gt p2, p1, :cond_6

    move v1, v3

    .line 2453
    goto :goto_0

    .line 2456
    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2457
    :goto_2
    if-ge p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2458
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2460
    :cond_5
    if-lt p2, p1, :cond_6

    move v1, v3

    .line 2461
    goto :goto_0

    :cond_6
    move v1, p2

    .line 2465
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1561
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1562
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1563
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1620
    :cond_0
    :goto_0
    return v6

    .line 1567
    :cond_1
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1568
    .local v9, "returnedHeight":I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1571
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1576
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1577
    :cond_2
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1578
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1579
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1581
    .local v5, "isScrap":[Z
    const-string v10, "ListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "measureHeightOfChildren adapter="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", startPosition="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", endPosition="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", maxHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", this="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    move v4, p2

    .local v4, "i":I
    :goto_2
    move/from16 v0, p3

    if-gt v4, v0, :cond_9

    .line 1585
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1587
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1589
    if-lez v4, :cond_3

    .line 1591
    add-int/2addr v9, v3

    .line 1595
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1597
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1600
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1602
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1605
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto/16 :goto_0

    .line 1568
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevHeightWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1613
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1614
    move v6, v9

    .line 1584
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1620
    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override onConfigurationChanged"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5042
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5050
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 4110
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 4112
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 4113
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4115
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4117
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 4119
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4053
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4055
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4056
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 4057
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 4058
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 4059
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 4063
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 4064
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 4065
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 4070
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 4071
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 4072
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 4073
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 4075
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 4077
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4075
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4081
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4082
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4083
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4084
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 4086
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 4087
    move v9, v6

    .line 4088
    move v5, v8

    .line 4089
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 4094
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 4095
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 4099
    :goto_2
    return-void

    .line 4097
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4308
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4309
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4310
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4314
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4315
    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4317
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 4318
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4319
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4320
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4325
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4327
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 4328
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v2, :cond_0

    iget v5, v2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_0

    move v0, v3

    .line 4329
    .local v0, "isHeading":Z
    :goto_0
    invoke-static {v4, v3, p2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    .line 4330
    .local v1, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4331
    return-void

    .end local v0    # "isHeading":Z
    .end local v1    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v0, v4

    .line 4328
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override onInterceptTouchEvent"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 4547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 4549
    .local v0, "dragMotionX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 4550
    .local v1, "dragMotionY":I
    invoke-direct {p0}, Landroid/widget/ListView;->onSizeChangedForMeiZu()V

    .line 4551
    iget-object v2, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 4554
    .local v2, "dragRegion":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 4583
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 4559
    :pswitch_1
    iget v3, p0, Landroid/widget/ListView;->mTouchMode:I

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/widget/ListView;->mShouldDelaySpringBack:Z

    if-eqz v3, :cond_0

    .line 4560
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    .line 4561
    iput v1, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    .line 4562
    iput v4, p0, Landroid/widget/ListView;->mLongPressPosition:I

    goto :goto_0

    .line 4568
    :pswitch_2
    iget v3, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDragSlop:I

    if-le v3, v4, :cond_0

    .line 4571
    iget v3, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    invoke-direct {p0, v3}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4573
    iget v3, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    iput v3, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4574
    iget v3, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    iput v3, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 4575
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 4576
    const/4 v3, 0x1

    goto :goto_1

    .line 4556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2511
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2516
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature set data changed when set mEnableForEditTextPreference"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1446
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1449
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1450
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1451
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1453
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1454
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1455
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1457
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1458
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_2

    if-eqz v11, :cond_0

    if-nez v10, :cond_2

    .line 1460
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1462
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1464
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1465
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1466
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1468
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1475
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableForEditTextPreference:Z

    if-eqz v0, :cond_2

    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1480
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    if-nez v11, :cond_6

    .line 1481
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1487
    :goto_1
    if-nez v10, :cond_3

    .line 1488
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1492
    :cond_3
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1494
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1497
    :cond_4
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1498
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1499
    return-void

    .line 1457
    :cond_5
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_0

    .line 1484
    :cond_6
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature update drag Region rect on size changed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1419
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1420
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1421
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1422
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1423
    .local v0, "childBottom":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1424
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1425
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1426
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1428
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1431
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1435
    invoke-direct {p0}, Landroid/widget/ListView;->onSizeChangedForMeiZu()V

    .line 1437
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override onTouchEvent"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4592
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v11, v0

    .line 4593
    .local v11, "dragMotionY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v10, v0

    .line 4594
    .local v10, "dragMotionX":I
    iget-object v12, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 4595
    .local v12, "dragRegion":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 4596
    .local v8, "action":I
    packed-switch v8, :pswitch_data_0

    .line 4646
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_1b

    .line 4647
    packed-switch v8, :pswitch_data_1

    .line 4728
    :goto_1
    const/4 v0, 0x1

    .line 4730
    :goto_2
    return v0

    .line 4598
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mTouchMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-nez v0, :cond_0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    if-lt v10, v0, :cond_0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    if-gt v10, v0, :cond_0

    .line 4602
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4603
    iput v11, p0, Landroid/widget/ListView;->mDragMotionY:I

    goto :goto_0

    .line 4608
    :pswitch_1
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    sub-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDragSlop:I

    if-le v0, v1, :cond_1

    .line 4612
    iget v0, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4613
    iput v11, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 4614
    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 4617
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 4619
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 4621
    .local v9, "cancelMotion":Landroid/view/MotionEvent;
    invoke-super {p0, v9}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4622
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView;->mTouchMode:I

    .line 4623
    const/4 v0, 0x1

    goto :goto_2

    .line 4624
    .end local v9    # "cancelMotion":Landroid/view/MotionEvent;
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    if-eqz v0, :cond_2

    .line 4625
    const/4 v0, 0x1

    goto :goto_2

    .line 4626
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_5

    iget v0, v12, Landroid/graphics/Rect;->left:I

    if-lt v10, v0, :cond_3

    iget v0, v12, Landroid/graphics/Rect;->right:I

    if-le v10, v0, :cond_5

    .line 4627
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    .line 4628
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-eqz v0, :cond_4

    .line 4629
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->finish()V

    .line 4631
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4632
    :cond_5
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_0

    .line 4633
    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 4634
    iput v11, p0, Landroid/widget/ListView;->mDragMotionY:I

    goto/16 :goto_0

    .line 4638
    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 4639
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4642
    :cond_6
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/ListView;->endDragSelection()V

    goto/16 :goto_0

    .line 4649
    :pswitch_4
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    if-eqz v0, :cond_9

    .line 4651
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4653
    iget v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    if-gez v0, :cond_8

    .line 4654
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4657
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4660
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4656
    :cond_8
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    goto :goto_3

    .line 4661
    :cond_9
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->canScrollSelect(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/widget/ListView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4663
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-nez v0, :cond_a

    .line 4664
    new-instance v0, Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/widget/ListView$ScrollSelectionRunnable;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    .line 4667
    :cond_a
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4668
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/widget/ListView;->mListItemHeight:I

    add-int/2addr v0, v1

    if-ge v11, v0, :cond_e

    const/4 v14, 0x1

    .line 4669
    .local v14, "upSelect":Z
    :goto_4
    if-eqz v14, :cond_b

    iget v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    sub-int v0, v11, v0

    if-ltz v0, :cond_c

    :cond_b
    if-nez v14, :cond_d

    iget v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    sub-int v0, v11, v0

    if-lez v0, :cond_d

    .line 4670
    :cond_c
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0, v14}, Landroid/widget/ListView$ScrollSelectionRunnable;->startScrollSelecte(Z)V

    .line 4673
    .end local v14    # "upSelect":Z
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4668
    :cond_e
    const/4 v14, 0x0

    goto :goto_4

    .line 4674
    :cond_f
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4676
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->finish()V

    .line 4679
    :cond_10
    iget v0, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    if-ge v11, v0, :cond_15

    .line 4680
    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 4681
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    .line 4682
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4684
    :cond_11
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 4685
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    .line 4688
    :cond_12
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4691
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eq v0, v1, :cond_13

    .line 4692
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    .line 4693
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4694
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4695
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4696
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4699
    :cond_14
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    goto/16 :goto_1

    .line 4700
    :cond_15
    iget v0, p0, Landroid/widget/ListView;->mDragMotionViewBottom:I

    if-le v11, v0, :cond_1a

    .line 4701
    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 4702
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4703
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4705
    :cond_16
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 4706
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4708
    :cond_17
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4711
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v13

    .line 4712
    .local v13, "lastPosition":I
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    if-eq v0, v13, :cond_18

    .line 4713
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    invoke-direct {p0, v0, v13}, Landroid/widget/ListView;->downSelect(II)V

    .line 4714
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4715
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4716
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4717
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4720
    .end local v13    # "lastPosition":I
    :cond_19
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    goto/16 :goto_1

    .line 4723
    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4730
    :cond_1b
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_2

    .line 4596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 4647
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2681
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2682
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2683
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2691
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_3

    .line 2692
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2693
    .local v2, "position":I
    if-ltz v2, :cond_3

    .line 2694
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2695
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2697
    if-eqz v0, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_0

    .line 2698
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2701
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2702
    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2705
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2706
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2707
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2708
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    move v3, v4

    .line 2715
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_3
    return v3

    .line 2684
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_3

    .line 2685
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2686
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override performLongPress"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4529
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 4531
    .local v0, "result":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v1, :cond_0

    .line 4532
    iput p2, p0, Landroid/widget/ListView;->mLongPressPosition:I

    .line 4535
    :cond_0
    iget v1, p0, Landroid/widget/ListView;->mDragAndDropPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4536
    invoke-direct {p0}, Landroid/widget/ListView;->endDragSelection()V

    .line 4538
    :cond_1
    return v0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1529
    const/4 v0, 0x1

    return v0
.end method

.method rememberSyncState()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override rememberSyncState"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4855
    iget-boolean v0, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    if-nez v0, :cond_0

    .line 4856
    invoke-super {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 4857
    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 631
    :cond_0
    const/4 v0, 0x1

    .line 633
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 636
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 538
    :cond_0
    const/4 v0, 0x1

    .line 540
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 543
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override requestChildFocus"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 4865
    iget-boolean v5, p0, Landroid/widget/ListView;->mEnableForEditTextPreference:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/ListView;->mInLayout:Z

    if-nez v5, :cond_4

    if-eqz p1, :cond_4

    .line 4867
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 4868
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ListView;->mDockingBottomHeight:I

    sub-int v0, v5, v6

    .line 4869
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 4870
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4893
    .end local v0    # "bottom":I
    .end local v4    # "top":I
    :goto_0
    return-void

    .line 4873
    .restart local v0    # "bottom":I
    .restart local v4    # "top":I
    :cond_0
    const/4 v3, -0x1

    .line 4874
    .local v3, "position":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4875
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 4876
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4877
    move v3, v2

    .line 4882
    :cond_1
    if-eq v3, v7, :cond_4

    .line 4883
    iget-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 4884
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    .line 4885
    :cond_2
    iget-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4886
    iget v5, p0, Landroid/widget/ListView;->mTouchMode:I

    if-ne v5, v7, :cond_3

    .line 4887
    iget-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v5, v6}, Landroid/widget/ListView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 4889
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4892
    .end local v0    # "bottom":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "position":I
    .end local v4    # "top":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 4875
    .restart local v0    # "bottom":I
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "position":I
    .restart local v4    # "top":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Feature.ListView.Feature consider blur cover rect for child\'s rect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 793
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 796
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 799
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 800
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 801
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 802
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 804
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 806
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 807
    :cond_0
    add-int/2addr v8, v5

    .line 812
    :cond_1
    iget-object v13, p0, Landroid/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Landroid/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->isThemeLight()Z

    move-result v13

    if-eqz v13, :cond_2

    iget v13, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v13, v13, 0x22

    const/16 v14, 0x22

    if-eq v13, v14, :cond_2

    .line 813
    iget-object v13, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v13

    .line 816
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 817
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 819
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 821
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_3

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_4

    .line 823
    :cond_3
    sub-int/2addr v7, v5

    .line 828
    :cond_4
    iget-object v13, p0, Landroid/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, p0, Landroid/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->isThemeLight()Z

    move-result v13

    if-eqz v13, :cond_5

    iget v13, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v13, v13, 0x22

    const/16 v14, 0x22

    if-eq v13, v14, :cond_5

    .line 829
    iget-object v13, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v13

    .line 832
    :cond_5
    const/4 v11, 0x0

    .line 834
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_9

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_9

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 841
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 848
    :goto_0
    sub-int v4, v1, v7

    .line 849
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 869
    .end local v4    # "distanceToBottom":I
    :cond_6
    :goto_1
    if-eqz v11, :cond_b

    const/4 v10, 0x1

    .line 870
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_7

    .line 871
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 872
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 874
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 876
    :cond_7
    return v10

    .line 844
    .end local v10    # "scroll":Z
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 850
    :cond_9
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_6

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_6

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_a

    .line 857
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 864
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 865
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 866
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 860
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 869
    :cond_b
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 743
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 745
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 748
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 85
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature judge whether or not AbsBasePartitionAdapter"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 682
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 686
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 687
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 689
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 690
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 695
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 696
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 699
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 701
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 702
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 703
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 704
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 705
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 707
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 708
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 710
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 713
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 714
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 718
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 719
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 721
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 723
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 732
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 733
    return-void

    .line 692
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 716
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 726
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 727
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 729
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3558
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3559
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3560
    if-eqz v0, :cond_1

    .line 3561
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3562
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3564
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3566
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3567
    return-void

    .line 3558
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckBoxIsAnimation(Z)V
    .locals 1
    .param p1, "isAnimation"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ListView.Feature set checkbox animation in setupchild"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5218
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCheckBoxAnim:Z

    if-eq v0, p1, :cond_0

    .line 5219
    iput-boolean p1, p0, Landroid/widget/ListView;->mIsCheckBoxAnim:Z

    .line 5221
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3935
    if-eqz p1, :cond_2

    .line 3936
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3941
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3942
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3943
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3944
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3945
    return-void

    .line 3938
    :cond_2
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerFilterListener(Landroid/widget/ListView$DividerFilter;)V
    .locals 0
    .param p1, "dividerFilterListener"    # Landroid/widget/ListView$DividerFilter;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ListView.Feature set setDividerFilterListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5232
    iput-object p1, p0, Landroid/widget/ListView;->mDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    .line 5233
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3961
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3962
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3963
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3964
    return-void
.end method

.method public setDividerInSide(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature set divider draw inside items"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 5172
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsDividerInside:Z

    if-ne p1, v0, :cond_0

    .line 5178
    :goto_0
    return-void

    .line 5176
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ListView;->mIsDividerInside:Z

    .line 5177
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method public setEnableDragSelection(Landroid/widget/ListView$OnDragSelectListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/ListView$OnDragSelectListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Open the drag selection."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setEnableDragSelection(Z)V

    .line 4503
    iput-object p1, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    .line 4504
    return-void
.end method

.method public setEnableDragSelection(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature enable drag selection"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4488
    iget-object v0, p0, Landroid/widget/ListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mDragSlop:I

    .line 4489
    iput-boolean p1, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    .line 4490
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3999
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4000
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4001
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3976
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3977
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3978
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature override setItemChecked"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 4740
    iget-boolean v0, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 4741
    .local v0, "blockLayoutRequests":Z
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    .line 4742
    .local v1, "count":I
    iget v2, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    if-eq v2, v3, :cond_0

    .line 4743
    iput-boolean v4, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 4744
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 4745
    iput-boolean v0, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 4747
    iget v2, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 4749
    :cond_1
    iget-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-nez v2, :cond_2

    .line 4750
    iput-boolean v4, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 4751
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 4752
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4755
    :cond_2
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3521
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3522
    if-nez p1, :cond_0

    .line 3523
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3525
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4040
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4041
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4042
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4019
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4020
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 4021
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4023
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 660
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 661
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2311
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2473
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2474
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2475
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2486
    :goto_0
    return-void

    .line 2479
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2480
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2482
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2483
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionForMeiZu(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ListView.Feature add Annotation \'android.view.RemotableViewMethod\' so remoteviews can call it through reflection"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5210
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5211
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 2323
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2327
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2328
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2329
    if-ltz p1, :cond_2

    .line 2330
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2336
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2337
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2338
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2340
    iget-boolean v0, p0, Landroid/widget/ListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2341
    iput p1, p0, Landroid/widget/ListView;->mSyncPosition:I

    .line 2342
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ListView;->mSyncRowId:J

    .line 2345
    :cond_3
    iget-object v0, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_4

    .line 2346
    iget-object v0, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2348
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 2333
    :cond_5
    iput p1, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2359
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2360
    const/4 v0, 0x0

    .line 2362
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2364
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2365
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2366
    const/4 v0, 0x1

    .line 2372
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_1

    .line 2373
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2376
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2378
    if-eqz v0, :cond_2

    .line 2379
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2381
    :cond_2
    return-void

    .line 2367
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2368
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelectionToBottom()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Displayed at the bottom of the list"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4840
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4847
    :goto_0
    return-void

    .line 4844
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    .line 4845
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public setTopShadowEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Enables or disables the top of the shadow effect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4342
    iput-boolean p1, p0, Landroid/widget/ListView;->mEnableTopShadow:Z

    .line 4343
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1226
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1227
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1216
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1217
    return-void
.end method

.method public unCheckedAll()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "#zhangxin@SDK.ListView.Feature Cancel all selections"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 4822
    invoke-virtual {p0}, Landroid/widget/ListView;->clearChoices()V

    .line 4823
    iget-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 4824
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 4825
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 4826
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4828
    :cond_0
    return-void
.end method
