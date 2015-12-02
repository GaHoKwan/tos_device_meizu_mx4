.class public Lcom/aliyun/ams/secure/columns/AppListColumns;
.super Ljava/lang/Object;
.source "AppListColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALLOW_SENDSMS:Ljava/lang/String; = "allow_sendsms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_HIT:Ljava/lang/String; = "data_hit"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final INTENT_HIT:Ljava/lang/String; = "intent_hit"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PROTECT:Ljava/lang/String; = "protect"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://com.aliyun.provider.secure/applist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/AppListColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method
