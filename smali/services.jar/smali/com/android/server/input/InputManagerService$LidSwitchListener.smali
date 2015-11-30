.class final Lcom/android/server/input/InputManagerService$LidSwitchListener;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LidSwitchListener"
.end annotation


# instance fields
.field mCallback:Landroid/hardware/input/ILidSwitchCallback;

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "callback"    # Landroid/hardware/input/ILidSwitchCallback;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LidSwitchListener;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1860
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mTag:Ljava/lang/String;

    .line 1861
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$LidSwitchListener;->mCallback:Landroid/hardware/input/ILidSwitchCallback;

    .line 1862
    return-void
.end method
