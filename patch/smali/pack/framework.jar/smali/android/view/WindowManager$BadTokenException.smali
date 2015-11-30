.class public Landroid/view/WindowManager$BadTokenException;
.super Ljava/lang/RuntimeException;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadTokenException"
.end annotation


# instance fields
.field public slient:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$BadTokenException;->slient:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$BadTokenException;->slient:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "slient"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$BadTokenException;->slient:Z

    .line 84
    iput-boolean p2, p0, Landroid/view/WindowManager$BadTokenException;->slient:Z

    .line 85
    return-void
.end method
