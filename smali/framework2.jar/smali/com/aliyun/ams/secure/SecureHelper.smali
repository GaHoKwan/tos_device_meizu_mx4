.class public Lcom/aliyun/ams/secure/SecureHelper;
.super Ljava/lang/Object;
.source "SecureHelper.java"


# static fields
.field public static final DELIVERY_INTENT:Ljava/lang/String; = "deliveryIntent"

.field public static final DELIVERY_INTENTS_COUNT:Ljava/lang/String; = "deliveryIntentsCount"

.field public static final DST_ADDRESS:Ljava/lang/String; = "dstAddress"

.field public static final MUTI:Ljava/lang/String; = "muti"

.field public static final PART_COUNT:Ljava/lang/String; = "partCount"

.field public static final SEND_TYPE:Ljava/lang/String; = "sendType"

.field public static final SENT_INTENT:Ljava/lang/String; = "sentIntent"

.field public static final SENT_INTENTS_COUNT:Ljava/lang/String; = "sentIntentsCount"

.field public static final SINGLE:Ljava/lang/String; = "single"

.field public static final SRC_ADDRESS:Ljava/lang/String; = "srcAddress"

.field public static final TEXT:Ljava/lang/String; = "text"

.field private static instance:Lcom/aliyun/ams/secure/SecureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/aliyun/ams/secure/SecureHelper;

    invoke-direct {v0}, Lcom/aliyun/ams/secure/SecureHelper;-><init>()V

    sput-object v0, Lcom/aliyun/ams/secure/SecureHelper;->instance:Lcom/aliyun/ams/secure/SecureHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static composeIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "srcAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "dstAddress"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "sentIntent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v1, "deliveryIntent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string v1, "sendType"

    const-string v2, "single"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method public static composeIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 5
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "srcAddress"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v3, "dstAddress"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "size":I
    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 110
    const-string v3, "partCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 116
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 117
    const-string v3, "sentIntentsCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sentIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "i":I
    :cond_1
    if-eqz p4, :cond_2

    .line 123
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 124
    const-string v3, "deliveryIntentsCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliveryIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    .end local v0    # "i":I
    :cond_2
    const-string v3, "sendType"

    const-string v4, "muti"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    return-object v1
.end method

.method public static getInstance()Lcom/aliyun/ams/secure/SecureHelper;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/aliyun/ams/secure/SecureHelper;->instance:Lcom/aliyun/ams/secure/SecureHelper;

    return-object v0
.end method

.method public static getStatusByKey(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    .local v8, "ret":I
    const/4 v10, 0x0

    .line 54
    .local v10, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 55
    .local v6, "cursor":Landroid/database/Cursor;
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v2, v3

    .line 58
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/aliyun/ams/secure/columns/SettingsColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "key =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 67
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 79
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v9, v8

    .line 83
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "ret":I
    .local v9, "ret":I
    :goto_1
    return v9

    .line 68
    .end local v9    # "ret":I
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "ret":I
    :catch_0
    move-exception v7

    .line 69
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v8, -0x2

    .line 70
    goto :goto_0

    .line 73
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, -0x1

    goto :goto_0

    .line 75
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v7

    .line 76
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SecureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read datebase error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    const/4 v8, -0x2

    .line 79
    if-eqz v6, :cond_3

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .line 83
    .end local v8    # "ret":I
    .restart local v9    # "ret":I
    goto :goto_1

    .line 79
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "ret":I
    .restart local v8    # "ret":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v8

    .line 83
    .end local v8    # "ret":I
    .restart local v9    # "ret":I
    goto :goto_1
.end method
