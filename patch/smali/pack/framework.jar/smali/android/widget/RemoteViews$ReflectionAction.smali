.class final Landroid/widget/RemoteViews$ReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReflectionAction"
.end annotation


# static fields
.field static final BITMAP:I = 0xc

.field static final BOOLEAN:I = 0x1

.field static final BUNDLE:I = 0xd

.field static final BYTE:I = 0x2

.field static final CHAR:I = 0x8

.field static final CHAR_SEQUENCE:I = 0xa

.field static final DOUBLE:I = 0x7

.field static final FLOAT:I = 0x6

.field static final INT:I = 0x4

.field static final INTENT:I = 0xe

.field static final LONG:I = 0x5

.field static final SHORT:I = 0x3

.field static final STRING:I = 0x9

.field static final TAG:I = 0x2

.field static final URI:I = 0xb


# instance fields
.field methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field type:I

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "value"    # Ljava/lang/Object;

    .prologue
    .line 1085
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1086
    iput p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    .line 1087
    iput-object p3, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 1088
    iput p4, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    .line 1089
    iput-object p5, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1090
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1092
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    .line 1104
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1106
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1109
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1112
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1115
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1118
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1121
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1124
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1127
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1130
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1133
    :pswitch_9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1136
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1141
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1146
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1149
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getParameterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1229
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1259
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1231
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1233
    :pswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1235
    :pswitch_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1237
    :pswitch_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1239
    :pswitch_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1241
    :pswitch_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1243
    :pswitch_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1245
    :pswitch_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1247
    :pswitch_8
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 1249
    :pswitch_9
    const-class v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 1251
    :pswitch_a
    const-class v0, Landroid/net/Uri;

    goto :goto_0

    .line 1253
    :pswitch_b
    const-class v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1255
    :pswitch_c
    const-class v0, Landroid/os/Bundle;

    goto :goto_0

    .line 1257
    :pswitch_d
    const-class v0, Landroid/content/Intent;

    goto :goto_0

    .line 1229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1265
    const-string v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReflectionAction apply viewId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1267
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1269
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v2

    .line 1270
    .local v2, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1

    .line 1271
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1275
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    # invokes: Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v4, v3, v5, v2}, Landroid/widget/RemoteViews;->access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    # invokes: Landroid/widget/RemoteViews;->wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    invoke-static {v5}, Landroid/widget/RemoteViews;->access$500(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Landroid/widget/RemoteViews$ActionException;
    throw v0

    .line 1278
    .end local v0    # "e":Landroid/widget/RemoteViews$ActionException;
    :catch_1
    move-exception v1

    .line 1279
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReflectionAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergeBehavior()I
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    const-string/jumbo v1, "smoothScrollBy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x1

    .line 1288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1159
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1162
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1173
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1176
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 1179
    :pswitch_2
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1182
    :pswitch_3
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1185
    :pswitch_4
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1188
    :pswitch_5
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1191
    :pswitch_6
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 1194
    :pswitch_7
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1197
    :pswitch_8
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1200
    :pswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1203
    :pswitch_a
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 1203
    goto :goto_2

    .line 1209
    :pswitch_b
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1209
    goto :goto_3

    .line 1215
    :pswitch_c
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1218
    :pswitch_d
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 1218
    goto :goto_4

    .line 1171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method