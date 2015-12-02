.class public Lcom/aliyun/ams/ic/ICInfoConfig;
.super Ljava/lang/Object;
.source "ICInfoConfig.java"


# static fields
.field public static final FLAG_3RD_APP:J = 0x1L

.field public static final FLAG_ACTIVITY:J = 0x4L

.field public static final FLAG_ALWAYS_INFO:J = 0x8000000L

.field public static final FLAG_BROWSER_INFO:J = 0x800L

.field public static final FLAG_CLOUD_APP:J = 0x2L

.field public static final FLAG_CRASH_INFO:J = 0x80L

.field public static final FLAG_DEFAULT:J = 0x0L

.field public static final FLAG_DEVICE_INFO:J = 0x20L

.field public static final FLAG_GPS:J = 0x2000L

.field public static final FLAG_HOMESHELL_INFO:J = 0x100L

.field public static final FLAG_IMPORTANT_INFO:J = -0x80000000L

.field public static final FLAG_INSTALL_AND_UNINSTALL_APP:J = 0x40L

.field public static final FLAG_KEY:J = 0x1000L

.field public static final FLAG_NETWORK_FLOW_INFO:J = 0x400L

.field public static final FLAG_SETTING_INFO:J = 0x200L

.field public static final FLAG_SYSTEM_THIRDAPP:J = 0x800000L

.field public static final FLAG_VIEW:J = 0x10L

.field public static final FLAG_WINDOW:J = 0x8L

.field public static final PKG_CHANGED_INFO:J = 0x80000L


# instance fields
.field private mFlag:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    .line 97
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "flags"    # J

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    .line 103
    iput-wide p1, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    .line 104
    return-void
.end method


# virtual methods
.method public addFlags(J)Lcom/aliyun/ams/ic/ICInfoConfig;
    .locals 2
    .param p1, "flags"    # J

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    .line 134
    return-object p0
.end method

.method public getFlags()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    return-wide v0
.end method

.method public setFlags(J)Lcom/aliyun/ams/ic/ICInfoConfig;
    .locals 0
    .param p1, "flags"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/aliyun/ams/ic/ICInfoConfig;->mFlag:J

    .line 117
    return-object p0
.end method
