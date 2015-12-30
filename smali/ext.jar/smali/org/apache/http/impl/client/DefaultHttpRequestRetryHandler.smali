.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private final requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 69
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Exception parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    if-nez p3, :cond_1

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1
    iget v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v4, :cond_3

    .line 135
    :cond_2
    :goto_0
    return v2

    .line 100
    :cond_3
    instance-of v4, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v4, :cond_4

    move v2, v3

    .line 102
    goto :goto_0

    .line 104
    :cond_4
    instance-of v4, p1, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_2

    .line 111
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-nez v4, :cond_2

    .line 115
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v4, :cond_2

    .line 119
    instance-of v4, p1, Ljava/net/SocketException;

    if-nez v4, :cond_2

    .line 126
    const-string v4, "http.request_sent"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v3

    .line 129
    .local v1, "sent":Z
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v4, :cond_2

    :cond_5
    move v2, v3

    .line 132
    goto :goto_0

    .end local v1    # "sent":Z
    :cond_6
    move v1, v2

    .line 128
    goto :goto_1
.end method

.method public setRetryCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 159
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 160
    return-void
.end method
