.class Lcom/android/server/display/WifiDisplayController$61;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 4364
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$61;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4367
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$61;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$10300(Lcom/android/server/display/WifiDisplayController;)V

    .line 4368
    return-void
.end method