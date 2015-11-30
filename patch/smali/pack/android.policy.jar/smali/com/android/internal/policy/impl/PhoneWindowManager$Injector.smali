.class Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "dzh@SHELL.WindowManager.Feature #76059"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static final IS_FLYME:Z = true

.field private static final effectType:I

.field public static mRotationLand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7731
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->mRotationLand:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "x1"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7729
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->prepareRecentPanel(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7729
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->prepareGesturePanel(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;IZLandroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7729
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->initHomeKeyState(Lcom/android/internal/policy/impl/PhoneWindowManager;IZLandroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7729
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->interceptVolumeUpKeyTriggeredBeforeDispatching(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 7729
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->interceptVolumeUpKeyConsumedBeforeDispatching(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7729
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->createDoubleKeyThread(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7729
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->preventHomeForBackGesture(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "x1"    # Z

    .prologue
    .line 7729
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 7729
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->handleHomeKeyUpForFlyme(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 7729
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->handleLongPressOnHeadSetIfNeeded(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7729
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->playHomeEffect(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 7729
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->interceptVolumeUpKeyBeforeQueueing(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$5200()Z
    .locals 1

    .prologue
    .line 7729
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->isPhoneIdel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7729
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->startVoiceActivity(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;I[I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I

    .prologue
    .line 7729
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->checkAddPermission(Ljava/lang/String;I[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 7729
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method private static backKeyUpAndDownActually(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 8105
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V

    .line 8106
    return-void
.end method

.method private static checkAddPermission(Ljava/lang/String;I[I)Ljava/lang/String;
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "outAppOp"    # [I

    .prologue
    .line 7733
    const/16 v0, 0x7f1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f0

    if-ne p1, v0, :cond_1

    .line 7735
    :cond_0
    const-string p0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 7736
    const/4 v0, 0x0

    const/16 v1, 0x18

    aput v1, p2, v0

    .line 7738
    :cond_1
    return-object p0
.end method

.method public static createActivityOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 8109
    const v0, 0x10a004c

    const v1, 0x10a004d

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static createDoubleKeyThread(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7852
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    if-eqz v1, :cond_0

    .line 7853
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 7855
    .local v0, "dkThread":Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7860
    .end local v0    # "dkThread":Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 7861
    return-void

    .line 7856
    .restart local v0    # "dkThread":Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getTelephonyExService()Lcom/meizu/telephony/ITelephonyExt;
    .locals 1

    .prologue
    .line 7751
    const-string v0, "phone_ext"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/telephony/ITelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method private static handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "homeConsumed"    # Z

    .prologue
    .line 7821
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7822
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v1, v1, Landroid/view/MeizuLayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 7824
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "MEIZU_FLAG_INTERCEPT_HOME_KEY return 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7825
    :cond_0
    const/4 v1, 0x1

    .line 7827
    :goto_1
    return v1

    .line 7821
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7827
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static handleHomeKeyUpForFlyme(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)Z
    .locals 11
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 7865
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 7866
    .local v1, "homeWasLongPressed":Z
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 7867
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 7868
    if-nez v1, :cond_a

    .line 7870
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 7871
    if-nez p2, :cond_9

    .line 7874
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwapHomeAndBack:Z

    if-eqz v9, :cond_1

    .line 7875
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->hookHomeHotKey(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 7938
    :cond_0
    :goto_0
    return v7

    .line 7888
    :cond_1
    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isIncomingRing()Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    .line 7889
    .local v2, "incomingRinging":Z
    if-eqz v2, :cond_2

    .line 7890
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 7892
    .local v4, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7900
    .end local v4    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 7901
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v8, :cond_0

    .line 7902
    const-string v8, "WindowManager"

    const-string v9, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7893
    .restart local v4    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 7894
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v9, "WindowManager"

    const-string v10, "RemoteException from getPhoneInterface()"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 7906
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v4    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 7907
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z
    invoke-static {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 7908
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z
    invoke-static {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 7909
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7910
    .local v3, "isBackDefaultHomePage":Ljava/lang/Boolean;
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v9, :cond_6

    .line 7911
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7912
    .local v6, "type":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7914
    .local v5, "titleString":Ljava/lang/String;
    const/16 v9, 0x7d8

    if-eq v6, v9, :cond_4

    const/16 v9, 0x7d3

    if-ne v6, v9, :cond_5

    .line 7916
    :cond_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7917
    :cond_5
    const-string v9, "com.android.launcher/com.android.launcher2.Launcher"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 7919
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7921
    .end local v5    # "titleString":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 7922
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v10, "isBack"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7926
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    .line 7924
    :cond_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v9, "isBack"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 7928
    .end local v3    # "isBackDefaultHomePage":Ljava/lang/Boolean;
    :cond_8
    const-string v8, "homekey"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    goto :goto_0

    .line 7933
    .end local v2    # "incomingRinging":Z
    :cond_9
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v8, :cond_0

    .line 7934
    const-string v8, "WindowManager"

    const-string v9, "Ignoring HOME; event canceled."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v7, v8

    .line 7938
    goto/16 :goto_0
.end method

.method private static handleLongPressOnHeadSetIfNeeded(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 5
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7798
    const/16 v1, 0x4f

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 7799
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_intelligent_voice"

    const/4 v3, 0x0

    const/4 v4, -0x3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 7804
    .local v0, "isStartVoiceEnable":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7805
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->isPhoneIdel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7806
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7807
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 7809
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->startVoiceActivity(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    .line 7813
    .end local v0    # "isStartVoiceEnable":I
    :cond_1
    return-void
.end method

.method public static hookBack(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 10
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 8037
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwapHomeAndBack:Z

    if-eqz v6, :cond_8

    .line 8039
    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isIncomingRing()Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    .line 8040
    .local v1, "incomingRinging":Z
    if-eqz v1, :cond_0

    .line 8041
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 8043
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8051
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 8052
    sget-boolean v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v6, :cond_1

    .line 8053
    const-string v6, "WindowManager"

    const-string v7, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8086
    .end local v1    # "incomingRinging":Z
    :cond_1
    :goto_1
    return-void

    .line 8044
    .restart local v1    # "incomingRinging":Z
    .restart local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 8045
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException from getPhoneInterface()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8057
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 8058
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z
    invoke-static {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8059
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z
    invoke-static {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8060
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 8061
    .local v2, "isBackDefaultHomePage":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_5

    .line 8062
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8063
    .local v5, "type":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8065
    .local v4, "titleString":Ljava/lang/String;
    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_3

    const/16 v6, 0x7d3

    if-ne v5, v6, :cond_4

    .line 8067
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 8068
    :cond_4
    const-string v6, "com.android.launcher/com.android.launcher3.Launcher"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 8070
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 8072
    .end local v4    # "titleString":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8073
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v7, "isBack"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8077
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_1

    .line 8075
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v7, "isBack"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 8079
    .end local v2    # "isBackDefaultHomePage":Ljava/lang/Boolean;
    :cond_7
    const-string v6, "homekey"

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    goto :goto_1

    .line 8084
    .end local v1    # "incomingRinging":Z
    :cond_8
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->backKeyUpAndDownActually(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    goto :goto_1
.end method

.method public static hookHomeHotKey(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 13
    .param p0, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 8089
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwapHomeAndBack:Z

    if-eqz v0, :cond_0

    .line 8091
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->backKeyUpAndDownActually(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    .line 8094
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->backKeyUpAndDownActually(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    .line 8101
    :goto_0
    return-void

    .line 8099
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0
.end method

.method private static initHomeKeyState(Lcom/android/internal/policy/impl/PhoneWindowManager;IZLandroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7831
    if-eqz p2, :cond_0

    .line 7832
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 7834
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 7835
    if-eqz p2, :cond_3

    .line 7836
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z
    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3802(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 7849
    :cond_1
    :goto_1
    return-void

    .line 7832
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7838
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    if-eqz v0, :cond_5

    .line 7839
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 7846
    :cond_4
    :goto_2
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3802(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_1

    .line 7841
    :cond_5
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7843
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    goto :goto_2
.end method

.method public static initSwapHomeAndBack(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 5
    .param p0, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8031
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_swap_home_and_back"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwapHomeAndBack:Z

    .line 8032
    const-string v1, "mz_swap_home_and_back"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8033
    .local v0, "fsdUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwapHomeAndBackObserver:Landroid/database/ContentObserver;
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8034
    return-void

    .end local v0    # "fsdUri":Landroid/net/Uri;
    :cond_0
    move v1, v2

    .line 8031
    goto :goto_0
.end method

.method private static interceptVolumeUpKeyBeforeQueueing(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8025
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J
    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4502(Lcom/android/internal/policy/impl/PhoneWindowManager;J)J

    .line 8026
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z
    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4702(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8027
    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptScreenshotChord()V
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 8028
    return-void
.end method

.method private static interceptVolumeUpKeyConsumedBeforeDispatching(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)Z
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v0, 0x0

    .line 8014
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8016
    if-nez p2, :cond_0

    .line 8017
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z
    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4702(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8019
    :cond_0
    const/4 v0, 0x1

    .line 8021
    :cond_1
    return v0
.end method

.method private static interceptVolumeUpKeyTriggeredBeforeDispatching(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 8
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 8000
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8002
    .local v0, "now":J
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4500(Lcom/android/internal/policy/impl/PhoneWindowManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x96

    add-long v2, v4, v6

    .line 8004
    .local v2, "timeoutTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 8005
    sub-long v4, v2, v0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyDispatchingDelay:J
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4602(J)J

    .line 8006
    const/4 v4, 0x1

    .line 8009
    .end local v0    # "now":J
    .end local v2    # "timeoutTime":J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isPhoneIdel()Z
    .locals 5

    .prologue
    .line 7755
    const/4 v1, 0x1

    .line 7757
    .local v1, "isPhoneIdel":Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 7758
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 7759
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7767
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 7762
    :catch_0
    move-exception v0

    .line 7763
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onProposedRotationChanged(ILandroid/content/Context;)V
    .locals 6
    .param p0, "rotation"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 7946
    sget v1, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->mRotationLand:I

    if-ne v1, v4, :cond_0

    if-eq p0, v5, :cond_1

    :cond_0
    sget v1, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->mRotationLand:I

    if-ne v1, v5, :cond_2

    if-ne p0, v4, :cond_2

    .line 7948
    :cond_1
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRotationLand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->mRotationLand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7950
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.CHANGE_GESTURE_BAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7951
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7953
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    if-eq p0, v4, :cond_3

    if-ne p0, v5, :cond_4

    .line 7954
    :cond_3
    sput p0, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->mRotationLand:I

    .line 7956
    :cond_4
    return-void
.end method

.method private static playHomeEffect(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 7
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7781
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    const/4 v5, 0x0

    const/4 v6, -0x3

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 7786
    .local v2, "soundEnable":I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7787
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7788
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7793
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v2    # "soundEnable":I
    :cond_0
    :goto_0
    return-void

    .line 7790
    :catch_0
    move-exception v1

    .line 7791
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static prepareGesturePanel(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7967
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_1

    .line 7968
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 7969
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7970
    const/4 v0, 0x1

    .line 7975
    :goto_0
    return v0

    .line 7973
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7975
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prepareRecentPanel(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 2
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7960
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "recentPanel"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7963
    .end local p0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    return-object p0

    .restart local p0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static preventHomeForBackGesture(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v0, 0x0

    .line 7770
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    if-eqz v1, :cond_0

    .line 7771
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    .line 7772
    const/4 v0, 0x1

    .line 7774
    :cond_0
    return v0
.end method

.method private static startVoiceActivity(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v10, 0x0

    .line 7981
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardLw()V

    .line 7982
    iget-object v11, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IStatusBar;->updateRecentPanel(Landroid/view/MotionEvent;)V

    .line 7983
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 7984
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "com.meizu.voiceassistant"

    const-string v1, "com.meizu.voiceassistant.MainActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7986
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7987
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v9, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7996
    const/4 v0, 0x1

    .end local v9    # "intent":Landroid/content/Intent;
    :goto_0
    return v0

    .line 7989
    :catch_0
    move-exception v8

    .line 7990
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move v0, v10

    .line 7991
    goto :goto_0

    .line 7992
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v8

    .line 7993
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v10

    .line 7994
    goto :goto_0
.end method

.method private static windowTypeToLayerLw(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 7742
    const/16 v0, 0x7f1

    if-ne p0, v0, :cond_0

    .line 7743
    const/4 v0, 0x3

    .line 7748
    :goto_0
    return v0

    .line 7744
    :cond_0
    const/16 v0, 0x7f0

    if-ne p0, v0, :cond_1

    .line 7745
    const/16 v0, 0xe

    goto :goto_0

    .line 7746
    :cond_1
    const/16 v0, 0x7f2

    if-ne p0, v0, :cond_2

    .line 7747
    const/16 v0, 0x1f

    goto :goto_0

    .line 7748
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method
