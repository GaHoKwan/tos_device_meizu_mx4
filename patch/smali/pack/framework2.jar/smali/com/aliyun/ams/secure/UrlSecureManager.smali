.class public Lcom/aliyun/ams/secure/UrlSecureManager;
.super Ljava/lang/Object;
.source "UrlSecureManager.java"


# static fields
.field public static final STATUS_CODE_CLOSE:I = 0x0

.field public static final STATUS_CODE_SAFE:I = 0x1

.field public static final STATUS_CODE_UNSAFE:I = 0x2

.field private static volatile instance:Lcom/aliyun/ams/secure/UrlSecureManager;


# instance fields
.field private final CLOSE:I

.field private final OPEN:I

.field private cxt:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->OPEN:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->CLOSE:I

    .line 42
    iput-object p1, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->cxt:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private addCount(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 13
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 110
    iget-object v0, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->cxt:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v1, Lcom/aliyun/ams/secure/columns/StatisticsColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "key =?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p2, v4, v11

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 114
    const/4 v9, 0x1

    .line 115
    .local v9, "sum":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 123
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 124
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v0, "value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    sget-object v0, Lcom/aliyun/ams/secure/columns/StatisticsColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "key =?"

    new-array v2, v12, [Ljava/lang/String;

    aput-object p2, v2, v11

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    .end local v10    # "value":Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 120
    .end local v7    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    goto :goto_1

    .line 129
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v0, "key"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    sget-object v0, Lcom/aliyun/ams/secure/columns/StatisticsColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method private collectionEnable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Lcom/aliyun/ams/ic/IInfoCollectManager;->isICOpenBySettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getBastHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 149
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_1
    const-string v0, "www."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 156
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_3
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aliyun/ams/secure/UrlSecureManager;
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/aliyun/ams/secure/UrlSecureManager;->instance:Lcom/aliyun/ams/secure/UrlSecureManager;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcom/aliyun/ams/secure/UrlSecureManager;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/aliyun/ams/secure/UrlSecureManager;->instance:Lcom/aliyun/ams/secure/UrlSecureManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/aliyun/ams/secure/UrlSecureManager;

    invoke-direct {v0, p0}, Lcom/aliyun/ams/secure/UrlSecureManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aliyun/ams/secure/UrlSecureManager;->instance:Lcom/aliyun/ams/secure/UrlSecureManager;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/aliyun/ams/secure/UrlSecureManager;->instance:Lcom/aliyun/ams/secure/UrlSecureManager;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isOpen()Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 60
    const/4 v7, 0x0

    .line 61
    .local v7, "flag":Z
    iget-object v0, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->cxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "key =?"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "url"

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 66
    .local v8, "val":I
    if-ne v8, v10, :cond_2

    move v7, v10

    .line 68
    .end local v8    # "val":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_1
    return v7

    .restart local v8    # "val":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_2
    move v7, v11

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public isPhishingUrl(Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 79
    invoke-direct {p0}, Lcom/aliyun/ams/secure/UrlSecureManager;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v8

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/UrlSecureManager;->getBastHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 89
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v3, "url=?"

    .line 90
    .local v3, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->cxt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 93
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/aliyun/ams/secure/columns/UrlColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_4

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/aliyun/ams/secure/UrlSecureManager;->cxt:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/aliyun/ams/secure/UrlSecureManager;->collectionEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aliyun/ams/secure/UrlSecureManager;->addCount(Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_3
    const/4 v1, 0x2

    .line 103
    if-eqz v6, :cond_0

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 103
    :cond_4
    if-eqz v6, :cond_5

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move v1, v8

    .line 106
    goto :goto_0

    .line 100
    :catch_0
    move-exception v7

    .line 101
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz v6, :cond_5

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method
