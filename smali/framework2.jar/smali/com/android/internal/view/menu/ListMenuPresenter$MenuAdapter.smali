.class Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# static fields
.field private static final TYPE_COUNT:I = 0x2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add TYPE_COUNT"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final TYPE_HEADER:I = 0x1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add TYPE_HEADER"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final TYPE_NORMAL:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add TYPE_NORMAL"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V
    .locals 1

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 244
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add areAllItemsEnabled"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 299
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 300
    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 301
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 302
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 303
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 304
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 305
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 306
    iput v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 312
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 303
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I
    invoke-static {v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->access$000(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    move-result v3

    sub-int v0, v2, v3

    .line 249
    .local v0, "count":I
    iget v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 252
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I
    invoke-static {v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->access$000(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 258
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 259
    add-int/lit8 p1, p1, 0x1

    .line 261
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 267
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add getItemViewType"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 336
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isCategoryHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x1

    .line 339
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add type as category header"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 279
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-nez p2, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isCategoryHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109007a

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    move-object v1, p2

    .line 293
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 294
    .local v1, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 295
    return-object p2

    .line 288
    .end local v1    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget v3, v3, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add getViewTypeCount"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "CJY@SDK.Feature.add isEnabled"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 359
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isCategoryHeader()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 317
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method
