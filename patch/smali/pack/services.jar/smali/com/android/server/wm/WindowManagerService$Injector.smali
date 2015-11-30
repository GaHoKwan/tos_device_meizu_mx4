.class Lcom/android/server/wm/WindowManagerService$Injector;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static sLastRecordLayers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12918
    const/16 v0, 0x32

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wm/WindowManagerService$Injector;->sLastRecordLayers:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assignLayersLocked(I)I
    .locals 2
    .param p0, "curBaseLayer"    # I

    .prologue
    .line 12933
    div-int/lit16 v0, p0, 0x2710

    .line 12934
    .local v0, "curIndex":I
    sget-object v1, Lcom/android/server/wm/WindowManagerService$Injector;->sLastRecordLayers:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .end local p0    # "curBaseLayer":I
    :goto_0
    return p0

    .restart local p0    # "curBaseLayer":I
    :cond_0
    sget-object v1, Lcom/android/server/wm/WindowManagerService$Injector;->sLastRecordLayers:[I

    aget v1, v1, v0

    add-int/lit8 p0, v1, 0x5

    goto :goto_0
.end method

.method static beginAssignLayers()V
    .locals 3

    .prologue
    .line 12920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 12921
    sget-object v1, Lcom/android/server/wm/WindowManagerService$Injector;->sLastRecordLayers:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 12920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12923
    :cond_0
    return-void
.end method

.method static recordLastLayer(II)V
    .locals 2
    .param p0, "curBaseLayer"    # I
    .param p1, "curLayer"    # I

    .prologue
    .line 12926
    if-eqz p0, :cond_0

    .line 12927
    div-int/lit16 v0, p0, 0x2710

    .line 12928
    .local v0, "index":I
    sget-object v1, Lcom/android/server/wm/WindowManagerService$Injector;->sLastRecordLayers:[I

    aput p1, v1, v0

    .line 12930
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
