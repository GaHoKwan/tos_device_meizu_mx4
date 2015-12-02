.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$1;,
        Landroid/app/Instrumentation$Injector;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"

.field private static mContext:Landroid/content/Context;

.field private static mStartFlyme:Z


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mUiAutomation:Landroid/app/UiAutomation;

.field private mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 98
    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 99
    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method static synthetic access$100(Landroid/app/Instrumentation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Instrumentation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/app/Instrumentation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 78
    sput-object p0, Landroid/app/Instrumentation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .prologue
    .line 1304
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1306
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static checkStartActivityResult(ILjava/lang/Object;)V
    .locals 4
    .param p0, "res"    # I
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    .line 1704
    if-ltz p0, :cond_0

    .line 1738
    :goto_0
    return-void

    .line 1710
    :cond_0
    sget-boolean v0, Landroid/app/Instrumentation;->mStartFlyme:Z

    .line 1711
    .local v0, "startChoose":Z
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/Instrumentation;->mStartFlyme:Z

    .line 1714
    packed-switch p0, :pswitch_data_0

    .line 1746
    :pswitch_0
    new-instance v1, Landroid/util/AndroidRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1728
    :pswitch_1
    invoke-static {p1, v0}, Landroid/app/Instrumentation$Injector;->handleActivityNotFoundInLimitMode(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1734
    :pswitch_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1737
    :pswitch_3
    const-string v1, "Instrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User denied to start activity with intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1740
    :pswitch_4
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1743
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PendingIntent is not an activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1714
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1009
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1010
    return-object v0
.end method

.method private final validateNotAppThread()V
    .locals 2

    .prologue
    .line 1752
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1753
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1756
    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    .line 650
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 651
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 652
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    .line 673
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 674
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 675
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 623
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1091
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1092
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1093
    :try_start_0
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1094
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1095
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1096
    .local v2, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v2, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1097
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1098
    iput-object p1, v2, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1099
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v7, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v7, p0, v2}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1094
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1102
    .end local v2    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_2
    const-string v5, "Instrumentation"

    const-string v6, "activity.onCreate +"

    invoke-static {v5, v6}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1107
    const-string v5, "Instrumentation"

    const-string v6, "activity.onCreate -"

    invoke-static {v5, v6}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 1110
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1111
    :try_start_1
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1112
    .restart local v0    # "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1113
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1114
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, p1, p1, v5}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1102
    .end local v0    # "N":I
    .end local v1    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1116
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_3
    :try_start_3
    monitor-exit v6

    .line 1118
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_4
    return-void

    .line 1116
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1137
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1139
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1140
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1141
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1142
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1143
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1144
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1146
    .end local v1    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    .line 1148
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1146
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1181
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1182
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1257
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1258
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1170
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1171
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1203
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1204
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1158
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1159
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1213
    const-string v3, "Instrumentation"

    const-string v4, "activity.onResume +"

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/Activity;->mResumed:Z

    .line 1215
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1216
    const-string v3, "Instrumentation"

    const-string v4, "activity.onResume -"

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1219
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1220
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1221
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1222
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1223
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1225
    .end local v1    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    .line 1227
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1225
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1247
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1248
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1191
    const-string v0, "Instrumentation"

    const-string v1, "activity.onStart +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1193
    const-string v0, "Instrumentation"

    const-string v1, "activity.onStart -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1236
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1237
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1267
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1268
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 1025
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1026
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 693
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 695
    const/4 v0, 0x0

    monitor-exit v1

    .line 699
    :goto_0
    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 698
    monitor-exit v1

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 232
    :cond_0
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1519
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 1521
    return-void
.end method

