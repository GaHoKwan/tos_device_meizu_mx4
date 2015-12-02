.class final Lcom/aliyun/ams/secure/SecureManager$2;
.super Ljava/lang/Object;
.source "SecureManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/ams/secure/SecureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 93
    :try_start_0
    const-string v1, "SecureService"

    invoke-static {v1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const-string v1, "SecureService connected"

    # invokes: Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/aliyun/ams/secure/SecureManager;->access$000(Ljava/lang/String;)V

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 101
    const-string v0, "SecureService Disconnected"

    # invokes: Lcom/aliyun/ams/secure/SecureManager;->debug_log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/aliyun/ams/secure/SecureManager;->access$000(Ljava/lang/String;)V

    .line 102
    return-void
.end method
