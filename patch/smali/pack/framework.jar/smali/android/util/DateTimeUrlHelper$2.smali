.class final Landroid/util/DateTimeUrlHelper$2;
.super Ljava/lang/Object;
.source "DateTimeUrlHelper.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DateTimeUrlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 623
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "matchingRegion":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 625
    .local v0, "date":Ljava/util/Date;
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 627
    const/4 v7, 0x0

    :try_start_0
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 814
    :cond_1
    :goto_0
    return v5

    .line 632
    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 633
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 634
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_1
    move v5, v6

    .line 814
    goto :goto_0

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 640
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_4
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M_S:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 642
    const/4 v7, 0x0

    :try_start_1
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v5, v6

    .line 645
    goto :goto_0

    .line 647
    :cond_6
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 649
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 652
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 653
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 655
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_7
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 657
    :try_start_2
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    move v5, v6

    .line 658
    goto :goto_0

    .line 660
    :cond_8
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 662
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 665
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v2

    .line 666
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_9
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_2:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 670
    :try_start_3
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    move v5, v6

    .line 671
    goto/16 :goto_0

    .line 673
    :cond_a
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 674
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 675
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 678
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_3
    move-exception v2

    .line 679
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 681
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_b
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 683
    :try_start_4
    # invokes: Landroid/util/DateTimeUrlHelper;->createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$200(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 684
    .local v1, "dates":[Ljava/util/Date;
    if-nez v1, :cond_c

    move v5, v6

    .line 685
    goto/16 :goto_0

    .line 687
    :cond_c
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 690
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_4
    move-exception v2

    .line 691
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 693
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 695
    :try_start_5
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$300(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 696
    .restart local v1    # "dates":[Ljava/util/Date;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 699
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_5
    move-exception v2

    .line 700
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 702
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 704
    :try_start_6
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    move v5, v6

    .line 706
    goto/16 :goto_0

    .line 708
    :cond_f
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 710
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 713
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v2

    .line 714
    .local v2, "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 716
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_10
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 718
    :try_start_7
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    move v5, v6

    .line 720
    goto/16 :goto_0

    .line 722
    :cond_11
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 723
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 724
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 727
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_7
    move-exception v2

    .line 728
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 730
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_12
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 732
    :try_start_8
    # invokes: Landroid/util/DateTimeUrlHelper;->changeCNToNum(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    move v5, v6

    .line 735
    goto/16 :goto_0

    .line 737
    :cond_13
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 738
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 739
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 742
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_8
    move-exception v2

    .line 743
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 745
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_14
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 746
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    move v5, v6

    .line 747
    goto/16 :goto_0

    .line 749
    :cond_15
    # invokes: Landroid/util/DateTimeUrlHelper;->createTimePointDates(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$700(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 750
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 753
    :cond_16
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 755
    :try_start_9
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$800(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 756
    .restart local v1    # "dates":[Ljava/util/Date;
    if-nez v1, :cond_17

    move v5, v6

    .line 757
    goto/16 :goto_0

    .line 759
    :cond_17
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 762
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_9
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 765
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_18
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 767
    :try_start_a
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$900(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 768
    if-nez v0, :cond_19

    move v5, v6

    .line 769
    goto/16 :goto_0

    .line 771
    :cond_19
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 774
    :catch_a
    move-exception v2

    .line 775
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 777
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1a
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 779
    :try_start_b
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1000(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 780
    if-nez v0, :cond_1b

    move v5, v6

    .line 781
    goto/16 :goto_0

    .line 783
    :cond_1b
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 786
    :catch_b
    move-exception v2

    .line 787
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 789
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1c
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 791
    :try_start_c
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1100(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 792
    if-nez v0, :cond_1d

    move v5, v6

    .line 793
    goto/16 :goto_0

    .line 795
    :cond_1d
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 798
    :catch_c
    move-exception v2

    .line 799
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 801
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1e
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 803
    :try_start_d
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1200(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 804
    if-nez v0, :cond_1f

    move v5, v6

    .line 805
    goto/16 :goto_0

    .line 807
    :cond_1f
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 810
    :catch_d
    move-exception v2

    .line 811
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
