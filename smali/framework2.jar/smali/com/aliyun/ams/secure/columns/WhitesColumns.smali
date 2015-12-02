.class public Lcom/aliyun/ams/secure/columns/WhitesColumns;
.super Ljava/lang/Object;
.source "WhitesColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "content://com.aliyun.provider.secure/white"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/WhitesColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
