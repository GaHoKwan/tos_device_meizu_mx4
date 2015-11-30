.class Landroid/content/Context$PermResult;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermResult"
.end annotation


# instance fields
.field pre:J

.field ret:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context$1;

    .prologue
    .line 3116
    invoke-direct {p0}, Landroid/content/Context$PermResult;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate()Z
    .locals 6

    .prologue
    .line 3121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3122
    .local v0, "now":J
    iget-wide v2, p0, Landroid/content/Context$PermResult;->pre:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3123
    iput-wide v0, p0, Landroid/content/Context$PermResult;->pre:J

    .line 3124
    const/4 v2, 0x1

    .line 3126
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
