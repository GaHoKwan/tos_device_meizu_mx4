.class Lcom/android/server/AliSystemServiceHelper$1;
.super Ljava/lang/Object;
.source "AliSystemServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AliSystemServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AliSystemServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/AliSystemServiceHelper;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/AliSystemServiceHelper$1;->this$0:Lcom/android/server/AliSystemServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 144
    const-string v0, "AliSystemServiceHelper"

    const-string v1, "Connected to tyid service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "TyidService"

    invoke-static {v0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 146
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 149
    const-string v0, "AliSystemServiceHelper"

    const-string v1, "Disconnected from to tyid service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method
