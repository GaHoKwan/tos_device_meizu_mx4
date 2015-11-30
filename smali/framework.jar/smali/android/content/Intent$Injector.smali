.class Landroid/content/Intent$Injector;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "dst"    # Landroid/content/Intent;

    .prologue
    .line 7691
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7692
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 7693
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 7694
    return-void
.end method

.method static copyMeizuFlag(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "dst"    # Landroid/content/Intent;

    .prologue
    .line 7697
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7698
    return-void
.end method

.method static readIntentExt(Landroid/os/Parcel;Landroid/content/IntentExt;)V
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "intentExt"    # Landroid/content/IntentExt;

    .prologue
    .line 7718
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7719
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 7720
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 7721
    return-void
.end method

.method static toShortStringForMeizuFlag(Landroid/content/IntentExt;Ljava/lang/StringBuilder;Z)Z
    .locals 2
    .param p0, "intentExt"    # Landroid/content/IntentExt;
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .prologue
    .line 7701
    iget v0, p0, Landroid/content/IntentExt;->mMeizuFlags:I

    if-eqz v0, :cond_1

    .line 7702
    if-nez p2, :cond_0

    .line 7703
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7705
    :cond_0
    const-string/jumbo v0, "meizuflg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7706
    const/4 p2, 0x0

    .line 7708
    .end local p2    # "first":Z
    :cond_1
    return p2
.end method

.method static writeIntentExt(Landroid/os/Parcel;Landroid/content/IntentExt;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "intentExt"    # Landroid/content/IntentExt;

    .prologue
    .line 7712
    iget v0, p1, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7713
    iget-object v0, p1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7714
    iget-object v0, p1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7715
    return-void
.end method
