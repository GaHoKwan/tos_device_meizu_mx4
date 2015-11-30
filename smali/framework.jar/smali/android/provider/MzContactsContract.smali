.class public final Landroid/provider/MzContactsContract;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzContactsContract$MzNetContacts;,
        Landroid/provider/MzContactsContract$MzSpeedDial;,
        Landroid/provider/MzContactsContract$MzAccounts;,
        Landroid/provider/MzContactsContract$MzSpamAddress;,
        Landroid/provider/MzContactsContract$MzIntents;,
        Landroid/provider/MzContactsContract$MzDisplayPhoto;,
        Landroid/provider/MzContactsContract$MzQuickContact;,
        Landroid/provider/MzContactsContract$MzSettings;,
        Landroid/provider/MzContactsContract$MzSettingsColumns;,
        Landroid/provider/MzContactsContract$MzGroups;,
        Landroid/provider/MzContactsContract$MzGroupsColumns;,
        Landroid/provider/MzContactsContract$MzCommonDataKinds;,
        Landroid/provider/MzContactsContract$MzSearchSnippetColumns;,
        Landroid/provider/MzContactsContract$MzPhoneLookup;,
        Landroid/provider/MzContactsContract$MzData;,
        Landroid/provider/MzContactsContract$MzRawContactColumns;,
        Landroid/provider/MzContactsContract$MzContacts;,
        Landroid/provider/MzContactsContract$MzContactColumns;,
        Landroid/provider/MzContactsContract$MzContactOptionsColumns;,
        Landroid/provider/MzContactsContract$MzDirectory;
    }
.end annotation


# static fields
.field public static final ALLOW_CALLLOGS_PARAM_KEY:Ljava/lang/String; = "allow_calllogs"

.field public static final AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

.field public static final HAS_MORE_KEY:Ljava/lang/String; = "has_more"

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final START_PARAM_KEY:Ljava/lang/String; = "start"

.field public static final USE_WEIGHT_ORDER:Ljava/lang/String; = "use_weight_order"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "content://com.android.contacts.notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 1097
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    return-void
.end method

.method private static MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/provider/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1112
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1116
    :cond_0
    return-void
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 29
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "snippetStartMatch"    # C
    .param p4, "snippetEndMatch"    # C
    .param p5, "snippetEllipsis"    # Ljava/lang/String;
    .param p6, "snippetMaxTokens"    # I

    .prologue
    .line 999
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1000
    .local v13, "lowerQuery":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 1002
    :cond_0
    const/16 v24, 0x0

    .line 1088
    :goto_1
    return-object v24

    .line 999
    .end local v13    # "lowerQuery":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 1008
    .restart local v13    # "lowerQuery":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 1009
    .local v12, "lowerDisplayName":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v19, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v18, "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1012
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1013
    .local v17, "nameToken":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1014
    const/16 v24, 0x0

    goto :goto_1

    .line 1008
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "lowerDisplayName":Ljava/lang/String;
    .end local v17    # "nameToken":Ljava/lang/String;
    .end local v18    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v12, ""

    goto :goto_2

    .line 1018
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "lowerDisplayName":Ljava/lang/String;
    .restart local v18    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v24, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1021
    .local v5, "contentLines":[Ljava/lang/String;
    move-object v3, v5

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_e

    aget-object v4, v3, v8

    .line 1022
    .local v4, "contentLine":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1026
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v11, "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v23, "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v23

    invoke-static {v4, v11, v0}, Landroid/provider/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1033
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v16, "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 1036
    .local v6, "firstToken":I
    const/4 v9, -0x1

    .line 1037
    .local v9, "lastToken":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_8

    .line 1038
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1039
    .local v22, "token":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 1040
    .local v14, "lowerToken":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1044
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_6

    .line 1050
    const/16 v24, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    div-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    sub-int v25, v7, v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1054
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v25

    add-int v25, v25, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1037
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1059
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1064
    .end local v14    # "lowerToken":Ljava/lang/String;
    .end local v22    # "token":Ljava/lang/String;
    :cond_8
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v6, v0, :cond_d

    .line 1065
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .local v21, "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_9

    .line 1067
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_9
    move v7, v6

    :goto_6
    if-ge v7, v9, :cond_b

    .line 1070
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1071
    .local v15, "markedToken":Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1072
    .local v20, "originalToken":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    add-int/lit8 v24, v9, -0x1

    move/from16 v0, v24

    if-ge v7, v0, :cond_a

    .line 1076
    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v24

    add-int/lit8 v24, v7, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1081
    .end local v15    # "markedToken":Ljava/lang/String;
    .end local v20    # "originalToken":Ljava/lang/String;
    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_c

    .line 1082
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1

    .line 1021
    .end local v6    # "firstToken":I
    .end local v7    # "i":I
    .end local v9    # "lastToken":I
    .end local v11    # "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1088
    .end local v4    # "contentLine":Ljava/lang/String;
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_1
.end method
