.class final Lcom/android/internal/telephony/cdma/utk/Tone$1;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/Tone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/cdma/utk/Tone;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/utk/Tone;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/Tone;->values()[Lcom/android/internal/telephony/cdma/utk/Tone;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/Tone$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/utk/Tone;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cdma/utk/Tone;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 187
    new-array v0, p1, [Lcom/android/internal/telephony/cdma/utk/Tone;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/Tone$1;->newArray(I)[Lcom/android/internal/telephony/cdma/utk/Tone;

    move-result-object v0

    return-object v0
.end method
