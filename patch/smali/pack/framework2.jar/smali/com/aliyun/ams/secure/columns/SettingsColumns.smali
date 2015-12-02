.class public Lcom/aliyun/ams/secure/columns/SettingsColumns;
.super Ljava/lang/Object;
.source "SettingsColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final COLUMNS_KEY:Ljava/lang/String; = "key"

.field public static final COLUMNS_VALUES:Ljava/lang/String; = "value"

.field public static final CONTENT_AUTOMATIC_URI:Landroid/net/Uri;

.field public static final CONTENT_BLACK_URI:Landroid/net/Uri;

.field public static final CONTENT_DEBITS_URI:Landroid/net/Uri;

.field public static final CONTENT_INTELLLIGENT_URI:Landroid/net/Uri;

.field public static final CONTENT_KEYWORD_URI:Landroid/net/Uri;

.field public static final CONTENT_REJCALL_REMIND_URI:Landroid/net/Uri;

.field public static final CONTENT_REMIND_URI:Landroid/net/Uri;

.field public static final CONTENT_SMS_URI:Landroid/net/Uri;

.field public static final CONTENT_STRANGERCALL_URI:Landroid/net/Uri;

.field public static final CONTENT_STRANGERSMS_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URL_URI:Landroid/net/Uri;

.field public static final CONTENT_VISTOR_PASSWD_URI:Landroid/net/Uri;

.field public static final CONTENT_VISTOR_URI:Landroid/net/Uri;

.field public static final KEY_AUTOMATIC_MODE:Ljava/lang/String; = "automatic"

.field public static final KEY_BLACK_MODE:Ljava/lang/String; = "black"

.field public static final KEY_DEBITS_MODE:Ljava/lang/String; = "debits"

.field public static final KEY_INTELLIGENT_MODE:Ljava/lang/String; = "intelligent"

.field public static final KEY_KEYWORD_MODE:Ljava/lang/String; = "keyword"

.field public static final KEY_REJCALL_REMIND:Ljava/lang/String; = "rejcallremind"

.field public static final KEY_REMIND_MODE:Ljava/lang/String; = "remind"

.field public static final KEY_SMS_MODE:Ljava/lang/String; = "sms"

.field public static final KEY_STRANGER_CALL_MODE:Ljava/lang/String; = "stranger_call"

.field public static final KEY_STRANGER_SMS_MODE:Ljava/lang/String; = "stranger_sms"

.field public static final KEY_URL_MODE:Ljava/lang/String; = "url"

.field public static final KEY_VISTOR_MODE:Ljava/lang/String; = "vistor"

.field public static final KEY_VISTOR_PASSWD:Ljava/lang/String; = "vistorpw"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "content://com.aliyun.provider.secure/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://com.aliyun.provider.secure/settings/black"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_BLACK_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://com.aliyun.provider.secure/settings/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_SMS_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.aliyun.provider.secure/settings/keyword"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_KEYWORD_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.aliyun.provider.secure/settings/stranger_sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_STRANGERSMS_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.aliyun.provider.secure/settings/stranger_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_STRANGERCALL_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "content://com.aliyun.provider.secure/settings/vistor"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_VISTOR_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.aliyun.provider.secure/settings/intelligent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_INTELLLIGENT_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.aliyun.provider.secure/settings/url"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_URL_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.aliyun.provider.secure/settings/debits"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_DEBITS_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "content://com.aliyun.provider.secure/settings/remind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_REMIND_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "content://com.aliyun.provider.secure/settings/automatic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_AUTOMATIC_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "content://com.aliyun.provider.secure/settings/vistorpasswd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_VISTOR_PASSWD_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "content://com.aliyun.provider.secure/settings/rejcallremind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_REJCALL_REMIND_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
