.class public Lcom/aliyun/ams/secure/columns/CallRecordColumns;
.super Ljava/lang/Object;
.source "CallRecordColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final REASON:Ljava/lang/String; = "reason"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "content://com.aliyun.provider.secure/callblocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/CallRecordColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method
