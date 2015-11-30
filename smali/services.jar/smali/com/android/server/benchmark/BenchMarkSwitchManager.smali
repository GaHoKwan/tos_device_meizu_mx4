.class public Lcom/android/server/benchmark/BenchMarkSwitchManager;
.super Ljava/lang/Object;
.source "BenchMarkSwitchManager.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "wangxiaoyong@SHELL.BenchMark.Feature"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;,
        Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkSwitchState;,
        Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final POWER_MODE_BALANCE:I = 0x1

.field private static final POWER_MODE_BENCHMARK:I = 0x3

.field private static final POWER_MODE_HIGHPERFOR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BenchMarkSwitchManager"


# instance fields
.field private isSwitchtoPowerMode:Z

.field private mAlertDialogView:Landroid/view/View;

.field private mAppPackage:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRDrawableBalance:Ljava/lang/reflect/Field;

.field private mRDrawablePerformance:Ljava/lang/reflect/Field;

.field private mRIdImageViewBalance:Ljava/lang/reflect/Field;

.field private mRIdImageViewPerformance:Ljava/lang/reflect/Field;

.field private mRIdPowerModeTitle:Ljava/lang/reflect/Field;

.field private mRIdTextViewBalance:Ljava/lang/reflect/Field;

.field private mRIdTextViewPerformance:Ljava/lang/reflect/Field;

.field private mRLayoutPowerMode:Ljava/lang/reflect/Field;

.field private mRStringBalance:Ljava/lang/reflect/Field;

.field private mRStringPerformance:Ljava/lang/reflect/Field;

.field private mRStringSwitchTo:Ljava/lang/reflect/Field;

.field private mReadCPUfreq:Ljava/lang/reflect/Method;

.field private mSaveCPUfreq:Ljava/lang/reflect/Method;

.field private mState:I

.field private mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

