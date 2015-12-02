.class Lcom/aliyun/ams/secure/BlackHelper$1;
.super Ljava/lang/Object;
.source "BlackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/ams/secure/BlackHelper;->reportInfo(ILjava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/ams/secure/BlackHelper;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/aliyun/ams/secure/BlackHelper;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    iput-object p2, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    iput-object p4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 236
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "phoneNum"

    iget-object v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$address:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    iget v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "content"

    iget-object v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_0
    iget v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const-string v4, "time"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    :cond_1
    const-string v4, "date"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string v4, "imsi"

    iget-object v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    # getter for: Lcom/aliyun/ams/secure/BlackHelper;->mIMSI:Ljava/lang/String;
    invoke-static {v5}, Lcom/aliyun/ams/secure/BlackHelper;->access$000(Lcom/aliyun/ams/secure/BlackHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v4, "imei"

    iget-object v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    # getter for: Lcom/aliyun/ams/secure/BlackHelper;->mIMEI:Ljava/lang/String;
    invoke-static {v5}, Lcom/aliyun/ams/secure/BlackHelper;->access$100(Lcom/aliyun/ams/secure/BlackHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v4, "tyid"

    iget-object v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    # getter for: Lcom/aliyun/ams/secure/BlackHelper;->mTyid:Ljava/lang/String;
    invoke-static {v5}, Lcom/aliyun/ams/secure/BlackHelper;->access$200(Lcom/aliyun/ams/secure/BlackHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    iget v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/aliyun/ams/secure/BlackHelper;->packerContent(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/aliyun/ams/secure/BlackHelper;->access$300(Lcom/aliyun/ams/secure/BlackHelper;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "content":Ljava/lang/String;
    new-instance v3, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;

    iget-object v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    const-string v5, "POST"

    iget-object v6, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    # getter for: Lcom/aliyun/ams/secure/BlackHelper;->URLS:[Ljava/lang/String;
    invoke-static {v6}, Lcom/aliyun/ams/secure/BlackHelper;->access$400(Lcom/aliyun/ams/secure/BlackHelper;)[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    rem-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;-><init>(Lcom/aliyun/ams/secure/BlackHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    .local v3, "message":Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-object v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    iget v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    # invokes: Lcom/aliyun/ams/secure/BlackHelper;->reportContent(ILcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Z
    invoke-static {v4, v5, v3}, Lcom/aliyun/ams/secure/BlackHelper;->access$500(Lcom/aliyun/ams/secure/BlackHelper;ILcom/aliyun/ams/secure/BlackHelper$RequestMessage;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    iget v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/aliyun/ams/secure/BlackHelper;->cacheReportData(ILjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/aliyun/ams/secure/BlackHelper;->access$600(Lcom/aliyun/ams/secure/BlackHelper;ILjava/lang/String;)V

    .line 256
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "message":Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;
    :goto_0
    return-void

    .line 251
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "message":Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;
    :cond_2
    iget-object v4, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    iget v5, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$type:I

    iget-object v6, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$address:Ljava/lang/String;

    iget-object v7, p0, Lcom/aliyun/ams/secure/BlackHelper$1;->val$body:Ljava/lang/String;

    # invokes: Lcom/aliyun/ams/secure/BlackHelper;->recordReportData(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v7}, Lcom/aliyun/ams/secure/BlackHelper;->access$700(Lcom/aliyun/ams/secure/BlackHelper;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "message":Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
