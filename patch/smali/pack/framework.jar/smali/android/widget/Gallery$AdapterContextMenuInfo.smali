.class public Landroid/widget/Gallery$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.Gallery.Feature "
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2769
    iput-object p1, p0, Landroid/widget/Gallery$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 2770
    iput p2, p0, Landroid/widget/Gallery$AdapterContextMenuInfo;->position:I

    .line 2771
    iput-wide p3, p0, Landroid/widget/Gallery$AdapterContextMenuInfo;->id:J

    .line 2772
    return-void
.end method
