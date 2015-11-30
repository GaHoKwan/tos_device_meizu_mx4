.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_dragRecipientEntered:I = 0x16

.field static final TRANSACTION_dragRecipientExited:I = 0x17

.field static final TRANSACTION_finishDrawing:I = 0xf

.field static final TRANSACTION_flushBlurGlassPropertyChanged:I = 0x1f

.field static final TRANSACTION_getDisplayFrame:I = 0xe

.field static final TRANSACTION_getInTouchMode:I = 0x11

.field static final TRANSACTION_getMovedWinPoint:I = 0x8

.field static final TRANSACTION_getWindowId:I = 0x1e

.field static final TRANSACTION_moveTopAppWinow:I = 0x7

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1d

.field static final TRANSACTION_outOfMemory:I = 0xb

.field static final TRANSACTION_performDeferredDestroy:I = 0xa

.field static final TRANSACTION_performDrag:I = 0x14

.field static final TRANSACTION_performHapticFeedback:I = 0x12

.field static final TRANSACTION_prepareDrag:I = 0x13

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x15

.field static final TRANSACTION_sendWallpaperCommand:I = 0x1a

.field static final TRANSACTION_setInTouchMode:I = 0x10

.field static final TRANSACTION_setInsets:I = 0xd

.field static final TRANSACTION_setMoveWinListener:I = 0x9

.field static final TRANSACTION_setTransparentRegion:I = 0xc

.field static final TRANSACTION_setUniverseTransform:I = 0x1c

.field static final TRANSACTION_setWallpaperPosition:I = 0x18

