.class final Lcom/android/server/input/InputManagerService$BinderDeath;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mListener:Lcom/android/server/input/InputManagerService$LidSwitchListener;

.field private mTag:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Ljava/lang/String;ILcom/android/server/input/InputManagerService$LidSwitchListener;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "listener"    # Lcom/android/server/input/InputManagerService$LidSwitchListener;

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$BinderDeath;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1937
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$BinderDeath;->mTag:Ljava/lang/String;

    .line 1938
    iput p3, p0, Lcom/android/server/input/InputManagerService$BinderDeath;->mUid:I

    .line 1939
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$BinderDeath;->mListener:Lcom/android/server/input/InputManagerService$LidSwitchListener;

    .line 1940
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1943
    monitor-enter p0

    .line 1945
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$BinderDeath;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$BinderDeath;->mListener:Lcom/android/server/input/InputManagerService$LidSwitchListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1946
    monitor-exit p0

    .line 1947
    return-void

    .line 1946
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
