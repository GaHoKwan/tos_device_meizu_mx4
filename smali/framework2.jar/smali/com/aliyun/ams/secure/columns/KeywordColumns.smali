.class public Lcom/aliyun/ams/secure/columns/KeywordColumns;
.super Ljava/lang/Object;
.source "KeywordColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALLOW_CONTACT:Ljava/lang/String; = "allow_contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final HIT:Ljava/lang/String; = "hit"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAG:Ljava/lang/String; = "tag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.aliyun.provider.secure/keyword"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/KeywordColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
