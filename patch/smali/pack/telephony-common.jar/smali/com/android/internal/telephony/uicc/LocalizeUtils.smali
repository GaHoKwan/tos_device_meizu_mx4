.class Lcom/android/internal/telephony/uicc/LocalizeUtils;
.super Ljava/lang/Object;
.source "AdnRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 621
    invoke-static {}, Lcom/meizu/pim/HanziToPinyin;->getInstance()Lcom/meizu/pim/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/meizu/pim/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 622
    .local v3, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/pim/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/pim/HanziToPinyin$Token;

    .line 627
    .local v2, "token":Lcom/meizu/pim/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Lcom/meizu/pim/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_1

    .line 628
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 629
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    :cond_0
    iget-object v4, v2, Lcom/meizu/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    iget-object v4, v2, Lcom/meizu/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 636
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    :cond_2
    iget-object v4, v2, Lcom/meizu/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    .end local v2    # "token":Lcom/meizu/pim/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 643
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "displayName":Ljava/lang/String;
    :cond_4
    return-object p0
.end method
