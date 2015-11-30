.class Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
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
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 458
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 518
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 519
    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 520
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 521
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 523
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 524
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 525
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 531
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 522
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 465
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 466
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 468
    :goto_1
    return v1

    .line 463
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 468
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
    .line 472
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 474
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 475
    add-int/lit8 p1, p1, 0x1

    .line 477
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 472
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 483
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
    .line 554
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 555
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isCategoryHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x1

    .line 558
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

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 495
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-nez p2, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isCategoryHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109007a

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    move-object v1, p2

    .line 509
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 510
    .local v1, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-boolean v2, v2, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 511
    check-cast v2, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 513
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 514
    return-object p2

    .line 504
    .end local v1    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900c4

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
    .line 545
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
    .line 568
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 569
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

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
    .line 535
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 536
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 537
    return-void
.end method
