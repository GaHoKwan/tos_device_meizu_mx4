.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayDevice"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mFlags:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V
    .locals 0
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "refreshRate"    # F
    .param p7, "flags"    # I
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "surface"    # Landroid/view/Surface;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 916
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 917
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 918
    iput p4, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 919
    iput p5, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 920
    iput p6, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 921
    iput p7, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 922
    iput-object p8, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Ljava/lang/String;

    .line 923
    iput-object p9, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 924
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroyLocked()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 931
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 932
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 950
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 951
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 952
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 953
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 954
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 955
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 956
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 958
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 944
    :cond_0
    return-void
.end method

.method public setNameLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 937
    return-void
.end method
