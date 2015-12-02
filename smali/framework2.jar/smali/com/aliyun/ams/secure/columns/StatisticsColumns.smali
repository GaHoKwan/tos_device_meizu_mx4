.class public Lcom/aliyun/ams/secure/columns/StatisticsColumns;
.super Ljava/lang/Object;
.source "StatisticsColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final COLUMNS_KEY:Ljava/lang/String; = "key"

.field public static final COLUMNS_VALUES:Ljava/lang/String; = "value"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_DATA1:Ljava/lang/String; = "data1"

.field public static final KEY_DATA2:Ljava/lang/String; = "data2"

.field public static final KEY_ENTER_APP:Ljava/lang/String; = "enter_app"

.field public static final KEY_FLUSH_URL:I = 0x9

.field public static final KEY_OPERATE_TIME:Ljava/lang/String; = "operate_time"

.field public static final KEY_OUT_OF_SMS:Ljava/lang/String; = "out_of_sms"

.field public static final KEY_USER_FORBID:Ljava/lang/String; = "user_forbid"

.field public static final KEY_USER_PERMIT:Ljava/lang/String; = "user_permit"

.field public static final RESULT_BLACK_SYS:I = 0x2

.field public static final RESULT_BLACK_USR:I = 0x1

.field public static final RESULT_CHARGE_APP:I = 0x6

.field public static final RESULT_DIRTY_WORD_SYS:I = 0x5

.field public static final RESULT_DIRTY_WORD_USR:I = 0x4

.field public static final RESULT_INTERCE_CALL:I = 0x7

.field public static final RESULT_SP_SYS:I = 0x8

.field public static final RESULT_STRANGE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://com.aliyun.provider.secure/statistics"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/StatisticsColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