.field private processRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    .line 85
    iput-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mReadCPUfreq:Ljava/lang/reflect/Method;

    .line 103
    iput-boolean v3, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z

    .line 336
    new-instance v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$1;-><init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    iput-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    .line 124
    iput v3, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BenchMarkSwitchManager"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;-><init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    .line 128
    iput-boolean v3, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/benchmark/BenchMarkSwitchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->changeToBenchMarkProtection()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/benchmark/BenchMarkSwitchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->handleBenchMarkAppResume(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/benchmark/BenchMarkSwitchManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->showAlertDialog(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->changeToDynamicBenchMarkManagement()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/benchmark/BenchMarkSwitchManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/benchmark/BenchMarkSwitchManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private changeToBenchMarkProtection()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 215
    invoke-direct {p0, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->setPowerSavingMode(I)V

    .line 216
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cpu_l"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    return-void
.end method

.method private changeToDynamicBenchMarkManagement()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cpu_l"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "powerMode":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cpu_l"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->setPowerSavingMode(I)V

    .line 231
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 13

    .prologue
    .line 415
    const/4 v7, 0x0

    .line 422
    .local v7, "powerModeView":Landroid/view/View;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRStringBalance:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "modeBalance":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRStringPerformance:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "modePerformance":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRStringSwitchTo:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "switchTitle":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRLayoutPowerMode:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 427
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdImageViewBalance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 428
    .local v0, "balanceImageView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdImageViewPerformance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 429
    .local v5, "performanceImageView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRDrawableBalance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRDrawablePerformance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    new-instance v10, Lcom/android/server/benchmark/BenchMarkSwitchManager$3;

    invoke-direct {v10, p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$3;-><init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    new-instance v10, Lcom/android/server/benchmark/BenchMarkSwitchManager$4;

    invoke-direct {v10, p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$4;-><init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdTextViewBalance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 453
    .local v1, "balanceTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdTextViewPerformance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 454
    .local v6, "performanceTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v10, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdPowerModeTitle:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 458
    .local v9, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    .end local v0    # "balanceImageView":Landroid/widget/ImageView;
    .end local v1    # "balanceTextView":Landroid/widget/TextView;
    .end local v3    # "modeBalance":Ljava/lang/CharSequence;
    .end local v4    # "modePerformance":Ljava/lang/CharSequence;
    .end local v5    # "performanceImageView":Landroid/widget/ImageView;
    .end local v6    # "performanceTextView":Landroid/widget/TextView;
    .end local v8    # "switchTitle":Ljava/lang/CharSequence;
    .end local v9    # "titleTextView":Landroid/widget/TextView;
    :goto_0
    return-object v7

    .line 459
    :catch_0
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 464
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleBenchMarkAppResume(I)V
    .locals 4
    .param p1, "powerMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 470
    if-ne p1, v3, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cpu_l"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    invoke-direct {p0, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->setPowerSavingMode(I)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mAppPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 476
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/benchmark/BenchMarkConfig;->appConfig:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mAppPackage:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 478
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setPowerSavingMode(I)V
    .locals 6
    .param p1, "powerMode"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 361
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private showAlertDialog(IZ)V
    .locals 4
    .param p1, "powerMode"    # I
    .param p2, "isDtm"    # Z

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mAlertDialogView:Landroid/view/View;

    .line 393
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    .line 398
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/server/benchmark/BenchMarkSwitchManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$2;-><init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 406
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mbenchmarkSwitchAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public initProcessStartRecord()V
    .locals 5

    .prologue
    .line 175
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->processRecord:Ljava/util/Map;

    .line 177
    sget-object v2, Lcom/android/server/benchmark/BenchMarkConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, "info":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->processRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    .end local v0    # "info":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public notifyAppState(Ljava/lang/String;Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;)V
    .locals 4
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "appState"    # Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    .prologue
    const/4 v3, 0x2

    .line 189
    sget-object v1, Lcom/android/server/benchmark/BenchMarkConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 194
    sget-object v1, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Resumed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    if-ne p2, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->processRecord:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mAppPackage:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 200
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->processRecord:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-object v1, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Dead:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    if-ne p2, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->processRecord:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    invoke-virtual {v1}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 205
    .restart local v0    # "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 207
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public systemRunning()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 134
    iget-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mHandler:Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;

    invoke-virtual {v6, v7, v8, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    :try_start_0
    const-string v6, "android.os.MeizuDeviceControl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "saveCPUfreq"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    .line 139
    const-string v7, "readCPUfreq"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mReadCPUfreq:Ljava/lang/reflect/Method;

    .line 142
    const-string v6, "com.android.internal.R$string"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 143
    .local v4, "classRString":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "battery_consumption_balance_title"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRStringBalance:Ljava/lang/reflect/Field;

    .line 144
    const-string v6, "battery_consumption_performance_title"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRStringPerformance:Ljava/lang/reflect/Field;

    .line 146
    const-string v6, "recommend_switch_power_mode"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRStringSwitchTo:Ljava/lang/reflect/Field;

    .line 148
    const-string v6, "com.android.internal.R$drawable"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 149
    .local v1, "classRDrawable":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mz_popup_balance"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRDrawableBalance:Ljava/lang/reflect/Field;

    .line 150
    const-string v6, "mz_popup_fast"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRDrawablePerformance:Ljava/lang/reflect/Field;

    .line 152
    const-string v6, "com.android.internal.R$layout"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 153
    .local v3, "classRLayout":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mz_powermode_alertdialog_view"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRLayoutPowerMode:Ljava/lang/reflect/Field;

    .line 154
    const-string v6, "com.android.internal.R$id"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 155
    .local v2, "classRId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mz_powermode_title"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdPowerModeTitle:Ljava/lang/reflect/Field;

    .line 156
    const-string v6, "mz_mode1_textview"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdTextViewBalance:Ljava/lang/reflect/Field;

    .line 157
    const-string v6, "mz_mode2_textview"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdTextViewPerformance:Ljava/lang/reflect/Field;

    .line 158
    const-string v6, "mz_mode1_imageview"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdImageViewBalance:Ljava/lang/reflect/Field;

    .line 159
    const-string v6, "mz_mode2_imageview"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager;->mRIdImageViewPerformance:Ljava/lang/reflect/Field;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->initProcessStartRecord()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "classRDrawable":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classRId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "classRLayout":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "classRString":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v5

    .line 164
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 167
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    .line 170
    .local v5, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method