.method public execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 13
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .prologue
    .line 1534
    move-object v2, p2

    check-cast v2, Landroid/app/IApplicationThread;

    .line 1535
    .local v2, "whoThread":Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1536
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1537
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 1538
    .local v9, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_1

    .line 1539
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1540
    .local v10, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v1, 0x0

    const/4 v4, 0x0

    aget-object v4, p5, v4

    invoke-virtual {v10, p1, v1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    iget v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1542
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1543
    monitor-exit v3

    .line 1563
    .end local v9    # "N":I
    .end local v10    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v11    # "i":I
    :goto_1
    return-void

    .line 1538
    .restart local v9    # "N":I
    .restart local v10    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v11    # "i":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1548
    .end local v10    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    .end local v9    # "N":I
    .end local v11    # "i":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p5

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 1552
    .local v5, "resolvedTypes":[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v11, v1, :cond_3

    .line 1553
    aget-object v1, p5, v11

    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1554
    aget-object v1, p5, v11

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1555
    aget-object v1, p5, v11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1552
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1548
    .end local v5    # "resolvedTypes":[Ljava/lang/String;
    .end local v11    # "i":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1557
    .restart local v5    # "resolvedTypes":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v12

    .line 1560
    .local v12, "result":I
    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-static {v12, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1561
    .end local v5    # "resolvedTypes":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "result":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 23
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1424
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1425
    .local v3, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1427
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 1428
    .local v14, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v14, :cond_2

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1430
    .local v15, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1431
    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1432
    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1433
    if-ltz p6, :cond_0

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1506
    .end local v14    # "N":I
    .end local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v17    # "i":I
    :goto_2
    return-object v2

    .line 1433
    .restart local v14    # "N":I
    .restart local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v17    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1428
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1438
    .end local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    .end local v14    # "N":I
    .end local v17    # "i":I
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/content/Context;->needBlockLaunch(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1445
    const/4 v2, 0x0

    goto :goto_2

    .line 1438
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1448
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1449
    .local v21, "resolvedType":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v4, 0x10000

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1, v4, v6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 1453
    .local v20, "rInfo":Landroid/content/pm/ResolveInfo;
    const/16 v19, 0x0

    .line 1454
    .local v19, "perm":Ljava/lang/String;
    if-eqz v20, :cond_5

    .line 1455
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1456
    const-string v2, "Instrumentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wdf startActivityForResult perm:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_5
    if-eqz v19, :cond_6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    move-object/from16 v0, v19

    invoke-static {v0, v2, v4}, Landroid/content/Context;->checkAskPermission(Ljava/lang/String;II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 1460
    const/4 v2, 0x0

    goto :goto_2

    .line 1462
    .end local v19    # "perm":Ljava/lang/String;
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1466
    :cond_6
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1467
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1468
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move/from16 v9, p6

    move-object/from16 v13, p7

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v22

    .line 1474
    .local v22, "result":I
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v16

    .line 1475
    .local v16, "flag":I
    move/from16 v0, v16

    and-int/lit16 v2, v0, 0x800

    if-nez v2, :cond_9

    const/16 v18, 0x1

    .line 1476
    .local v18, "isRecommend":Z
    :goto_4
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v18, :cond_7

    .line 1484
    const/4 v2, 0x1

    sput-boolean v2, Landroid/app/Instrumentation;->mStartFlyme:Z

    .line 1487
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.RECOMMEND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v5, "itt":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1489
    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, p5

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1490
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_a

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p3

    move/from16 v9, p6

    move-object/from16 v13, p7

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    .line 1500
    .end local v5    # "itt":Landroid/content/Intent;
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/app/Instrumentation$Injector;->initContext(Landroid/content/Context;)V

    .line 1503
    move/from16 v0, v22

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1506
    .end local v16    # "flag":I
    .end local v18    # "isRecommend":Z
    .end local v22    # "result":I
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1468
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 1475
    .restart local v16    # "flag":I
    .restart local v22    # "result":I
    :cond_9
    const/16 v18, 0x0

    goto :goto_4

    .line 1490
    .restart local v5    # "itt":Landroid/content/Intent;
    .restart local v18    # "isRecommend":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 1504
    .end local v5    # "itt":Landroid/content/Intent;
    .end local v16    # "flag":I
    .end local v18    # "isRecommend":Z
    .end local v22    # "result":I
    :catch_1
    move-exception v2

    goto :goto_6
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 20
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1656
    move-object/from16 v4, p2

    check-cast v4, Landroid/app/IApplicationThread;

    .line 1657
    .local v4, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1658
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1659
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    .line 1660
    .local v16, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1662
    .local v17, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1663
    move-object/from16 v0, v17

    iget v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1664
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1665
    if-ltz p6, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v3

    :goto_1
    monitor-exit v5

    .line 1683
    .end local v16    # "N":I
    .end local v17    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v18    # "i":I
    :goto_2
    return-object v3

    .line 1665
    .restart local v16    # "N":I
    .restart local v17    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v18    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1660
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1670
    .end local v17    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1673
    .end local v16    # "N":I
    .end local v18    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1674
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1675
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    move-object/from16 v6, p5

    move-object/from16 v8, p3

    move/from16 v10, p6

    move-object/from16 v14, p7

    invoke-interface/range {v3 .. v15}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v19

    .line 1680
    .local v19, "result":I
    move/from16 v0, v19

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1683
    .end local v19    # "result":I
    :goto_4
    const/4 v3, 0x0

    goto :goto_2

    .line 1670
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1675
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1681
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1596
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1597
    .local v3, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1599
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 1600
    .local v14, "N":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1602
    .local v15, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1603
    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1604
    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1605
    if-ltz p6, :cond_0

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1623
    .end local v14    # "N":I
    .end local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v16    # "i":I
    :goto_2
    return-object v2

    .line 1605
    .restart local v14    # "N":I
    .restart local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v16    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1600
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1610
    .end local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    .end local v14    # "N":I
    .end local v16    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1614
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1615
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move/from16 v9, p6

    move-object/from16 v13, p7

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v17

    .line 1620
    .local v17, "result":I
    move/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1623
    .end local v17    # "result":I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1610
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1615
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 1621
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 210
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 214
    :cond_2
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 215
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1321
    .local v0, "results":Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1322
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1323
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1324
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1325
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1326
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1335
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1336
    const-string/jumbo v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1337
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 3

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-nez v0, :cond_0

    .line 1780
    new-instance v0, Landroid/app/UiAutomation;

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 1782
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    .line 1784
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 1786
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .locals 1
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "instrContext"    # Landroid/content/Context;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;

    .prologue
    .line 1689
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 1690
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 1691
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1692
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 1693
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 1694
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1695
    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1699
    sput-object p3, Landroid/app/Instrumentation;->mContext:Landroid/content/Context;

    .line 1701
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 8
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .prologue
    const/16 v7, 0x17

    const/4 v4, 0x0

    .line 802
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 808
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 809
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 812
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 814
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 821
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 824
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 848
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 849
    .local v0, "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 850
    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .end local v0    # "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    :goto_0
    return v4

    .line 815
    :catch_0
    move-exception v2

    .line 816
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v5, "Instrumentation"

    const-string v6, "Could not sleep for long press timeout"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 2
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .prologue
    .line 786
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 787
    .local v0, "mr":Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 788
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1054
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1055
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, "aThread":Landroid/app/ActivityThread;
    move-object/from16 v11, p10

    .line 1056
    check-cast v11, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v12}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;)V

    .line 1060
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1079
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 747
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 749
    monitor-exit v1

    .line 750
    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runner"    # Ljava/lang/Runnable;

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 363
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 364
    .local v0, "sr":Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 366
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 935
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 936
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 937
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 922
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 923
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 924
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 889
    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 892
    .local v1, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 893
    .local v3, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 894
    .local v5, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 895
    .local v6, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 896
    .local v7, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 897
    .local v8, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 898
    .local v9, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 899
    .local v10, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    .line 900
    .local v12, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 901
    .local v13, "flags":I
    if-nez v12, :cond_0

    .line 902
    const/16 v12, 0x101

    .line 904
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_1

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 907
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_2

    .line 908
    move-wide v1, v3

    .line 910
    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 912
    .local v0, "newEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    const/4 v14, 0x2

    invoke-virtual {v11, v0, v14}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 914
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 951
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 952
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 953
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 955
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 957
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 184
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    goto :goto_0
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 860
    if-nez p1, :cond_1

    .line 877
    :cond_0
    return-void

    .line 863
    :cond_1
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 865
    .local v2, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 867
    .local v0, "events":[Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 868
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 874
    aget-object v3, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 971
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 973
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 975
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 977
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 219
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 220
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1
    .param p1, "inTouch"    # Z

    .prologue
    .line 322
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 144
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 391
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 392
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 394
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 396
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 397
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve activity for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v4

    move-object p1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 399
    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_3
    iget-object v4, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "myProc":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resolved to different process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 410
    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 412
    .local v1, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_2

    .line 413
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 415
    :cond_2
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    :cond_3
    :try_start_4
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    :goto_1
    :try_start_5
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 426
    iget-object v4, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v4

    .line 427
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "myProc":Ljava/lang/String;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 422
    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "myProc":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public startAllocCounting()V
    .locals 1

    .prologue
    .line 1278
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1279
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1280
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1282
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1285
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1286
    return-void
.end method

.method public startPerformanceSnapshot()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public startProfiling()V
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 301
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public stopAllocCounting()V
    .locals 1

    .prologue
    .line 1292
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1293
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1294
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1295
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1296
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 310
    :cond_0
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "recipient"    # Ljava/lang/Runnable;

    .prologue
    .line 337
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 338
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public waitForIdleSync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 348
    new-instance v0, Landroid/app/Instrumentation$Idler;

    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 349
    .local v0, "idler":Landroid/app/Instrumentation$Idler;
    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 350
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 352
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 3
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 712
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 713
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 714
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 715
    monitor-exit v2

    .line 716
    return-object v0

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 3
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    .prologue
    .line 731
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 732
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 733
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 734
    monitor-exit v2

    .line 735
    return-object v0

    .line 734
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
