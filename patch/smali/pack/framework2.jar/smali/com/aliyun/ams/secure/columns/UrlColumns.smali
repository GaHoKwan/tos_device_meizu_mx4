.class public Lcom/aliyun/ams/secure/columns/UrlColumns;
.super Ljava/lang/Object;
.source "UrlColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "content://com.aliyun.provider.secure/url"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/UrlColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method
