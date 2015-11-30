.class Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridMenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/GridMenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridMenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/GridMenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    .line 433
    iput-object p2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->findExpandedIndex()V

    .line 435
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 484
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$300(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 485
    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 486
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$300(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 487
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 488
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 489
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 490
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 491
    iput v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    .line 497
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 488
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$100(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 440
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 443
    :goto_1
    return v1

    .line 438
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 443
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$100(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 450
    add-int/lit8 p1, p1, 0x1

    .line 452
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 447
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 458
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 470
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-nez p2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$200(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090074

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 474
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 475
    .local v1, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    iget-boolean v2, v2, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 476
    check-cast v2, Lcom/android/internal/view/menu/GridMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/GridMenuItemView;->setForceShowIcon(Z)V

    .line 478
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 480
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->findExpandedIndex()V

    .line 503
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 504
    return-void
.end method
