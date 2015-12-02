.class public Lcom/aliyun/ams/secure/BlackHelper;
.super Ljava/lang/Object;
.source "BlackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;
    }
.end annotation


# static fields
.field public static final ADDRESS_INDEX:Ljava/lang/String; = "address_index"

.field private static final CONNECTION_TIME_OUT:I = 0xbb8

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final KEY_ADDR:Ljava/lang/String; = "phoneNum"

.field private static final KEY_BODY:Ljava/lang/String; = "content"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_IMSI:Ljava/lang/String; = "imsi"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TYID:Ljava/lang/String; = "tyid"

.field private static final MIX_MATCH:I = 0x7

.field public static final STATUS_DELETE:I = 0x2

.field public static final STATUS_UPDATE:I = 0x3

.field public static final USER_DEFINE:I = 0x1

.field private static mBlackHelper:Lcom/aliyun/ams/secure/BlackHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TASK_TYPE_CALL:I

.field private final TASK_TYPE_SMS:I

.field private URLS:[Ljava/lang/String;

.field private cr:Landroid/content/ContentResolver;

.field private ctx:Landroid/content/Context;

.field private mIMEI:Ljava/lang/String;

.field private mIMSI:Ljava/lang/String;

.field private mServiceHandler:Landroid/os/Handler;

.field private mTyid:Ljava/lang/String;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "SecureService_BlackHelper"

    iput-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->TAG:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mServiceHandler:Landroid/os/Handler;

    .line 217
    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 218
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://sec.mobile.aliyun.com/reportimblacklist"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://sec.mobile.aliyun.com/reportlineblacklist"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->URLS:[Ljava/lang/String;

    .line 222
    iput v3, p0, Lcom/aliyun/ams/secure/BlackHelper;->TASK_TYPE_SMS:I

    .line 223
    const/4 v0, 0x3

    iput v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->TASK_TYPE_CALL:I

    .line 68
    iput-object p1, p0, Lcom/aliyun/ams/secure/BlackHelper;->ctx:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    .line 70
    invoke-direct {p0}, Lcom/aliyun/ams/secure/BlackHelper;->getPhoneInfo()V

    .line 71
    invoke-direct {p0}, Lcom/aliyun/ams/secure/BlackHelper;->getTyidInfo()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/ams/secure/BlackHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aliyun/ams/secure/BlackHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aliyun/ams/secure/BlackHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->mTyid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/ams/secure/BlackHelper;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/BlackHelper;->packerContent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/aliyun/ams/secure/BlackHelper;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->URLS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aliyun/ams/secure/BlackHelper;ILcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/BlackHelper;->reportContent(ILcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/aliyun/ams/secure/BlackHelper;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/aliyun/ams/secure/BlackHelper;->cacheReportData(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/ams/secure/BlackHelper;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/ams/secure/BlackHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/ams/secure/BlackHelper;->recordReportData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cacheReportData(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    iget-object v2, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/aliyun/ams/secure/columns/CacheDataColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    .local v0, "uri":Landroid/net/Uri;
    const-string v2, "SecureService_BlackHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache data insert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method private clearCacheData(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 367
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/aliyun/ams/secure/columns/CacheDataColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 369
    .local v0, "rowsCount":I
    const-string v1, "SecureService_BlackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear cache data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/aliyun/ams/secure/BlackHelper;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/aliyun/ams/secure/BlackHelper;->mBlackHelper:Lcom/aliyun/ams/secure/BlackHelper;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/aliyun/ams/secure/BlackHelper;

    invoke-direct {v0, p0}, Lcom/aliyun/ams/secure/BlackHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aliyun/ams/secure/BlackHelper;->mBlackHelper:Lcom/aliyun/ams/secure/BlackHelper;

    .line 78
    :cond_0
    sget-object v0, Lcom/aliyun/ams/secure/BlackHelper;->mBlackHelper:Lcom/aliyun/ams/secure/BlackHelper;

    return-object v0
.end method

.method static getBashNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 208
    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 213
    :cond_0
    :goto_0
    return-object p0

    .line 210
    :cond_1
    const-string v0, "0086"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getHttpConnection(Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Ljava/lang/String;
    .locals 23
    .param p1, "from"    # Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;

    .prologue
    .line 373
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->method:Ljava/lang/String;

    .line 374
    .local v13, "method":Ljava/lang/String;
    const-string v6, ""

    .line 375
    .local v6, "content":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 376
    :cond_0
    const-string v13, "GET"

    .line 378
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v4, "buidler":Ljava/lang/StringBuilder;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->parameters:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 381
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 382
    const-string v20, "&"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    const-string v20, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 385
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 394
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 398
    .local v18, "targetUrl":Ljava/lang/String;
    const-string v20, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 399
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v20, "?"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_b

    const-string v20, ""

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 401
    :cond_3
    const-string v20, "SecureService_BlackHelper"

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v9, 0x0

    .line 403
    .local v9, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x0

    .line 404
    .local v14, "outStream":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 407
    .local v11, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/aliyun/ams/secure/BlackHelper;->trustAllHostname()V

    .line 408
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 409
    .local v19, "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 411
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 412
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 413
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 414
    const/16 v20, 0xbb8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 415
    const/16 v20, 0xbb8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 416
    const-string v20, "Content-Type"

    const-string v21, "text/plain"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v20, "Charset"

    const-string v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 421
    const-string v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 422
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 424
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v15

    .line 426
    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 427
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 428
    .local v17, "responseCode":I
    const-string v20, "SecureService_BlackHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "response code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/16 v20, 0xc8

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 430
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 431
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 432
    .local v5, "byteArrayBuff":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 433
    .local v3, "buff":[B
    const/4 v12, -0x1

    .line 434
    .local v12, "l":I
    :goto_3
    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_c

    .line 435
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v3, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 440
    .end local v3    # "buff":[B
    .end local v5    # "byteArrayBuff":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "l":I
    .end local v17    # "responseCode":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    if-eqz v14, :cond_5

    :try_start_5
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 445
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 446
    :cond_6
    if-eqz v9, :cond_7

    .line 447
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 452
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    const/16 v16, 0x0

    :cond_8
    :goto_6
    return-object v16

    .line 389
    .end local v9    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .end local v18    # "targetUrl":Ljava/lang/String;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_6
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 392
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v6

    goto/16 :goto_1

    .line 399
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v18    # "targetUrl":Ljava/lang/String;
    :cond_b
    const-string v20, "?"

    goto/16 :goto_2

    .line 437
    .restart local v3    # "buff":[B
    .restart local v5    # "byteArrayBuff":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "l":I
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v17    # "responseCode":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_c
    :try_start_7
    new-instance v16, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 444
    .local v16, "response":Ljava/lang/String;
    if-eqz v14, :cond_d

    :try_start_8
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 445
    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 446
    :cond_e
    if-eqz v9, :cond_8

    .line 447
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 448
    :catch_2
    move-exception v7

    .line 449
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 444
    .end local v3    # "buff":[B
    .end local v5    # "byteArrayBuff":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "l":I
    .end local v16    # "response":Ljava/lang/String;
    :cond_f
    if-eqz v14, :cond_10

    :try_start_9
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 445
    :cond_10
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 446
    :cond_11
    if-eqz v9, :cond_7

    .line 447
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 448
    :catch_3
    move-exception v7

    .line 449
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 448
    .end local v17    # "responseCode":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_4
    move-exception v7

    .line 449
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 443
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 444
    :goto_7
    if-eqz v14, :cond_12

    :try_start_a
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 445
    :cond_12
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 446
    :cond_13
    if-eqz v9, :cond_14

    .line 447
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 450
    :cond_14
    :goto_8
    throw v20

    .line 448
    :catch_5
    move-exception v7

    .line 449
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 443
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v20

    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    goto :goto_7

    .line 440
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v7

    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    goto/16 :goto_4
.end method

.method private getIndexPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 199
    .local v0, "len":I
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 200
    add-int/lit8 v1, v0, -0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    .end local v0    # "len":I
    :cond_0
    return-object p1
.end method

.method private getPhoneInfo()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->ctx:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 288
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMSI:Ljava/lang/String;

    .line 289
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMEI:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMSI:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMSI:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMEI:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMEI:Ljava/lang/String;

    .line 293
    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMSI:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mIMEI:Ljava/lang/String;

    goto :goto_1
.end method

.method private getTyidInfo()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->mTyid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->mTyid:Ljava/lang/String;

    .line 307
    :cond_0
    return-void
.end method

.method private isBlacked(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "blackId":Ljava/lang/String;
    invoke-static {p1}, Lcom/aliyun/ams/secure/BlackHelper;->getBashNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v0, "SecureService_BlackHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlack after normalizeDigitsOnly number  is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/BlackHelper;->getIndexPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "address_index =? and status <> 2 and kind = 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 185
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    return-object v6
.end method

.method private isReported(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 261
    invoke-direct {p0, p2}, Lcom/aliyun/ams/secure/BlackHelper;->getIndexPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "phoneNum":Ljava/lang/String;
    const-string v3, "type=? AND address_index=? "

    .line 264
    .local v3, "selection":Ljava/lang/String;
    if-ne p1, v2, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object v7, v4, v8

    aput-object p3, v4, v2

    .line 270
    .local v4, "selectionArgs":[Ljava/lang/String;
    :goto_0
    const-string v0, "SecureService_BlackHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v6, 0x0

    .line 273
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/aliyun/ams/secure/columns/ReportInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    aput-object v10, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    .line 279
    if-eqz v6, :cond_0

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 282
    :goto_1
    return v0

    .line 268
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object v7, v4, v8

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 279
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_3

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    move v0, v9

    .line 282
    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 279
    if-eqz v6, :cond_3

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 279
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private packerContent(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/16 v0, 0x5b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const/4 v7, 0x0

    .line 315
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/aliyun/ams/secure/columns/CacheDataColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 316
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    :cond_0
    const-string v0, "content"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "data":Ljava/lang/String;
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 327
    .end local v8    # "data":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_3
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    const-string v0, "SecureService_BlackHelper"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :catch_0
    move-exception v9

    .line 324
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SecureService_BlackHelper"

    const-string v1, "error when querying cache database."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    if-eqz v7, :cond_3

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 327
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private recordReportData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    iget-object v2, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/aliyun/ams/secure/columns/ReportInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 362
    .local v0, "uri":Landroid/net/Uri;
    const-string v2, "SecureService_BlackHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordReport data insert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method private reportContent(ILcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "from"    # Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;

    .prologue
    .line 336
    invoke-direct {p0, p2}, Lcom/aliyun/ams/secure/BlackHelper;->getHttpConnection(Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "response":Ljava/lang/String;
    const-string v1, "SecureService_BlackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server Respone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/BlackHelper;->clearCacheData(I)V

    .line 340
    const/4 v1, 0x1

    .line 342
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private trustAllHostname()V
    .locals 6

    .prologue
    .line 456
    :try_start_0
    new-instance v2, Lcom/aliyun/ams/secure/BlackHelper$2;

    invoke-direct {v2, p0}, Lcom/aliyun/ams/secure/BlackHelper$2;-><init>(Lcom/aliyun/ams/secure/BlackHelper;)V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 461
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 462
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/aliyun/ams/secure/BlackHelper$3;

    invoke-direct {v5, p0}, Lcom/aliyun/ams/secure/BlackHelper$3;-><init>(Lcom/aliyun/ams/secure/BlackHelper;)V

    aput-object v5, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 475
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addBlack(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 14
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/aliyun/ams/secure/BlackHelper;->getBashNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v1, "SecureService_BlackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBlack after normalize phoneNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    move/from16 v0, p3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    move/from16 v0, p3

    if-eq v0, v1, :cond_1

    const/16 p3, 0x3

    .line 117
    :cond_1
    const/4 v8, 0x0

    .line 118
    .local v8, "blackId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 119
    .local v10, "count":I
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/BlackHelper;->getIndexPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "address":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v9, "contentValue":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "description"

    move-object/from16 v0, p2

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    const-string v1, "block_type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "address_index=? and status <> 2 and kind = 1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 134
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 135
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 136
    if-lez v10, :cond_3

    .line 137
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    const-string v1, "block_type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 143
    .local v12, "indexOfType":I
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    or-int p3, p3, v1

    .line 145
    .end local v12    # "indexOfType":I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_4
    const/4 v13, 0x0

    .line 149
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_6

    .line 150
    sget-object v1, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 151
    const-string v1, "block_type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isBlack(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/BlackHelper;->isBlacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeBlack(Ljava/lang/String;)Z
    .locals 8
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    invoke-static {p1}, Lcom/aliyun/ams/secure/BlackHelper;->getBashNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    const-string v4, "SecureService_BlackHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeBlack after normalize phoneNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/aliyun/ams/secure/BlackHelper;->isBlacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "mid":Ljava/lang/String;
    const-string v4, "SecureService_BlackHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove black id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v1, :cond_0

    .line 168
    sget-object v4, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 169
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "SecureService_BlackHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove black delete uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, p0, Lcom/aliyun/ams/secure/BlackHelper;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "count":I
    const-string v4, "SecureService_BlackHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove black delete count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-lez v0, :cond_0

    .line 173
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public reportInfo(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 226
    move-object v0, p2

    .line 227
    .local v0, "phoneNo":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/aliyun/ams/secure/BlackHelper;->isReported(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "SecureService_BlackHelper"

    const-string v2, "this number has reported."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return v3

    .line 231
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "worker thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 232
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 233
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/aliyun/ams/secure/BlackHelper;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mServiceHandler:Landroid/os/Handler;

    .line 234
    iget-object v1, p0, Lcom/aliyun/ams/secure/BlackHelper;->mServiceHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aliyun/ams/secure/BlackHelper$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/aliyun/ams/secure/BlackHelper$1;-><init>(Lcom/aliyun/ams/secure/BlackHelper;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
