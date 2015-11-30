.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addNotification:I = 0x3

.field static final TRANSACTION_animateCollapsePanels:I = 0x9

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x7

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x8

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x10

.field static final TRANSACTION_directExpandNotificationsPanel:I = 0x18

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_dispatchStatusBarKeyEvent:I = 0x15

.field static final TRANSACTION_hideSimIndicator:I = 0x13

.field static final TRANSACTION_mzTopAppWindowChanged:I = 0x19

.field static final TRANSACTION_preloadRecentApps:I = 0xf

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_removeNotification:I = 0x5

.field static final TRANSACTION_setHardKeyboardStatus:I = 0xd

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0xc

.field static final TRANSACTION_setNavButtonVisible:I = 0x17

.field static final TRANSACTION_setStatusBarDarkTheme:I = 0x1a

.field static final TRANSACTION_setSystemUiVisibility:I = 0xa

.field static final TRANSACTION_setWindowState:I = 0x11

.field static final TRANSACTION_showApplicationGuide:I = 0x14

.field static final TRANSACTION_showSimIndicator:I = 0x12

.field static final TRANSACTION_toggleRecentApps:I = 0xe

.field static final TRANSACTION_topAppWindowChanged:I = 0xb

.field static final TRANSACTION_updateNotification:I = 0x4

.field static final TRANSACTION_updateRecentPanel:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 59
    .local v1, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    .line 57
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    sget-object v4, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 82
    .local v1, "_arg1":Landroid/service/notification/StatusBarNotification;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 80
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    goto :goto_2

    .line 87
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :sswitch_4
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    sget-object v4, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 97
    .restart local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 95
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    goto :goto_3

    .line 102
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :sswitch_5
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeNotification(Landroid/os/IBinder;)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_6
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(I)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto/16 :goto_0

    .line 124
    :sswitch_8
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    goto/16 :goto_0

    .line 130
    :sswitch_9
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto/16 :goto_0

    .line 136
    :sswitch_a
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_b
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 149
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v4

    .line 148
    goto :goto_4

    .line 154
    :sswitch_c
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 158
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_d
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 170
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 171
    .local v1, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setHardKeyboardStatus(ZZ)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_4
    move v0, v4

    .line 168
    goto :goto_5

    .restart local v0    # "_arg0":Z
    :cond_5
    move v1, v4

    .line 170
    goto :goto_6

    .line 176
    .end local v0    # "_arg0":Z
    :sswitch_e
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_0

    .line 182
    :sswitch_f
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_0

    .line 188
    :sswitch_10
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    .line 194
    :sswitch_11
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_12
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showSimIndicator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideSimIndicator()V

    goto/16 :goto_0

    .line 218
    :sswitch_14
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showApplicationGuide(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 229
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 234
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dispatchStatusBarKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_7

    .line 239
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_16
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 242
    sget-object v4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 247
    .local v0, "_arg0":Landroid/view/MotionEvent;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateRecentPanel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_8

    .line 252
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_17
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v0, v3

    .line 255
    .local v0, "_arg0":Z
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavButtonVisible(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v4

    .line 254
    goto :goto_9

    .line 260
    :sswitch_18
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->directExpandNotificationsPanel()V

    goto/16 :goto_0

    .line 266
    :sswitch_19
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->mzTopAppWindowChanged(I)V

    goto/16 :goto_0

    .line 274
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 278
    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v1, v3

    .line 279
    .local v1, "_arg1":Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setStatusBarDarkTheme(ZZ)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_9
    move v0, v4

    .line 276
    goto :goto_a

    .restart local v0    # "_arg0":Z
    :cond_a
    move v1, v4

    .line 278
    goto :goto_b

    .line 40
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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
