.class Landroid/net/Proxy$DefaultHttpRequestCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpRequestCheckHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method private checkMoMSSubPermission(I)Z
    .locals 1
    .param p1, "subPermission"    # I

    .prologue
    .line 425
    const/16 v0, 0x43

    invoke-static {v0}, Landroid/app/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkRequest(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 429
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Landroid/net/Proxy$DefaultHttpRequestCheckHandler;->checkMoMSSubPermission(I)Z

    move-result v0

    return v0
.end method
