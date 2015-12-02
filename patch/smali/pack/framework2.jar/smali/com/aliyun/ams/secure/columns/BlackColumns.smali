.class public Lcom/aliyun/ams/secure/columns/BlackColumns;
.super Ljava/lang/Object;
.source "BlackColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BLOCK_TYPE:Ljava/lang/String; = "block_type"

.field public static final CALL_HIT:Ljava/lang/String; = "call_hit"

.field public static final CONTENT_SYSTEM_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_USER_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final SMS_HIT:Ljava/lang/String; = "sms_hit"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAG:Ljava/lang/String; = "tag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.aliyun.provider.secure/black"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://com.aliyun.provider.secure/black/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_USER_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.aliyun.provider.secure/black/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/BlackColumns;->CONTENT_SYSTEM_URI:Landroid/net/Uri;

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
