.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2183
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 62
    if-nez p0, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 67
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 88
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2180
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 220
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Process the custom animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 2176
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 126
    :pswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 128
    .local v121, "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 129
    .local v6, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 131
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 133
    .local v10, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 135
    .local v12, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 136
    .local v13, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 137
    .local v14, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 139
    .local v15, "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 141
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v193

    .line 144
    .local v193, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v5, 0x1

    goto :goto_0

    .line 137
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v193    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 139
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 151
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 153
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 154
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 155
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 156
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 157
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 158
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 159
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 160
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 161
    .restart local v13    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 162
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v15, v5

    .line 164
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 166
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v5, p0

    .line 167
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v193

    .line 170
    .restart local v193    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 162
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v193    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 164
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 177
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 179
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 180
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 181
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 182
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 183
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 184
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 185
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 186
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 187
    .restart local v13    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 188
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v15, v5

    .line 190
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 192
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v5, p0

    .line 193
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v193

    .line 196
    .local v193, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v5, 0x0

    move-object/from16 v0, v193

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 188
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v193    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 190
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 203
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 205
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 206
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 207
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 208
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 209
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 210
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 211
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 212
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 213
    .restart local v13    # "startFlags":I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 214
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 216
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 217
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v193

    .line 219
    .local v193, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 214
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v193    # "result":I
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 226
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 228
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 229
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    .line 230
    .local v8, "intent":Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 231
    .local v31, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 232
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "fillInIntent":Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 234
    .restart local v31    # "fillInIntent":Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 235
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 236
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 237
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 238
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 239
    .local v36, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 240
    .local v37, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_8
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v38, v16

    .line 242
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v193

    .line 245
    .restart local v193    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 240
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v193    # "result":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 252
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/IntentSender;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v31    # "fillInIntent":Landroid/content/Intent;
    .end local v36    # "flagsMask":I
    .end local v37    # "flagsValues":I
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 254
    .local v126, "callingActivity":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 255
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 257
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v193

    .line 258
    .local v193, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v193, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 255
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v193    # "result":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 259
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v193    # "result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 264
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v126    # "callingActivity":Landroid/os/IBinder;
    .end local v193    # "result":Z
    :pswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 266
    .local v52, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 267
    .local v44, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 268
    .local v43, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 269
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "resultData":Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 271
    .restart local v44    # "resultData":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v191

    .line 272
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v191, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 273
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 278
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":Z
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 280
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 281
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 282
    .restart local v12    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v11, v12}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 288
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 290
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v191

    .line 291
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v191, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 292
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 297
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":Z
    :pswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 299
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v191

    .line 300
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v191, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 301
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 307
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":Z
    :pswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 309
    .restart local v121    # "b":Landroid/os/IBinder;
    if-eqz v121, :cond_f

    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 311
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 312
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 313
    if-eqz v121, :cond_10

    invoke-static/range {v121 .. v121}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 315
    .local v21, "rec":Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 316
    .local v22, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 317
    .local v23, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move/from16 v24, v17

    .line 318
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 319
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v8, :cond_11

    .line 321
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 309
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 313
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto :goto_f

    .line 324
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    .restart local v22    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "perm":Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 331
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 333
    .restart local v121    # "b":Landroid/os/IBinder;
    if-nez v121, :cond_12

    .line 334
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    :cond_12
    invoke-static/range {v121 .. v121}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 337
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 344
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 346
    .restart local v121    # "b":Landroid/os/IBinder;
    if-eqz v121, :cond_13

    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 348
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 349
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 350
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 351
    if-eqz v121, :cond_14

    invoke-static/range {v121 .. v121}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 353
    .local v10, "resultTo":Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 354
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 355
    .local v44, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 356
    .local v45, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 357
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 358
    .local v47, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v48, 0x1

    .line 359
    .local v48, "serialized":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v49, 0x1

    .line 360
    .local v49, "sticky":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v38, p0

    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v23

    move/from16 v50, v17

    .line 361
    invoke-virtual/range {v38 .. v50}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v191

    .line 364
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 346
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v17    # "userId":I
    .end local v23    # "perm":Ljava/lang/String;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v47    # "appOp":I
    .end local v48    # "serialized":Z
    .end local v49    # "sticky":Z
    .end local v191    # "res":I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 351
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto :goto_12

    .line 358
    .restart local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v23    # "perm":Ljava/lang/String;
    .restart local v43    # "resultCode":I
    .restart local v44    # "resultData":Ljava/lang/String;
    .restart local v45    # "resultExtras":Landroid/os/Bundle;
    .restart local v47    # "appOp":I
    :cond_15
    const/16 v48, 0x0

    goto :goto_13

    .line 359
    .restart local v48    # "serialized":Z
    :cond_16
    const/16 v49, 0x0

    goto :goto_14

    .line 371
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v47    # "appOp":I
    .end local v48    # "serialized":Z
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 373
    .restart local v121    # "b":Landroid/os/IBinder;
    if-eqz v121, :cond_17

    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 374
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 375
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 376
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 373
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 382
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 384
    .local v42, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 385
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 386
    .restart local v44    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 387
    .restart local v45    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v46, 0x1

    .line 388
    .local v46, "resultAbort":Z
    :goto_16
    if-eqz v42, :cond_18

    move-object/from16 v41, p0

    .line 389
    invoke-virtual/range {v41 .. v46}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 391
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 387
    .end local v46    # "resultAbort":Z
    :cond_19
    const/16 v46, 0x0

    goto :goto_16

    .line 396
    .end local v42    # "who":Landroid/os/IBinder;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    :pswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 399
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 402
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 407
    .end local v6    # "app":Landroid/app/IApplicationThread;
    :pswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 409
    .restart local v52    # "token":Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 410
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 411
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 413
    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v201, 0x1

    .line 414
    .local v201, "stopProfiling":Z
    :goto_17
    if-eqz v52, :cond_1c

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v27

    move/from16 v3, v201

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 417
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 413
    .end local v201    # "stopProfiling":Z
    :cond_1d
    const/16 v201, 0x0

    goto :goto_17

    .line 422
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 424
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 430
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 432
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 438
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 440
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v159

    .line 441
    .local v159, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v208, v5

    .line 443
    .local v208, "thumbnail":Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Ljava/lang/CharSequence;

    .line 444
    .local v133, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v159

    move-object/from16 v3, v208

    move-object/from16 v4, v133

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 441
    .end local v133    # "description":Ljava/lang/CharSequence;
    .end local v208    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v208, 0x0

    goto :goto_18

    .line 450
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v159    # "map":Landroid/os/Bundle;
    :pswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 452
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 458
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 460
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 466
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 468
    .restart local v52    # "token":Landroid/os/IBinder;
    if-eqz v52, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v191

    .line 469
    .local v191, "res":Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 468
    .end local v191    # "res":Ljava/lang/String;
    :cond_1f
    const/16 v191, 0x0

    goto :goto_19

    .line 475
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 477
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v129

    .line 478
    .local v129, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    move-object/from16 v0, v129

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 480
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 484
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v129    # "cn":Landroid/content/ComponentName;
    :pswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v161

    .line 486
    .local v161, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 487
    .local v62, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v186

    .line 488
    .local v186, "receiverBinder":Landroid/os/IBinder;
    if-eqz v186, :cond_20

    invoke-static/range {v186 .. v186}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v185

    .line 491
    .local v185, "receiver":Landroid/app/IThumbnailReceiver;
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v161

    move/from16 v2, v62

    move-object/from16 v3, v185

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v156

    .line 492
    .local v156, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v156, :cond_21

    invoke-interface/range {v156 .. v156}, Ljava/util/List;->size()I

    move-result v111

    .line 494
    .local v111, "N":I
    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    const/16 v142, 0x0

    .local v142, "i":I
    :goto_1c
    move/from16 v0, v142

    move/from16 v1, v111

    if-ge v0, v1, :cond_22

    .line 497
    move-object/from16 v0, v156

    move/from16 v1, v142

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 498
    .local v146, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v146

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 496
    add-int/lit8 v142, v142, 0x1

    goto :goto_1c

    .line 488
    .end local v111    # "N":I
    .end local v142    # "i":I
    .end local v146    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v156    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v185    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_20
    const/16 v185, 0x0

    goto :goto_1a

    .line 493
    .restart local v156    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v185    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v111, -0x1

    goto :goto_1b

    .line 500
    .restart local v111    # "N":I
    .restart local v142    # "i":I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 504
    .end local v62    # "fl":I
    .end local v111    # "N":I
    .end local v142    # "i":I
    .end local v156    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v161    # "maxNum":I
    .end local v185    # "receiver":Landroid/app/IThumbnailReceiver;
    .end local v186    # "receiverBinder":Landroid/os/IBinder;
    :pswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v161

    .line 506
    .restart local v161    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 507
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 508
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v161

    move/from16 v2, v62

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v153

    .line 510
    .local v153, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move-object/from16 v1, v153

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 512
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 516
    .end local v17    # "userId":I
    .end local v62    # "fl":I
    .end local v153    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v161    # "maxNum":I
    :pswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 518
    .local v53, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v124

    .line 519
    .local v124, "bm":Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v124, :cond_23

    .line 521
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 526
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 530
    .end local v53    # "id":I
    .end local v124    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    :pswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 532
    .restart local v53    # "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v124

    .line 533
    .local v124, "bm":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v124, :cond_24

    .line 535
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 538
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 544
    .end local v53    # "id":I
    .end local v124    # "bm":Landroid/graphics/Bitmap;
    :pswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v161

    .line 546
    .restart local v161    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 547
    .restart local v62    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v161

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v155

    .line 548
    .local v155, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v155, :cond_25

    invoke-interface/range {v155 .. v155}, Ljava/util/List;->size()I

    move-result v111

    .line 550
    .restart local v111    # "N":I
    :goto_1f
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/16 v142, 0x0

    .restart local v142    # "i":I
    :goto_20
    move/from16 v0, v142

    move/from16 v1, v111

    if-ge v0, v1, :cond_26

    .line 553
    move-object/from16 v0, v155

    move/from16 v1, v142

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 554
    .local v146, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v146

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 552
    add-int/lit8 v142, v142, 0x1

    goto :goto_20

    .line 549
    .end local v111    # "N":I
    .end local v142    # "i":I
    .end local v146    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_25
    const/16 v111, -0x1

    goto :goto_1f

    .line 556
    .restart local v111    # "N":I
    .restart local v142    # "i":I
    :cond_26
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 560
    .end local v62    # "fl":I
    .end local v111    # "N":I
    .end local v142    # "i":I
    .end local v155    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v161    # "maxNum":I
    :pswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v152

    .line 562
    .local v152, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 564
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 568
    .end local v152    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v154

    .line 570
    .local v154, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 572
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 576
    .end local v154    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v158

    .line 578
    .local v158, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v0, p3

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 580
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 584
    .end local v158    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 586
    .local v206, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 587
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 589
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v206

    move/from16 v2, v62

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 587
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_27
    const/16 v16, 0x0

    goto :goto_21

    .line 595
    .end local v62    # "fl":I
    .end local v206    # "task":I
    :pswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 597
    .restart local v206    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v206

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 603
    .end local v206    # "task":I
    :pswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 605
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v167, 0x1

    .line 606
    .local v167, "nonRoot":Z
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v167

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v191

    .line 607
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v191, :cond_29

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 605
    .end local v167    # "nonRoot":Z
    .end local v191    # "res":Z
    :cond_28
    const/16 v167, 0x0

    goto :goto_22

    .line 608
    .restart local v167    # "nonRoot":Z
    .restart local v191    # "res":Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_23

    .line 613
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v167    # "nonRoot":Z
    .end local v191    # "res":Z
    :pswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 615
    .restart local v206    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v206

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 621
    .end local v206    # "task":I
    :pswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 623
    .local v207, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v187

    .line 624
    .local v187, "relativeStackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v179

    .line 625
    .local v179, "position":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v218

    .line 626
    .local v218, "weight":F
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v187

    move/from16 v3, v179

    move/from16 v4, v218

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->createStack(IIIF)I

    move-result v191

    .line 627
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 633
    .end local v179    # "position":I
    .end local v187    # "relativeStackId":I
    .end local v191    # "res":I
    .end local v207    # "taskId":I
    .end local v218    # "weight":F
    :pswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 635
    .restart local v207    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 636
    .local v199, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v210, 0x1

    .line 637
    .local v210, "toTop":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v199

    move/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 636
    .end local v210    # "toTop":Z
    :cond_2a
    const/16 v210, 0x0

    goto :goto_24

    .line 643
    .end local v199    # "stackId":I
    .end local v207    # "taskId":I
    :pswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 645
    .local v198, "stackBoxId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v218

    .line 646
    .restart local v218    # "weight":F
    move-object/from16 v0, p0

    move/from16 v1, v198

    move/from16 v2, v218

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStackBox(IF)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 652
    .end local v198    # "stackBoxId":I
    .end local v218    # "weight":F
    :pswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getStackBoxes()Ljava/util/List;

    move-result-object v157

    .line 654
    .local v157, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    move-object/from16 v0, p3

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 656
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 660
    .end local v157    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    :pswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 662
    .restart local v198    # "stackBoxId":I
    move-object/from16 v0, p0

    move/from16 v1, v198

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v146

    .line 663
    .local v146, "info":Landroid/app/ActivityManager$StackBoxInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    if-eqz v146, :cond_2b

    .line 665
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v5, 0x0

    move-object/from16 v0, v146

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$StackBoxInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 670
    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 668
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 674
    .end local v146    # "info":Landroid/app/ActivityManager$StackBoxInfo;
    .end local v198    # "stackBoxId":I
    :pswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 676
    .restart local v199    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 682
    .end local v199    # "stackId":I
    :pswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 684
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v169, 0x1

    .line 685
    .local v169, "onlyRoot":Z
    :goto_26
    if-eqz v52, :cond_2d

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v169

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v191

    .line 687
    .restart local v191    # "res":I
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 684
    .end local v169    # "onlyRoot":Z
    .end local v191    # "res":I
    :cond_2c
    const/16 v169, 0x0

    goto :goto_26

    .line 685
    .restart local v169    # "onlyRoot":Z
    :cond_2d
    const/16 v191, -0x1

    goto :goto_27

    .line 693
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v169    # "onlyRoot":Z
    :pswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 695
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v208, v5

    .line 697
    .restart local v208    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_28
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Ljava/lang/CharSequence;

    .line 698
    .restart local v133    # "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v208

    move-object/from16 v3, v133

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 695
    .end local v133    # "description":Ljava/lang/CharSequence;
    .end local v208    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2e
    const/16 v208, 0x0

    goto :goto_28

    .line 704
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 706
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 707
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 708
    .local v84, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 709
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v197, 0x1

    .line 710
    .local v197, "stable":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move/from16 v3, v197

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v132

    .line 711
    .local v132, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v132, :cond_30

    .line 713
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v5, 0x0

    move-object/from16 v0, v132

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 718
    :goto_2a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 709
    .end local v132    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v197    # "stable":Z
    :cond_2f
    const/16 v197, 0x0

    goto :goto_29

    .line 716
    .restart local v132    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v197    # "stable":Z
    :cond_30
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 722
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v84    # "name":Ljava/lang/String;
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v132    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v197    # "stable":Z
    :pswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 724
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 725
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 726
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v132

    .line 727
    .restart local v132    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v132, :cond_31

    .line 729
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v5, 0x0

    move-object/from16 v0, v132

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 734
    :goto_2b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 732
    :cond_31
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 738
    .end local v17    # "userId":I
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    .end local v132    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 740
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 741
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v181

    .line 743
    .local v181, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 749
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v181    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 751
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 752
    .local v197, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v212

    .line 753
    .local v212, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, v197

    move/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v191

    .line 754
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v191, :cond_32

    const/4 v5, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 755
    :cond_32
    const/4 v5, 0x0

    goto :goto_2c

    .line 760
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v191    # "res":Z
    .end local v197    # "stable":I
    .end local v212    # "unstable":I
    :pswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 762
    .restart local v121    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 768
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 770
    .restart local v121    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 776
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 778
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/16 v197, 0x1

    .line 779
    .local v197, "stable":Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 778
    .end local v197    # "stable":Z
    :cond_33
    const/16 v197, 0x0

    goto :goto_2d

    .line 785
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 787
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 788
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 794
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    :pswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/content/ComponentName;

    .line 796
    .local v130, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v174

    .line 797
    .local v174, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    move-object/from16 v0, v174

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 799
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 803
    .end local v130    # "comp":Landroid/content/ComponentName;
    .end local v174    # "pi":Landroid/app/PendingIntent;
    :pswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 805
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 806
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 807
    .local v59, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 808
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 809
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v129

    .line 810
    .restart local v129    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    move-object/from16 v0, v129

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 812
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 816
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v59    # "service":Landroid/content/Intent;
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v129    # "cn":Landroid/content/ComponentName;
    :pswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 818
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 819
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 820
    .restart local v59    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 821
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 822
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v191

    .line 823
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 829
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v59    # "service":Landroid/content/Intent;
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v191    # "res":I
    :pswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 831
    .local v51, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 832
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 833
    .local v200, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v200

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v191

    .line 834
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    if-eqz v191, :cond_34

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 835
    :cond_34
    const/4 v5, 0x0

    goto :goto_2e

    .line 840
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":Z
    .end local v200    # "startId":I
    :pswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 842
    .restart local v51    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 843
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 844
    .restart local v53    # "id":I
    const/16 v54, 0x0

    .line 845
    .local v54, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 846
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "notification":Landroid/app/Notification;
    check-cast v54, Landroid/app/Notification;

    .line 848
    .restart local v54    # "notification":Landroid/app/Notification;
    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/16 v55, 0x1

    .local v55, "removeNotification":Z
    :goto_2f
    move-object/from16 v50, p0

    .line 849
    invoke-virtual/range {v50 .. v55}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 848
    .end local v55    # "removeNotification":Z
    :cond_36
    const/16 v55, 0x0

    goto :goto_2f

    .line 855
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v53    # "id":I
    .end local v54    # "notification":Landroid/app/Notification;
    :pswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 857
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 858
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 859
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 860
    .restart local v59    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 861
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 863
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 864
    .restart local v17    # "userId":I
    invoke-static/range {v121 .. v121}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .local v61, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v56, p0

    move-object/from16 v57, v6

    move-object/from16 v58, v52

    move-object/from16 v60, v9

    move/from16 v63, v17

    .line 865
    invoke-virtual/range {v56 .. v63}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v191

    .line 866
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 872
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v59    # "service":Landroid/content/Intent;
    .end local v61    # "conn":Landroid/app/IServiceConnection;
    .end local v62    # "fl":I
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v191    # "res":I
    :pswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 874
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .line 875
    .restart local v61    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v191

    .line 876
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v191, :cond_37

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 877
    :cond_37
    const/4 v5, 0x0

    goto :goto_30

    .line 882
    .end local v61    # "conn":Landroid/app/IServiceConnection;
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v191    # "res":Z
    :pswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 884
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 885
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v59

    .line 886
    .local v59, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 892
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v59    # "service":Landroid/os/IBinder;
    :pswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 894
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 895
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v135, 0x1

    .line 896
    .local v135, "doRebind":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v135

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 895
    .end local v135    # "doRebind":Z
    :cond_38
    const/16 v135, 0x0

    goto :goto_31

    .line 902
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 904
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 905
    .local v71, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 906
    .restart local v200    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v191

    .line 907
    .local v191, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v71

    move/from16 v3, v200

    move/from16 v4, v191

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 913
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v71    # "type":I
    .end local v191    # "res":I
    .end local v200    # "startId":I
    :pswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 915
    .restart local v51    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 916
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 917
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v67

    .line 918
    .local v67, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 919
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v68

    .line 920
    .local v68, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 921
    invoke-static/range {v121 .. v121}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v69

    .line 922
    .local v69, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v63, p0

    move-object/from16 v64, v51

    move-object/from16 v65, v14

    move/from16 v66, v62

    move/from16 v70, v17

    .line 923
    invoke-virtual/range {v63 .. v70}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z

    move-result v191

    .line 924
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    if-eqz v191, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 925
    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .line 931
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v62    # "fl":I
    .end local v67    # "arguments":Landroid/os/Bundle;
    .end local v68    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v69    # "c":Landroid/app/IUiAutomationConnection;
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v191    # "res":Z
    :pswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 933
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 934
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 935
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v194

    .line 936
    .local v194, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v194

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 942
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v43    # "resultCode":I
    .end local v121    # "b":Landroid/os/IBinder;
    .end local v194    # "results":Landroid/os/Bundle;
    :pswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 944
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 946
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 950
    .end local v27    # "config":Landroid/content/res/Configuration;
    :pswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 952
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 958
    .end local v27    # "config":Landroid/content/res/Configuration;
    :pswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 960
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v190

    .line 961
    .local v190, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v190

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 967
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "requestedOrientation":I
    :pswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 969
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v188

    .line 970
    .local v188, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 976
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v188    # "req":I
    :pswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 978
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v129

    .line 979
    .restart local v129    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    move-object/from16 v0, v129

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 981
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 985
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v129    # "cn":Landroid/content/ComponentName;
    :pswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 987
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 989
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 993
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 995
    .restart local v71    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 996
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 997
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 998
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1001
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 1002
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v76

    check-cast v76, [Landroid/content/Intent;

    .line 1003
    .local v76, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v77

    .line 1008
    .local v77, "requestResolvedTypes":[Ljava/lang/String;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1009
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1011
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v70, p0

    move-object/from16 v72, v20

    move-object/from16 v73, v52

    move-object/from16 v74, v11

    move/from16 v75, v12

    move/from16 v78, v62

    move-object/from16 v79, v16

    move/from16 v80, v17

    .line 1012
    invoke-virtual/range {v70 .. v80}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v191

    .line 1015
    .local v191, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    if-eqz v191, :cond_3c

    invoke-interface/range {v191 .. v191}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1017
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1005
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v62    # "fl":I
    .end local v76    # "requestIntents":[Landroid/content/Intent;
    .end local v77    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v191    # "res":Landroid/content/IIntentSender;
    :cond_3a
    const/16 v76, 0x0

    .line 1006
    .restart local v76    # "requestIntents":[Landroid/content/Intent;
    const/16 v77, 0x0

    .restart local v77    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_33

    .line 1009
    .restart local v62    # "fl":I
    :cond_3b
    const/16 v16, 0x0

    goto :goto_34

    .line 1016
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v191    # "res":Landroid/content/IIntentSender;
    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    .line 1021
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v62    # "fl":I
    .end local v71    # "type":I
    .end local v76    # "requestIntents":[Landroid/content/Intent;
    .end local v77    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v191    # "res":Landroid/content/IIntentSender;
    :pswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v183

    .line 1024
    .local v183, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v183    # "r":Landroid/content/IIntentSender;
    :pswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v183

    .line 1033
    .restart local v183    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v191

    .line 1034
    .local v191, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1040
    .end local v183    # "r":Landroid/content/IIntentSender;
    .end local v191    # "res":Ljava/lang/String;
    :pswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v183

    .line 1043
    .restart local v183    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v191

    .line 1044
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1050
    .end local v183    # "r":Landroid/content/IIntentSender;
    .end local v191    # "res":I
    :pswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 1052
    .local v79, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1053
    .local v80, "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1054
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v82, 0x1

    .line 1055
    .local v82, "allowAll":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v83, 0x1

    .line 1056
    .local v83, "requireFull":Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1057
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, "callerPackage":Ljava/lang/String;
    move-object/from16 v78, p0

    move/from16 v81, v17

    .line 1058
    invoke-virtual/range {v78 .. v85}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v191

    .line 1060
    .restart local v191    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v82    # "allowAll":Z
    .end local v83    # "requireFull":Z
    .end local v84    # "name":Ljava/lang/String;
    .end local v85    # "callerPackage":Ljava/lang/String;
    .end local v191    # "res":I
    :cond_3d
    const/16 v82, 0x0

    goto :goto_36

    .line 1055
    .restart local v82    # "allowAll":Z
    :cond_3e
    const/16 v83, 0x0

    goto :goto_37

    .line 1066
    .end local v17    # "userId":I
    .end local v79    # "callingPid":I
    .end local v80    # "callingUid":I
    .end local v82    # "allowAll":Z
    :pswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 1068
    .local v160, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v160

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v160    # "max":I
    :pswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v151

    .line 1076
    .local v151, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    move-object/from16 v0, p3

    move/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v151    # "limit":I
    :pswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1084
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 1085
    .local v175, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v149, 0x1

    .line 1086
    .local v149, "isForeground":Z
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v175

    move/from16 v3, v149

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v149    # "isForeground":Z
    :cond_3f
    const/16 v149, 0x0

    goto :goto_38

    .line 1092
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v175    # "pid":I
    :pswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1094
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 1095
    .restart local v175    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 1096
    .local v211, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v175

    move/from16 v3, v211

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v191

    .line 1097
    .restart local v191    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1103
    .end local v23    # "perm":Ljava/lang/String;
    .end local v175    # "pid":I
    .end local v191    # "res":I
    .end local v211    # "uid":I
    :pswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1105
    .local v97, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 1106
    .restart local v175    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 1107
    .restart local v211    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1108
    .local v98, "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v175

    move/from16 v3, v211

    move/from16 v4, v98

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v191

    .line 1109
    .restart local v191    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1115
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v175    # "pid":I
    .end local v191    # "res":I
    .end local v211    # "uid":I
    :pswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1117
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v168

    .line 1119
    .local v168, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1120
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v168

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v191

    .line 1121
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    if-eqz v191, :cond_40

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1122
    :cond_40
    const/4 v5, 0x0

    goto :goto_39

    .line 1127
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v168    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v191    # "res":Z
    :pswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 1129
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1130
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1131
    .local v96, "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1132
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1133
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1139
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 1141
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1142
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1143
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1144
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1150
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1152
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1153
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1159
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :pswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1161
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1162
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1168
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :pswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1170
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    const/16 v144, 0x1

    .line 1171
    .local v144, "incoming":Z
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v144

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v172

    .line 1173
    .local v172, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    const/4 v5, 0x1

    move-object/from16 v0, v172

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1175
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1170
    .end local v144    # "incoming":Z
    .end local v172    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_41
    const/16 v144, 0x0

    goto :goto_3a

    .line 1179
    .end local v20    # "packageName":Ljava/lang/String;
    :pswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 1181
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1182
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/16 v216, 0x1

    .line 1183
    .local v216, "waiting":Z
    :goto_3b
    move-object/from16 v0, p0

    move/from16 v1, v216

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v216    # "waiting":Z
    :cond_42
    const/16 v216, 0x0

    goto :goto_3b

    .line 1189
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    new-instance v163, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v163 .. v163}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1191
    .local v163, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v5, 0x0

    move-object/from16 v0, v163

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1194
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v163    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1205
    :pswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1207
    .restart local v97    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v173

    .line 1208
    .local v173, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    if-eqz v173, :cond_43

    .line 1210
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    const/4 v5, 0x1

    move-object/from16 v0, v173

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1215
    :goto_3c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1213
    :cond_43
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .line 1219
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v173    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1226
    :pswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1233
    :pswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1234
    :cond_44
    const/4 v5, 0x0

    goto :goto_3d

    .line 1240
    :pswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v178

    .line 1242
    .local v178, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    const/16 v219, 0x1

    .line 1243
    .local v219, "wfd":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/16 v171, 0x1

    .line 1244
    .local v171, "per":Z
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move/from16 v2, v219

    move/from16 v3, v171

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1242
    .end local v171    # "per":Z
    .end local v219    # "wfd":Z
    :cond_45
    const/16 v219, 0x0

    goto :goto_3e

    .line 1243
    .restart local v219    # "wfd":Z
    :cond_46
    const/16 v171, 0x0

    goto :goto_3f

    .line 1250
    .end local v178    # "pn":Ljava/lang/String;
    .end local v219    # "wfd":Z
    :pswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    const/16 v136, 0x1

    .line 1252
    .local v136, "enabled":Z
    :goto_40
    move-object/from16 v0, p0

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1251
    .end local v136    # "enabled":Z
    :cond_47
    const/16 v136, 0x0

    goto :goto_40

    .line 1258
    :pswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v217

    .line 1261
    .local v217, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1267
    .end local v217    # "watcher":Landroid/app/IActivityController;
    :pswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1274
    :pswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 1277
    .local v148, "is":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1283
    .end local v148    # "is":Landroid/content/IIntentSender;
    :pswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v176

    .line 1285
    .local v176, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v184

    .line 1286
    .local v184, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    const/16 v195, 0x1

    .line 1287
    .local v195, "secure":Z
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v184

    move/from16 v3, v195

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v191

    .line 1288
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    if-eqz v191, :cond_49

    const/4 v5, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1286
    .end local v191    # "res":Z
    .end local v195    # "secure":Z
    :cond_48
    const/16 v195, 0x0

    goto :goto_41

    .line 1289
    .restart local v191    # "res":Z
    .restart local v195    # "secure":Z
    :cond_49
    const/4 v5, 0x0

    goto :goto_42

    .line 1294
    .end local v176    # "pids":[I
    .end local v184    # "reason":Ljava/lang/String;
    .end local v191    # "res":Z
    .end local v195    # "secure":Z
    :pswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v184

    .line 1296
    .restart local v184    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v191

    .line 1297
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    if-eqz v191, :cond_4a

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1298
    :cond_4a
    const/4 v5, 0x0

    goto :goto_43

    .line 1303
    .end local v184    # "reason":Ljava/lang/String;
    .end local v191    # "res":Z
    :pswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1305
    .local v177, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 1306
    .local v128, "cls":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1307
    .local v113, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 1308
    .local v145, "indata":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move-object/from16 v2, v128

    move-object/from16 v3, v113

    move-object/from16 v4, v145

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1314
    .end local v113    # "action":Ljava/lang/String;
    .end local v128    # "cls":Ljava/lang/String;
    .end local v145    # "indata":Ljava/lang/String;
    .end local v177    # "pkg":Ljava/lang/String;
    :pswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1316
    .local v6, "app":Landroid/os/IBinder;
    new-instance v127, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v127

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1317
    .local v127, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1323
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v127    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1325
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v204

    .line 1326
    .local v204, "tag":Ljava/lang/String;
    new-instance v127, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v127

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1327
    .restart local v127    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v204

    move-object/from16 v2, v127

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v191

    .line 1328
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    if-eqz v191, :cond_4b

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1329
    :cond_4b
    const/4 v5, 0x0

    goto :goto_44

    .line 1334
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v127    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v191    # "res":Z
    .end local v204    # "tag":Ljava/lang/String;
    :pswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1336
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v215

    .line 1337
    .local v215, "violationMask":I
    new-instance v146, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v146

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1338
    .local v146, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v215

    move-object/from16 v2, v146

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1344
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v146    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v215    # "violationMask":I
    :pswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 1346
    .local v196, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1352
    .end local v196    # "sig":I
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1354
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1355
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1361
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :pswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1368
    :pswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1370
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1371
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1377
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :pswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    new-instance v146, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v146 .. v146}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1380
    .local v146, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    const/4 v5, 0x0

    move-object/from16 v0, v146

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1383
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1387
    .end local v146    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1389
    .local v27, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1391
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1395
    .end local v27    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1397
    .local v87, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1398
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4c

    const/16 v89, 0x1

    .line 1399
    .local v89, "start":Z
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 1400
    .local v92, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1401
    .local v90, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v91, v5

    .local v91, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_46
    move-object/from16 v86, p0

    move/from16 v88, v17

    .line 1403
    invoke-virtual/range {v86 .. v92}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v191

    .line 1404
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    if-eqz v191, :cond_4e

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v89    # "start":Z
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "profileType":I
    .end local v191    # "res":Z
    :cond_4c
    const/16 v89, 0x0

    goto :goto_45

    .line 1401
    .restart local v89    # "start":Z
    .restart local v90    # "path":Ljava/lang/String;
    .restart local v92    # "profileType":I
    :cond_4d
    const/16 v91, 0x0

    goto :goto_46

    .line 1405
    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v191    # "res":Z
    :cond_4e
    const/4 v5, 0x0

    goto :goto_47

    .line 1410
    .end local v17    # "userId":I
    .end local v87    # "process":Ljava/lang/String;
    .end local v89    # "start":Z
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "profileType":I
    .end local v191    # "res":Z
    :pswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v191

    .line 1412
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    if-eqz v191, :cond_4f

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1413
    :cond_4f
    const/4 v5, 0x0

    goto :goto_48

    .line 1418
    .end local v191    # "res":Z
    :pswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1425
    :pswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1432
    :pswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 1434
    .local v59, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1435
    .restart local v9    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v9}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v123

    .line 1436
    .local v123, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    move-object/from16 v0, p3

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1438
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1442
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v59    # "service":Landroid/content/Intent;
    .end local v123    # "binder":Landroid/os/IBinder;
    :pswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/content/pm/ApplicationInfo;

    .line 1444
    .local v146, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 1445
    .local v122, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v203

    .line 1446
    .local v203, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    if-eqz v203, :cond_50

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1447
    :cond_50
    const/4 v5, 0x0

    goto :goto_49

    .line 1452
    .end local v122    # "backupRestoreMode":I
    .end local v146    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v203    # "success":Z
    :pswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1454
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v114

    .line 1455
    .local v114, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1461
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v114    # "agent":Landroid/os/IBinder;
    :pswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/content/pm/ApplicationInfo;

    .line 1463
    .restart local v146    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1469
    .end local v146    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1471
    .restart local v177    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1472
    .local v117, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v184

    .line 1473
    .restart local v184    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move/from16 v2, v117

    move-object/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1479
    .end local v117    # "appid":I
    .end local v177    # "pkg":Ljava/lang/String;
    .end local v184    # "reason":Ljava/lang/String;
    :pswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v184

    .line 1481
    .restart local v184    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1487
    .end local v184    # "reason":Ljava/lang/String;
    :pswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v176

    .line 1489
    .restart local v176    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v191

    .line 1490
    .local v191, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1492
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1496
    .end local v176    # "pids":[I
    .end local v191    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v180

    .line 1498
    .local v180, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 1499
    .restart local v211    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move/from16 v2, v211

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1505
    .end local v180    # "processName":Ljava/lang/String;
    .end local v211    # "uid":I
    :pswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1507
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1508
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 1509
    .local v138, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1510
    .local v140, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v20

    move/from16 v3, v138

    move/from16 v4, v140

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1517
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v138    # "enterAnim":I
    .end local v140    # "exitAnim":I
    :pswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1519
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1520
    .restart local v20    # "packageName":Ljava/lang/String;
    new-instance v137, Landroid/view/WindowAnimationInfo;

    invoke-direct/range {v137 .. v137}, Landroid/view/WindowAnimationInfo;-><init>()V

    .line 1521
    .local v137, "enter":Landroid/view/WindowAnimationInfo;
    new-instance v139, Landroid/view/WindowAnimationInfo;

    invoke-direct/range {v139 .. v139}, Landroid/view/WindowAnimationInfo;-><init>()V

    .line 1522
    .local v139, "exit":Landroid/view/WindowAnimationInfo;
    move-object/from16 v0, v137

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/WindowAnimationInfo;->readInParcel(Landroid/os/Parcel;)V

    .line 1523
    move-object/from16 v0, v139

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/WindowAnimationInfo;->readInParcel(Landroid/os/Parcel;)V

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v20

    move-object/from16 v3, v137

    move-object/from16 v4, v139

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingCustomTransition(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/WindowAnimationInfo;Landroid/view/WindowAnimationInfo;)V

    .line 1525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1531
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v137    # "enter":Landroid/view/WindowAnimationInfo;
    .end local v139    # "exit":Landroid/view/WindowAnimationInfo;
    :pswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v119

    .line 1533
    .local v119, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    if-eqz v119, :cond_51

    const/4 v5, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1534
    :cond_51
    const/4 v5, 0x0

    goto :goto_4a

    .line 1539
    .end local v119    # "areThey":Z
    :pswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_52

    const/16 v165, 0x1

    .line 1541
    .local v165, "monkey":Z
    :goto_4b
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1540
    .end local v165    # "monkey":Z
    :cond_52
    const/16 v165, 0x0

    goto :goto_4b

    .line 1547
    :pswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1554
    :pswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1556
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v150

    .line 1557
    .local v150, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    if-eqz v150, :cond_53

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1558
    :cond_53
    const/4 v5, 0x0

    goto :goto_4c

    .line 1563
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v150    # "isit":Z
    :pswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1565
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v131

    .line 1566
    .local v131, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    if-eqz v131, :cond_54

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1567
    :cond_54
    const/4 v5, 0x0

    goto :goto_4d

    .line 1572
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v131    # "converted":Z
    :pswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1574
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;)Z

    move-result v131

    .line 1575
    .restart local v131    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    if-eqz v131, :cond_55

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1576
    :cond_55
    const/4 v5, 0x0

    goto :goto_4e

    .line 1581
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v131    # "converted":Z
    :pswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1583
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_56

    const/16 v143, 0x1

    .line 1584
    .local v143, "imm":Z
    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v143

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1583
    .end local v143    # "imm":Z
    :cond_56
    const/16 v143, 0x0

    goto :goto_4f

    .line 1590
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v150

    .line 1592
    .restart local v150    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    if-eqz v150, :cond_57

    const/4 v5, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1593
    :cond_57
    const/4 v5, 0x0

    goto :goto_50

    .line 1598
    .end local v150    # "isit":Z
    :pswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 1600
    .restart local v211    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 1601
    .local v147, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1602
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 1603
    .local v162, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v211

    move/from16 v2, v147

    move-object/from16 v3, v20

    move-object/from16 v4, v162

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1609
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v147    # "initialPid":I
    .end local v162    # "message":Ljava/lang/String;
    .end local v211    # "uid":I
    :pswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1611
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1612
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v71

    .line 1613
    .local v71, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1615
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1619
    .end local v17    # "userId":I
    .end local v71    # "type":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    :pswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1621
    .restart local v84    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1622
    .local v23, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1624
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1628
    .end local v23    # "perm":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    :pswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1630
    .local v94, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1631
    .local v95, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1632
    .restart local v96    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1633
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .restart local v98    # "mode":I
    move-object/from16 v93, p0

    .line 1634
    invoke-virtual/range {v93 .. v98}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1640
    .end local v94    # "owner":Landroid/os/IBinder;
    .end local v95    # "fromUid":I
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :pswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1642
    .restart local v94    # "owner":Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1643
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    .line 1644
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1646
    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1647
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1653
    .end local v94    # "owner":Landroid/os/IBinder;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :pswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1655
    .restart local v80    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1656
    .restart local v96    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1657
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v164

    .line 1658
    .local v164, "modeFlags":I
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v96

    move-object/from16 v3, v97

    move/from16 v4, v164

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v191

    .line 1659
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1665
    .end local v80    # "callingUid":I
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v164    # "modeFlags":I
    .end local v191    # "res":I
    :pswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1667
    .restart local v87    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1668
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    const/16 v102, 0x1

    .line 1669
    .local v102, "managed":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1670
    .restart local v90    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5a

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v91, v5

    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_52
    move-object/from16 v99, p0

    move-object/from16 v100, v87

    move/from16 v101, v17

    move-object/from16 v103, v90

    move-object/from16 v104, v91

    .line 1672
    invoke-virtual/range {v99 .. v104}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v191

    .line 1673
    .local v191, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    if-eqz v191, :cond_5b

    const/4 v5, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1668
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v191    # "res":Z
    :cond_59
    const/16 v102, 0x0

    goto :goto_51

    .line 1670
    .restart local v90    # "path":Ljava/lang/String;
    .restart local v102    # "managed":Z
    :cond_5a
    const/16 v91, 0x0

    goto :goto_52

    .line 1674
    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v191    # "res":Z
    :cond_5b
    const/4 v5, 0x0

    goto :goto_53

    .line 1680
    .end local v17    # "userId":I
    .end local v87    # "process":Ljava/lang/String;
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v191    # "res":Z
    :pswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 1682
    .restart local v121    # "b":Landroid/os/IBinder;
    invoke-static/range {v121 .. v121}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1683
    .local v6, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1684
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/content/Intent;

    .line 1685
    .local v106, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v107

    .line 1686
    .local v107, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 1687
    .local v10, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5c

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1689
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v103, p0

    move-object/from16 v104, v6

    move-object/from16 v105, v7

    move-object/from16 v108, v10

    move-object/from16 v109, v16

    move/from16 v110, v17

    .line 1690
    invoke-virtual/range {v103 .. v110}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v193

    .line 1692
    .local v193, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1687
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v193    # "result":I
    :cond_5c
    const/16 v16, 0x0

    goto :goto_54

    .line 1699
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v106    # "intents":[Landroid/content/Intent;
    .end local v107    # "resolvedTypes":[Ljava/lang/String;
    .end local v121    # "b":Landroid/os/IBinder;
    :pswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v98

    .line 1701
    .restart local v98    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1708
    .end local v98    # "mode":I
    :pswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1710
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1718
    .end local v98    # "mode":I
    :pswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1720
    .restart local v177    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v98

    .line 1721
    .restart local v98    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1728
    .end local v98    # "mode":I
    .end local v177    # "pkg":Ljava/lang/String;
    :pswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1730
    .restart local v177    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1731
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1737
    .end local v98    # "mode":I
    .end local v177    # "pkg":Ljava/lang/String;
    :pswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1739
    .local v214, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v214

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v193

    .line 1740
    .local v193, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    if-eqz v193, :cond_5d

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1741
    :cond_5d
    const/4 v5, 0x0

    goto :goto_55

    .line 1746
    .end local v193    # "result":Z
    .end local v214    # "userid":I
    :pswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1748
    .restart local v214    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v125

    .line 1750
    .local v125, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v214

    move-object/from16 v2, v125

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v193

    .line 1751
    .local v193, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1757
    .end local v125    # "callback":Landroid/app/IStopUserCallback;
    .end local v193    # "result":I
    .end local v214    # "userid":I
    :pswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v213

    .line 1759
    .local v213, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    const/4 v5, 0x0

    move-object/from16 v0, v213

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1761
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1765
    .end local v213    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1767
    .restart local v214    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    const/16 v170, 0x1

    .line 1768
    .local v170, "orStopping":Z
    :goto_56
    move-object/from16 v0, p0

    move/from16 v1, v214

    move/from16 v2, v170

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v193

    .line 1769
    .local v193, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    if-eqz v193, :cond_5f

    const/4 v5, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1767
    .end local v170    # "orStopping":Z
    .end local v193    # "result":Z
    :cond_5e
    const/16 v170, 0x0

    goto :goto_56

    .line 1770
    .restart local v170    # "orStopping":Z
    .restart local v193    # "result":Z
    :cond_5f
    const/4 v5, 0x0

    goto :goto_57

    .line 1775
    .end local v170    # "orStopping":Z
    .end local v193    # "result":Z
    .end local v214    # "userid":I
    :pswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v193

    .line 1777
    .local v193, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    move-object/from16 v0, p3

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1779
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1784
    .end local v193    # "result":[I
    :pswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 1786
    .restart local v207    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v202

    .line 1787
    .local v202, "subTaskIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v202

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v193

    .line 1788
    .local v193, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    if-eqz v193, :cond_60

    const/4 v5, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1789
    :cond_60
    const/4 v5, 0x0

    goto :goto_58

    .line 1795
    .end local v193    # "result":Z
    .end local v202    # "subTaskIndex":I
    .end local v207    # "taskId":I
    :pswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 1797
    .restart local v207    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1798
    .restart local v62    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v193

    .line 1799
    .restart local v193    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    if-eqz v193, :cond_61

    const/4 v5, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1800
    :cond_61
    const/4 v5, 0x0

    goto :goto_59

    .line 1805
    .end local v62    # "fl":I
    .end local v193    # "result":Z
    .end local v207    # "taskId":I
    :pswitch_98
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v168

    .line 1808
    .local v168, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1809
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v168    # "observer":Landroid/app/IProcessObserver;
    :pswitch_99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v168

    .line 1816
    .restart local v168    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1817
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1822
    .end local v168    # "observer":Landroid/app/IProcessObserver;
    :pswitch_9a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1824
    .restart local v177    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v120

    .line 1825
    .local v120, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    if-eqz v120, :cond_62

    const/4 v5, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1826
    :cond_62
    const/4 v5, 0x0

    goto :goto_5a

    .line 1832
    .end local v120    # "ask":Z
    .end local v177    # "pkg":Ljava/lang/String;
    :pswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1834
    .restart local v177    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    const/16 v120, 0x1

    .line 1835
    .restart local v120    # "ask":Z
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1834
    .end local v120    # "ask":Z
    :cond_63
    const/16 v120, 0x0

    goto :goto_5b

    .line 1841
    .end local v177    # "pkg":Ljava/lang/String;
    :pswitch_9c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v183

    .line 1844
    .restart local v183    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v191

    .line 1845
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    if-eqz v191, :cond_64

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1846
    :cond_64
    const/4 v5, 0x0

    goto :goto_5c

    .line 1851
    .end local v183    # "r":Landroid/content/IIntentSender;
    .end local v191    # "res":Z
    :pswitch_9d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v183

    .line 1854
    .restart local v183    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v191

    .line 1855
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    if-eqz v191, :cond_65

    const/4 v5, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1856
    :cond_65
    const/4 v5, 0x0

    goto :goto_5d

    .line 1861
    .end local v183    # "r":Landroid/content/IIntentSender;
    .end local v191    # "res":Z
    :pswitch_9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v183

    .line 1864
    .restart local v183    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v8

    .line 1865
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    if-eqz v8, :cond_66

    .line 1867
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1872
    :goto_5e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1870
    :cond_66
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e

    .line 1876
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v183    # "r":Landroid/content/IIntentSender;
    :pswitch_9f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1878
    .local v27, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1884
    .end local v27    # "config":Landroid/content/res/Configuration;
    :pswitch_a0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v176

    .line 1886
    .restart local v176    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v182

    .line 1887
    .local v182, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1889
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1893
    .end local v176    # "pids":[I
    .end local v182    # "pss":[J
    :pswitch_a1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v176

    .line 1895
    .restart local v176    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPswap([I)[J

    move-result-object v182

    .line 1896
    .restart local v182    # "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1898
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1903
    .end local v176    # "pids":[I
    .end local v182    # "pss":[J
    :pswitch_a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v166

    check-cast v166, Ljava/lang/CharSequence;

    .line 1905
    .local v166, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/16 v116, 0x1

    .line 1906
    .local v116, "always":Z
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v166

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1905
    .end local v116    # "always":Z
    :cond_67
    const/16 v116, 0x0

    goto :goto_5f

    .line 1912
    .end local v166    # "msg":Ljava/lang/CharSequence;
    :pswitch_a3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1919
    :pswitch_a4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1921
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1922
    .local v134, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v134

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v191

    .line 1923
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    if-eqz v191, :cond_68

    const/4 v5, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1924
    :cond_68
    const/4 v5, 0x0

    goto :goto_60

    .line 1929
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v134    # "destAffinity":Ljava/lang/String;
    .end local v191    # "res":Z
    :pswitch_a5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1931
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v205

    check-cast v205, Landroid/content/Intent;

    .line 1932
    .local v205, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1933
    .restart local v43    # "resultCode":I
    const/16 v44, 0x0

    .line 1934
    .local v44, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_69

    .line 1935
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "resultData":Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 1937
    .restart local v44    # "resultData":Landroid/content/Intent;
    :cond_69
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v205

    move/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v191

    .line 1938
    .restart local v191    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    if-eqz v191, :cond_6a

    const/4 v5, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1939
    :cond_6a
    const/4 v5, 0x0

    goto :goto_61

    .line 1944
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":Z
    .end local v205    # "target":Landroid/content/Intent;
    :pswitch_a6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1946
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v191

    .line 1947
    .local v191, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1953
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":I
    :pswitch_a7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1955
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v191

    .line 1956
    .local v191, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1962
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v191    # "res":Ljava/lang/String;
    :pswitch_a8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v168

    .line 1965
    .local v168, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1971
    .end local v168    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_a9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v168

    .line 1974
    .restart local v168    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1976
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1980
    .end local v168    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 1982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1983
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1987
    :pswitch_ab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 1989
    .restart local v175    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6b

    const/16 v112, 0x1

    .line 1990
    .local v112, "aboveSystem":Z
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v184

    .line 1991
    .restart local v184    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v175

    move/from16 v2, v112

    move-object/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v191

    .line 1992
    .local v191, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    move-object/from16 v0, p3

    move-wide/from16 v1, v191

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1994
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1989
    .end local v112    # "aboveSystem":Z
    .end local v184    # "reason":Ljava/lang/String;
    .end local v191    # "res":J
    :cond_6b
    const/16 v112, 0x0

    goto :goto_62

    .line 1998
    .end local v175    # "pid":I
    :pswitch_ac
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 2000
    .local v189, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v191

    .line 2001
    .local v191, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2003
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2007
    .end local v189    # "requestType":I
    .end local v191    # "res":Landroid/os/Bundle;
    :pswitch_ad
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2009
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v141

    .line 2010
    .local v141, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v141

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2016
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v141    # "extras":Landroid/os/Bundle;
    :pswitch_ae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 2018
    .restart local v211    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v184

    .line 2019
    .restart local v184    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v211

    move-object/from16 v2, v184

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 2020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2025
    .end local v184    # "reason":Ljava/lang/String;
    .end local v211    # "uid":I
    :pswitch_af
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 2027
    .restart local v42    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6c

    const/16 v115, 0x1

    .line 2028
    .local v115, "allowRestart":Z
    :goto_63
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2030
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2027
    .end local v115    # "allowRestart":Z
    :cond_6c
    const/16 v115, 0x0

    goto :goto_63

    .line 2034
    .end local v42    # "who":Landroid/os/IBinder;
    :pswitch_b0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2036
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2042
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_b1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2044
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2050
    .end local v52    # "token":Landroid/os/IBinder;
    :pswitch_b2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2057
    :pswitch_b3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2066
    :pswitch_b4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->notifyWindowTimeout()V

    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2077
    :pswitch_b5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 2079
    .local v209, "timeout":I
    move-object/from16 v0, p0

    move/from16 v1, v209

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->haltActivityResuming(I)Z

    move-result v193

    .line 2080
    .restart local v193    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2081
    if-eqz v193, :cond_6d

    const/4 v5, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2082
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2081
    :cond_6d
    const/4 v5, 0x0

    goto :goto_64

    .line 2087
    .end local v193    # "result":Z
    .end local v209    # "timeout":I
    :pswitch_b6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2088
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restoreActivityResuming()Z

    move-result v193

    .line 2089
    .restart local v193    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2090
    if-eqz v193, :cond_6e

    const/4 v5, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2090
    :cond_6e
    const/4 v5, 0x0

    goto :goto_65

    .line 2098
    .end local v193    # "result":Z
    :pswitch_b7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 2100
    .restart local v175    # "pid":I
    move-object/from16 v0, p0

    move/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->applicationBinded(I)V

    .line 2101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2109
    .end local v175    # "pid":I
    :pswitch_b8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2110
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 2111
    .restart local v51    # "className":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setWallpaperProcess(Landroid/content/ComponentName;)V

    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2120
    .end local v51    # "className":Landroid/content/ComponentName;
    :pswitch_b9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6f

    const/16 v149, 0x1

    .line 2122
    .restart local v149    # "isForeground":Z
    :goto_66
    move-object/from16 v0, p0

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateWallpaperState(Z)V

    .line 2123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2121
    .end local v149    # "isForeground":Z
    :cond_6f
    const/16 v149, 0x0

    goto :goto_66

    .line 2130
    :pswitch_ba
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2132
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2133
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceKillPackage(Ljava/lang/String;I)V

    .line 2134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2135
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2141
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :pswitch_bb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->screenShotTopLayerBehindKeyguard()Landroid/graphics/Bitmap;

    move-result-object v124

    .line 2143
    .restart local v124    # "bm":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2144
    if-eqz v124, :cond_70

    .line 2145
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2150
    :goto_67
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2148
    :cond_70
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 2158
    .end local v124    # "bm":Landroid/graphics/Bitmap;
    :pswitch_bc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IApplicationErrorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationErrorListener;

    move-result-object v118

    .line 2160
    .local v118, "applicationErrorListener":Landroid/app/IApplicationErrorListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setApplicationErrorListener(Landroid/app/IApplicationErrorListener;)V

    .line 2161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2168
    .end local v118    # "applicationErrorListener":Landroid/app/IApplicationErrorListener;
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 2169
    .restart local v175    # "pid":I
    move-object/from16 v0, p0

    move/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceKillProcess(I)V

    .line 2170
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_65
        :pswitch_66
        :pswitch_1
        :pswitch_59
        :pswitch_5a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2f
        :pswitch_30
        :pswitch_8
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_12
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_38
        :pswitch_45
        :pswitch_46
        :pswitch_4c
        :pswitch_4d
        :pswitch_4f
        :pswitch_50
        :pswitch_52
        :pswitch_53
        :pswitch_60
        :pswitch_57
        :pswitch_69
        :pswitch_1a
        :pswitch_3e
        :pswitch_16
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_61
        :pswitch_6
        :pswitch_62
        :pswitch_33
        :pswitch_43
        :pswitch_44
        :pswitch_3d
        :pswitch_4e
        :pswitch_39
        :pswitch_23
        :pswitch_58
        :pswitch_1e
        :pswitch_51
        :pswitch_6c
        :pswitch_63
        :pswitch_1d
        :pswitch_1b
        :pswitch_1f
        :pswitch_6e
        :pswitch_73
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_4a
        :pswitch_4b
        :pswitch_1c
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_5
        :pswitch_7b
        :pswitch_67
        :pswitch_6a
        :pswitch_7d
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_20
        :pswitch_7f
        :pswitch_68
        :pswitch_80
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_94
        :pswitch_15
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_9a
        :pswitch_9b
        :pswitch_91
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9c
        :pswitch_9f
        :pswitch_a0
        :pswitch_a2
        :pswitch_a3
        :pswitch_6b
        :pswitch_2e
        :pswitch_34
        :pswitch_6d
        :pswitch_64
        :pswitch_93
        :pswitch_a4
        :pswitch_a5
        :pswitch_5d
        :pswitch_9
        :pswitch_a6
        :pswitch_31
        :pswitch_9d
        :pswitch_2
        :pswitch_92
        :pswitch_a8
        :pswitch_a9
        :pswitch_95
        :pswitch_aa
        :pswitch_ab
        :pswitch_0
        :pswitch_9e
        :pswitch_ac
        :pswitch_ad
        :pswitch_a7
        :pswitch_ae
        :pswitch_7e
        :pswitch_af
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
        :pswitch_29
        :pswitch_81
        :pswitch_82
        :pswitch_b1
        :pswitch_b0
        :pswitch_b2
        :pswitch_b3
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_32
        :pswitch_b4
        :pswitch_b8
        :pswitch_b9
        :pswitch_b5
        :pswitch_b6
        :pswitch_a1
        :pswitch_ba
        :pswitch_b7
        :pswitch_7c
        :pswitch_bb
        :pswitch_bd
        :pswitch_bc
    .end packed-switch
.end method
