.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2462
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 2460
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 2463
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2465
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 2460
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 2466
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2467
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/16 v10, 0x8

    .line 2505
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v8, v11}, Landroid/app/Notification$Builder;->access$702(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2506
    const v8, 0x10900bb

    invoke-virtual {p0, v8}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 2508
    .local v1, "contentView":Landroid/widget/RemoteViews;
    const v8, 0x1020015

    invoke-virtual {v1, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2510
    const/4 v8, 0x7

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 2514
    .local v6, "rowIds":[I
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 2515
    .local v5, "rowId":I
    invoke-virtual {v1, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2514
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2519
    .end local v5    # "rowId":I
    :cond_0
    const/4 v2, 0x0

    .line 2520
    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 2521
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 2522
    .local v7, "str":Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2523
    aget v8, v6, v2

    invoke-virtual {v1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2524
    aget v8, v6, v2

    invoke-virtual {v1, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2526
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2527
    goto :goto_1

    .line 2529
    .end local v7    # "str":Ljava/lang/CharSequence;
    :cond_2
    const v11, 0x1020384

    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    move v8, v9

    :goto_2
    invoke-virtual {v1, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2532
    const v8, 0x1020383

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v6

    if-le v11, v12, :cond_4

    :goto_3
    invoke-virtual {v1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2535
    return-object v1

    :cond_3
    move v8, v10

    .line 2529
    goto :goto_2

    :cond_4
    move v9, v10

    .line 2532
    goto :goto_3

    .line 2510
    nop

    :array_0
    .array-data 4
        0x102037c
        0x102037d
        0x102037e
        0x102037f
        0x1020380
        0x1020381
        0x1020382
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2498
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 2499
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 2500
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 2501
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 2490
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2491
    return-object p0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 2543
    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2545
    return-object p1
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2474
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 2475
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 2482
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 2483
    return-object p0
.end method
