.class Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;
.super Ljava/lang/Object;
.source "BlackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/ams/secure/BlackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestMessage"
.end annotation


# instance fields
.field public final method:Ljava/lang/String;

.field public parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aliyun/ams/secure/BlackHelper;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aliyun/ams/secure/BlackHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->this$0:Lcom/aliyun/ams/secure/BlackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->parameters:Ljava/util/Map;

    .line 487
    iput-object p2, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->method:Ljava/lang/String;

    .line 488
    iput-object p3, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->url:Ljava/lang/String;

    .line 489
    if-eqz p4, :cond_0

    .line 490
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/aliyun/ams/secure/BlackHelper$RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
