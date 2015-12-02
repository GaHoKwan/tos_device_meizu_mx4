.class public abstract Lcom/aliyun/ams/secure/service/ISecureService$Stub;
.super Landroid/os/Binder;
.source "ISecureService.java"

# interfaces
.implements Lcom/aliyun/ams/secure/service/ISecureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/ams/secure/service/ISecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ams/secure/service/ISecureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.aliyun.ams.secure.service.ISecureService"

.field static final TRANSACTION_addBlack:I = 0xf

.field static final TRANSACTION_endSession:I = 0x9

.field static final TRANSACTION_filterCall:I = 0x2

.field static final TRANSACTION_filterIntent:I = 0x3

.field static final TRANSACTION_filterProvider:I = 0x4

.field static final TRANSACTION_filterSms:I = 0x1

.field static final TRANSACTION_filterSmsFromPkg:I = 0x5

.field static final TRANSACTION_filterSyncIntent:I = 0x6

.field static final TRANSACTION_filterSyncTask:I = 0x7

.field static final TRANSACTION_isBlack:I = 0xe

.field static final TRANSACTION_isFraud:I = 0xd

.field static final TRANSACTION_removeBlack:I = 0x10

.field static final TRANSACTION_reportCall:I = 0xa

.field static final TRANSACTION_reportSms:I = 0xb

.field static final TRANSACTION_scanApkFile:I = 0x12

.field static final TRANSACTION_scanPackages:I = 0x11

.field static final TRANSACTION_startSession:I = 0x8

.field static final TRANSACTION_tipOneRing:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p0, p0, v0}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/aliyun/ams/secure/service/ISecureService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.aliyun.ams.secure.service.ISecureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/aliyun/ams/secure/service/ISecureService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/aliyun/ams/secure/service/ISecureService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/aliyun/ams/secure/service/ISecureService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/aliyun/ams/secure/service/ISecureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 57
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v7, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_2
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterCall(ILjava/lang/String;)Z

    move-result v7

    .line 69
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_3
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    sget-object v9, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 83
    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterIntent(Landroid/app/PendingIntent;)Z

    move-result v7

    .line 84
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v7, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v7    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1

    .line 90
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_4
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 93
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 98
    .local v1, "_arg0":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterProvider(Landroid/net/Uri;)Z

    move-result v7

    .line 99
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v7, :cond_4

    move v0, v8

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 96
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v7    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    .line 105
    .end local v1    # "_arg0":Landroid/net/Uri;
    :sswitch_5
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 110
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 115
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterSmsFromPkg(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    .line 116
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v7, :cond_6

    move v0, v8

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_3

    .line 122
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_6
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    .line 125
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 130
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterSyncIntent(Landroid/content/Intent;)Z

    move-result v7

    .line 131
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v7, :cond_9

    move v9, v8

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    if-eqz v1, :cond_a

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v1, p3, v8}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 128
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_4

    .restart local v7    # "_result":Z
    :cond_9
    move v9, v0

    .line 132
    goto :goto_5

    .line 138
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_result":Z
    :sswitch_7
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 149
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 154
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->filterSyncTask(ILandroid/content/Intent;)Z

    move-result v7

    .line 155
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v7, :cond_b

    move v0, v8

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_result":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_6

    .line 161
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_8
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->startSession(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->endSession()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 177
    :sswitch_a
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 183
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    move-object v0, p0

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->reportCall(Ljava/lang/String;JJ)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    :sswitch_b
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 197
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->reportSms(Ljava/lang/String;Ljava/lang/String;J)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":J
    :sswitch_c
    const-string v0, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->tipOneRing(ILjava/lang/String;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 214
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    move v2, v8

    .line 219
    .local v2, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->isFraud(Ljava/lang/String;Z)Z

    move-result v7

    .line 220
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v7, :cond_d

    move v0, v8

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_e
    move v2, v0

    .line 218
    goto :goto_7

    .line 226
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->isBlack(Ljava/lang/String;)Z

    move-result v7

    .line 230
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v7, :cond_f

    move v0, v8

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_f
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->addBlack(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 244
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v7, :cond_10

    move v0, v8

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v7    # "_result":Z
    :sswitch_10
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->removeBlack(Ljava/lang/String;)Z

    move-result v7

    .line 254
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v7, :cond_11

    move v0, v8

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_11
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    move v4, v8

    .line 267
    .local v4, "_arg2":Z
    :goto_8
    invoke-virtual {p0, v1, v2, v4}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->scanPackages(Ljava/lang/String;IZ)I

    move-result v7

    .line 268
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_arg2":Z
    .end local v7    # "_result":I
    :cond_12
    move v4, v0

    .line 266
    goto :goto_8

    .line 274
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_12
    const-string v9, "com.aliyun.ams.secure.service.ISecureService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    move v4, v8

    .line 281
    .restart local v4    # "_arg2":Z
    :goto_9
    invoke-virtual {p0, v1, v2, v4}, Lcom/aliyun/ams/secure/service/ISecureService$Stub;->scanApkFile(Ljava/lang/String;IZ)I

    move-result v7

    .line 282
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_arg2":Z
    .end local v7    # "_result":I
    :cond_13
    move v4, v0

    .line 280
    goto :goto_9

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