.field static final TRANSACTION_setZOrderOnTop:I = 0x20

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1b

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 688
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 56
    .local v2, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .local v4, "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 67
    .local v5, "_arg3":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v6, "_arg4":Landroid/graphics/Rect;
    new-instance v7, Landroid/view/InputChannel;

    invoke-direct {v7}, Landroid/view/InputChannel;-><init>()V

    .local v7, "_arg5":Landroid/view/InputChannel;
    move-object/from16 v1, p0

    .line 70
    invoke-virtual/range {v1 .. v7}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v15

    .line 71
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    if-eqz v6, :cond_1

    .line 74
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    :goto_2
    if-eqz v7, :cond_2

    .line 81
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_1

    .line 78
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    .restart local v7    # "_arg5":Landroid/view/InputChannel;
    .restart local v15    # "_result":I
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 85
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 91
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :sswitch_2
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 95
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 104
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 108
    .local v6, "_arg4":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v7, "_arg5":Landroid/graphics/Rect;
    new-instance v8, Landroid/view/InputChannel;

    invoke-direct {v8}, Landroid/view/InputChannel;-><init>()V

    .local v8, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v1, p0

    .line 111
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v15

    .line 112
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    if-eqz v7, :cond_4

    .line 115
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    :goto_5
    if-eqz v8, :cond_5

    .line 122
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 101
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    .line 119
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    .restart local v8    # "_arg6":Landroid/view/InputChannel;
    .restart local v15    # "_result":I
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 126
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 132
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :sswitch_3
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 145
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 147
    .restart local v5    # "_arg3":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .local v6, "_arg4":Landroid/graphics/Rect;
    move-object/from16 v1, p0

    .line 148
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v15

    .line 149
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    if-eqz v6, :cond_7

    .line 152
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 142
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_7

    .line 156
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    .restart local v15    # "_result":I
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 162
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :sswitch_4
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 166
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 175
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 179
    .local v6, "_arg4":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v1, p0

    .line 180
    invoke-virtual/range {v1 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I

    move-result v15

    .line 181
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    if-eqz v7, :cond_9

    .line 184
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 172
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    .line 188
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    .restart local v15    # "_result":I
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 194
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :sswitch_5
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 197
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 210
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 216
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 218
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 220
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 222
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 224
    .local v8, "_arg6":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v9, "_arg7":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .local v10, "_arg8":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v11, "_arg9":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 232
    .local v12, "_arg10":Landroid/graphics/Rect;
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 234
    .local v13, "_arg11":Landroid/content/res/Configuration;
    new-instance v14, Landroid/view/Surface;

    invoke-direct {v14}, Landroid/view/Surface;-><init>()V

    .local v14, "_arg12":Landroid/view/Surface;
    move-object/from16 v1, p0

    .line 235
    invoke-virtual/range {v1 .. v14}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 236
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    if-eqz v9, :cond_b

    .line 239
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    :goto_c
    if-eqz v10, :cond_c

    .line 246
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_d
    if-eqz v11, :cond_d

    .line 253
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 259
    :goto_e
    if-eqz v12, :cond_e

    .line 260
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    :goto_f
    if-eqz v13, :cond_f

    .line 267
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    :goto_10
    if-eqz v14, :cond_10

    .line 274
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    :goto_11
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 213
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Landroid/graphics/Rect;
    .end local v10    # "_arg8":Landroid/graphics/Rect;
    .end local v11    # "_arg9":Landroid/graphics/Rect;
    .end local v12    # "_arg10":Landroid/graphics/Rect;
    .end local v13    # "_arg11":Landroid/content/res/Configuration;
    .end local v14    # "_arg12":Landroid/view/Surface;
    .end local v15    # "_result":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_b

    .line 243
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":Landroid/graphics/Rect;
    .restart local v10    # "_arg8":Landroid/graphics/Rect;
    .restart local v11    # "_arg9":Landroid/graphics/Rect;
    .restart local v12    # "_arg10":Landroid/graphics/Rect;
    .restart local v13    # "_arg11":Landroid/content/res/Configuration;
    .restart local v14    # "_arg12":Landroid/view/Surface;
    .restart local v15    # "_result":I
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 250
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 257
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 264
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 271
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 278
    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 284
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Landroid/graphics/Rect;
    .end local v10    # "_arg8":Landroid/graphics/Rect;
    .end local v11    # "_arg9":Landroid/graphics/Rect;
    .end local v12    # "_arg10":Landroid/graphics/Rect;
    .end local v13    # "_arg11":Landroid/content/res/Configuration;
    .end local v14    # "_arg12":Landroid/view/Surface;
    .end local v15    # "_result":I
    :sswitch_7
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .local v4, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->moveTopAppWinow(III)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_8
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getMovedWinPoint()Landroid/graphics/Point;

    move-result-object v15

    .line 299
    .local v15, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v15, :cond_11

    .line 301
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 305
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 311
    .end local v15    # "_result":Landroid/graphics/Point;
    :sswitch_9
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IMoveWinCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IMoveWinCallback;

    move-result-object v2

    .line 314
    .local v2, "_arg0":Landroid/view/IMoveWinCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->setMoveWinListener(Landroid/view/IMoveWinCallback;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 320
    .end local v2    # "_arg0":Landroid/view/IMoveWinCallback;
    :sswitch_a
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 329
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_b
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 332
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v15

    .line 333
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v15, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 334
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 339
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v15    # "_result":Z
    :sswitch_c
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 343
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 344
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 349
    .local v3, "_arg1":Landroid/graphics/Region;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 347
    .end local v3    # "_arg1":Landroid/graphics/Region;
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Region;
    goto :goto_14

    .line 355
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/graphics/Region;
    :sswitch_d
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 359
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 361
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 362
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 368
    .local v4, "_arg2":Landroid/graphics/Rect;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 369
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 375
    .local v5, "_arg3":Landroid/graphics/Rect;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 376
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .local v6, "_arg4":Landroid/graphics/Region;
    :goto_17
    move-object/from16 v1, p0

    .line 381
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 365
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    .end local v5    # "_arg3":Landroid/graphics/Rect;
    .end local v6    # "_arg4":Landroid/graphics/Region;
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/graphics/Rect;
    goto :goto_15

    .line 372
    :cond_15
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/graphics/Rect;
    goto :goto_16

    .line 379
    :cond_16
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Landroid/graphics/Region;
    goto :goto_17

    .line 387
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    .end local v5    # "_arg3":Landroid/graphics/Rect;
    .end local v6    # "_arg4":Landroid/graphics/Region;
    :sswitch_e
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 391
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .local v3, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v3, :cond_17

    .line 395
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    :goto_18
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 399
    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 405
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :sswitch_f
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 408
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_10
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    .line 417
    .local v2, "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 416
    .end local v2    # "_arg0":Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 423
    :sswitch_11
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v15

    .line 425
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v15, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 426
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 431
    .end local v15    # "_result":Z
    :sswitch_12
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 435
    .local v2, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 437
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v4, 0x1

    .line 438
    .local v4, "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v15

    .line 439
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v15, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 437
    .end local v4    # "_arg2":Z
    .end local v15    # "_result":Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .line 440
    .restart local v4    # "_arg2":Z
    .restart local v15    # "_result":Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 445
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v15    # "_result":Z
    :sswitch_13
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 449
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 453
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 455
    .local v5, "_arg3":I
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .local v6, "_arg4":Landroid/view/Surface;
    move-object/from16 v1, p0

    .line 456
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v15

    .line 457
    .local v15, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 459
    if-eqz v6, :cond_1c

    .line 460
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    :goto_1d
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 464
    :cond_1c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 470
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/Surface;
    .end local v15    # "_result":Landroid/os/IBinder;
    :sswitch_14
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 474
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 476
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 478
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 480
    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 482
    .local v6, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 484
    .local v7, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 485
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipData;

    .local v8, "_arg6":Landroid/content/ClipData;
    :goto_1e
    move-object/from16 v1, p0

    .line 490
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v15

    .line 491
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v15, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 488
    .end local v8    # "_arg6":Landroid/content/ClipData;
    .end local v15    # "_result":Z
    :cond_1d
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/content/ClipData;
    goto :goto_1e

    .line 492
    .restart local v15    # "_result":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 497
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":F
    .end local v7    # "_arg5":F
    .end local v8    # "_arg6":Landroid/content/ClipData;
    .end local v15    # "_result":Z
    :sswitch_15
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    .line 502
    .local v3, "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 501
    .end local v3    # "_arg1":Z
    :cond_1f
    const/4 v3, 0x0

    goto :goto_20

    .line 508
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_16
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 511
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 517
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_17
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 520
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 526
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_18
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 530
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 532
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 534
    .restart local v4    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 536
    .restart local v5    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .restart local v6    # "_arg4":F
    move-object/from16 v1, p0

    .line 537
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 543
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":F
    :sswitch_19
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 546
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 552
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 556
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 562
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 564
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    .line 565
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 571
    .local v7, "_arg5":Landroid/os/Bundle;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v8, 0x1

    .local v8, "_arg6":Z
    :goto_22
    move-object/from16 v1, p0

    .line 572
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v15

    .line 573
    .local v15, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v15, :cond_22

    .line 575
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 581
    :goto_23
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 568
    .end local v7    # "_arg5":Landroid/os/Bundle;
    .end local v8    # "_arg6":Z
    .end local v15    # "_result":Landroid/os/Bundle;
    :cond_20
    const/4 v7, 0x0

    .restart local v7    # "_arg5":Landroid/os/Bundle;
    goto :goto_21

    .line 571
    :cond_21
    const/4 v8, 0x0

    goto :goto_22

    .line 579
    .restart local v8    # "_arg6":Z
    .restart local v15    # "_result":Landroid/os/Bundle;
    :cond_22
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 585
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/os/Bundle;
    .end local v8    # "_arg6":Z
    .end local v15    # "_result":Landroid/os/Bundle;
    :sswitch_1b
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 589
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 590
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 595
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 593
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_23
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_24

    .line 601
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_1c
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 607
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 609
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 611
    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 613
    .local v6, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 615
    .local v7, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 617
    .local v8, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .local v9, "_arg7":F
    move-object/from16 v1, p0

    .line 618
    invoke-virtual/range {v1 .. v9}, Landroid/view/IWindowSession$Stub;->setUniverseTransform(Landroid/os/IBinder;FFFFFFF)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 624
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":F
    .end local v7    # "_arg5":F
    .end local v8    # "_arg6":F
    .end local v9    # "_arg7":F
    :sswitch_1d
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 628
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 629
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 635
    .local v3, "_arg1":Landroid/graphics/Rect;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    const/4 v4, 0x1

    .line 636
    .local v4, "_arg2":Z
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 632
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Z
    :cond_24
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    goto :goto_25

    .line 635
    :cond_25
    const/4 v4, 0x0

    goto :goto_26

    .line 642
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1e
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 645
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v15

    .line 646
    .local v15, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v15, :cond_26

    invoke-interface {v15}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 648
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 647
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 652
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_result":Landroid/view/IWindowId;
    :sswitch_1f
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 656
    .local v2, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    .line 657
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 663
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 665
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    const/4 v5, 0x1

    .line 667
    .local v5, "_arg3":Z
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 669
    .restart local v6    # "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 671
    .restart local v7    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    const/4 v8, 0x1

    .local v8, "_arg6":Z
    :goto_2a
    move-object/from16 v1, p0

    .line 672
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->flushBlurGlassPropertyChanged(Landroid/view/IWindow;Landroid/graphics/Rect;FZFFZ)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 660
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":F
    .end local v7    # "_arg5":F
    .end local v8    # "_arg6":Z
    :cond_27
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    goto :goto_28

    .line 665
    .restart local v4    # "_arg2":F
    :cond_28
    const/4 v5, 0x0

    goto :goto_29

    .line 671
    .restart local v5    # "_arg3":Z
    .restart local v6    # "_arg4":F
    .restart local v7    # "_arg5":F
    :cond_29
    const/4 v8, 0x0

    goto :goto_2a

    .line 678
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":F
    .end local v7    # "_arg5":F
    :sswitch_20
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 682
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v3, 0x1

    .line 683
    .local v3, "_arg1":Z
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->setZOrderOnTop(Landroid/view/IWindow;Z)V

    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 682
    .end local v3    # "_arg1":Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2b

    .line 43
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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
