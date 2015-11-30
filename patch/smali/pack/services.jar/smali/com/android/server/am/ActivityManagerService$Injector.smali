.class Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static updateEventDispatchingLocked(ZLcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "on"    # Z
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 19120
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityManagerService;->mWentToSleep:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/WindowManagerService;->setEventDispatchingByState(ZZ)V

    .line 19122
    return-void

    .line 19120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
