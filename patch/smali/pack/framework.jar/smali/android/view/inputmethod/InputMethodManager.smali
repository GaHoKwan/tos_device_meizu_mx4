.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field public static final CONTROL_START_INITIAL:I = 0x100

.field public static final CONTROL_WINDOW_FIRST:I = 0x4

.field public static final CONTROL_WINDOW_IS_TEXT_EDITOR:I = 0x2

.field public static final CONTROL_WINDOW_VIEW_HAS_FOCUS:I = 0x1

.field static DEBUG:Z = false

.field public static final DISPATCH_HANDLED:I = 0x1

.field public static final DISPATCH_IN_PROGRESS:I = -0x1

.field public static final DISPATCH_NOT_HANDLED:I = 0x0

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field public static final ID_IME_INTL:Ljava/lang/String; = "com.cootek.smartinputv5/com.cootek.smartinput5.TouchPalIME"

.field public static final ID_IME_MEIZU:Ljava/lang/String; = "com.baidu.input_mz/com.meizu.input.MzInputService"

.field static final INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final MSG_SEND_CHAR:I = 0x64

.field static final MSG_SEND_INPUT_EVENT:I = 0x5

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final MSG_UNBIND:I = 0x3

.field static final MSG_VIS_CHANGED:I = 0x8

.field public static final MZ_FLAG_DISABLE_NEXT_ANIMATION:I = 0x1

.field private static final MZ_KEY_THEME:Ljava/lang/String; = "com.meizu.input.theme"

.field private static final MZ_VALUE_THEME_DARK:Ljava/lang/String; = "black"

.field private static final MZ_VALUE_THEME_LIGHT:Ljava/lang/String; = "white"

.field static final PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_FORCED_FROM_KEY:I = 0x4

.field public static final SHOW_IMPLICIT:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static sInstance:Landroid/view/inputmethod/InputMethodManager;


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurChannel:Landroid/view/InputChannel;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private mInputShown:Z

.field private mInputShownChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mMainLooper:Landroid/os/Looper;

.field private mMzInputTheme:Ljava/lang/String;

.field mNextServedView:Landroid/view/View;

.field final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateImeOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v3, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 282
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 328
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 329
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 340
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 352
    new-instance v2, Landroid/util/Pools$SimplePool;

    invoke-direct {v2, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 353
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 540
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v2, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 594
    new-instance v2, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v2, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2255
    const-string/jumbo v2, "white"

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    .line 2258
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShown:Z

    .line 2261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    .line 2264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShownChangeListenerList:Ljava/util/List;

    .line 597
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 598
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 599
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v2, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 600
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v2, p2, v3, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 603
    const-string v2, "1"

    const-string v3, "imm.debug"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 604
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    sput-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 605
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    .line 607
    return-void

    :cond_0
    move v0, v1

    .line 603
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodManager;ZZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputShown(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method private checkFocusNoStartInput(ZZ)Z
    .locals 7
    .param p1, "forceNewFocus"    # Z
    .param p2, "finishComposingText"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1438
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_0

    .line 1474
    :goto_0
    return v1

    .line 1442
    :cond_0
    const/4 v0, 0x0

    .line 1443
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1444
    :try_start_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v3, v5, :cond_1

    if-nez p1, :cond_1

    .line 1445
    monitor-exit v4

    goto :goto_0

    .line 1468
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1447
    :cond_1
    :try_start_1
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v5, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkFocus: view="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " next="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " forceNewFocus="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " package="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_2
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v3, :cond_4

    .line 1454
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1458
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1459
    monitor-exit v4

    goto :goto_0

    .line 1447
    :cond_3
    const-string v3, "<none>"

    goto :goto_1

    .line 1462
    :cond_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1464
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1465
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1466
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1467
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1468
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 1471
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_5
    move v1, v2

    .line 1474
    goto/16 :goto_0
.end method

.method private flushPendingEventsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 1911
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 1913
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1914
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1915
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1916
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1917
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1918
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1914
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1920
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "seq":I
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 5

    .prologue
    .line 615
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    monitor-enter v3

    .line 616
    :try_start_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_0

    .line 617
    const-string v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 618
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 619
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 621
    :cond_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v3

    return-object v2

    .line 622
    .end local v1    # "service":Lcom/android/internal/view/IInputMethodManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private mzCanCheckFocus(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2344
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 2345
    .local v0, "next":Landroid/view/View;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2347
    :cond_0
    const/4 v1, 0x1

    .line 2350
    :goto_0
    return v1

    .line 2349
    :cond_1
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yangrui@SDK unexcept view check focus. view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyInputConnectionFinished()V
    .locals 2

    .prologue
    .line 843
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 849
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 851
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 854
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1924
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 1925
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_0

    .line 1926
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .end local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$1;)V

    .line 1928
    .restart local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_0
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1929
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 1930
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 1931
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 1932
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 1933
    return-object v0
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 631
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 1937
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 1938
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1939
    return-void
.end method

.method static scheduleCheckFocusLocked(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1422
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 1425
    :cond_0
    return-void
.end method

.method private setInputShown(Z)V
    .locals 6
    .param p1, "shown"    # Z

    .prologue
    .line 2316
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2317
    :try_start_0
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShown:Z

    if-eq v2, p1, :cond_1

    .line 2318
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInputShownChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_0
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShown:Z

    .line 2320
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 2321
    .local v1, "l":Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;
    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;->onInputShownChanged(Z)V

    goto :goto_0

    .line 2324
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    return-void
.end method

.method private showInputMethodPickerLocked()V
    .locals 4

    .prologue
    .line 1949
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :goto_0
    return-void

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .prologue
    .line 2273
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2274
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2275
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2277
    :cond_0
    monitor-exit v1

    .line 2278
    return-void

    .line 2277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1431
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 1434
    :cond_0
    return-void
.end method

.method clearBindingLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 780
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 781
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 782
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 783
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 784
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 785
    return-void
.end method

.method clearConnectionLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 807
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 808
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    .line 810
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    .line 812
    :cond_0
    return-void
.end method

.method closeCurrentInput()V
    .locals 4

    .prologue
    .line 1479
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_0
    return-void

    .line 1480
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    .line 1799
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 1800
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_3

    .line 1801
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_0

    .line 1802
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v7, v0

    .line 1803
    .local v7, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1806
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 1807
    monitor-exit v10

    .line 1827
    .end local v7    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return v1

    .line 1811
    :cond_0
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISPATCH INPUT EVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v9

    .line 1815
    .local v9, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1817
    invoke-virtual {p0, v9}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    monitor-exit v10

    goto :goto_0

    .line 1826
    .end local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1821
    .restart local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v9}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1822
    .local v8, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1823
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 1824
    const/4 v1, -0x1

    monitor-exit v10

    goto :goto_0

    .line 1826
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1827
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 876
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 880
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 881
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 887
    :cond_2
    :try_start_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 888
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 890
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 894
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2137
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2139
    .local v0, "p":Landroid/util/Printer;
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 2140
    const-string v1, "enable"

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2141
    sput-boolean v4, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 2142
    sput-boolean v4, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2143
    sput-boolean v4, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    .line 2144
    const-string v1, "InputMethodManager DEBUG is turn on!"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2182
    :goto_0
    return-void

    .line 2146
    :cond_0
    const-string v1, "disable"

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2147
    sput-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 2148
    sput-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2149
    sput-boolean v3, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    .line 2150
    const-string v1, "InputMethodManager DEBUG is turn off!"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2155
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2169
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_2

    .line 2170
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2171
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2175
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2173
    :cond_2
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public enableInputWindowNextAnimation(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2302
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2303
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2304
    :try_start_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v3, :cond_0

    .line 2305
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2312
    :goto_0
    return-void

    .line 2307
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputMethodManager;->mzSetFlags(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method finishInputLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 818
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 819
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 820
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 821
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FINISH INPUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    .line 825
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->notifyInputConnectionFinished()V

    .line 832
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 833
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 835
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 837
    :cond_2
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method finishedInputEvent(IZZ)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .prologue
    .line 1873
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1874
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1875
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1876
    monitor-exit v3

    .line 1892
    :goto_0
    return-void

    .line 1879
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 1880
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1881
    const-wide/16 v4, 0x4

    const-string v2, "aq:imm"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1883
    if-eqz p3, :cond_1

    .line 1884
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    invoke-virtual {p0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    goto :goto_0

    .line 1887
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 1889
    .end local v0    # "index":I
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public focusIn(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1378
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1379
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1380
    monitor-exit v1

    .line 1381
    return-void

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method focusInLocked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1384
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1389
    const-string v0, "InputMethodManager"

    const-string v1, "Not IME target window, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_0
    return-void

    .line 1393
    :cond_1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 1394
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_0
.end method

.method public focusOut(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1402
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1403
    :try_start_0
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusOut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServedView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " winFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    .line 1417
    :cond_1
    monitor-exit v1

    .line 1418
    return-void

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .prologue
    .line 1976
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1978
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 1981
    :goto_0
    return-object v1

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1981
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1983
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 3
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .prologue
    .line 2126
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2128
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 2131
    :goto_0
    return-object v1

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2131
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2133
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMzInputThemeLight()Z
    .locals 2

    .prologue
    .line 2339
    const-string/jumbo v0, "white"

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2007
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 2008
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    .local v5, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :try_start_1
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v3

    .line 2014
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 2015
    .local v6, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 2016
    .local v0, "N":I
    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 2017
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2018
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2019
    .local v4, "o":Ljava/lang/Object;
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v7, :cond_3

    .line 2020
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2021
    const-string v7, "InputMethodManager"

    const-string v9, "IMI list already contains the same InputMethod."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2034
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "o":Ljava/lang/Object;
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v5

    .line 2024
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2026
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    if-eqz v6, :cond_2

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_2

    .line 2027
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2031
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_0
    move-exception v1

    .line 2032
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IME died: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2035
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1757
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethod request hide itself"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1759
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    return-void

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1070
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1092
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputMethodManager"

    const-string v2, "ap request hide soft input"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1094
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 1095
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :goto_0
    return v0

    .line 1099
    :cond_2
    :try_start_1
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "InputMethodManager"

    const-string v3, "Soft input will be hidden"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1101
    :catch_0
    move-exception v2

    .line 1103
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 687
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 1896
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 1897
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1900
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    .line 1908
    :goto_0
    return-void

    .line 1904
    :cond_0
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1905
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isAcceptingText()Z
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 773
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 762
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :goto_0
    return v0

    .line 748
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 749
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 750
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return v0
.end method

.method public isSoftInputShown()Z
    .locals 4

    .prologue
    .line 2290
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->mzIsShown()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    :goto_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShown:Z

    return v1

    .line 2291
    :catch_0
    move-exception v0

    .line 2292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1635
    const/4 v0, 0x0

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .locals 2
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "softInputMode"    # I
    .param p4, "first"    # Z
    .param p5, "windowFlags"    # I

    .prologue
    .line 1490
    const/4 v8, 0x0

    .line 1491
    .local v8, "forceNewFocus":Z
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1492
    :try_start_0
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " softInputMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " first="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags=#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    if-eqz v0, :cond_5

    .line 1497
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "InputMethodManager"

    const-string v2, "Has been inactive!  Starting fresh"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1499
    const/4 v8, 0x1

    .line 1509
    :cond_2
    :goto_0
    if-eqz p2, :cond_7

    move-object v0, p2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1510
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    const/4 v3, 0x0

    .line 1513
    .local v3, "controlFlags":I
    if-eqz p2, :cond_3

    .line 1514
    or-int/lit8 v3, v3, 0x1

    .line 1515
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1516
    or-int/lit8 v3, v3, 0x2

    .line 1519
    :cond_3
    if-eqz p4, :cond_4

    .line 1520
    or-int/lit8 v3, v3, 0x4

    .line 1523
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v8, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1528
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p3, p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1544
    :goto_2
    return-void

    .line 1500
    .end local v3    # "controlFlags":I
    :cond_5
    :try_start_1
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-gez v0, :cond_2

    .line 1506
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "InputMethodManager"

    const-string v2, "Hasn\'t Bind Sequence! Starting fresh"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    move-object v0, p1

    .line 1509
    goto :goto_1

    .line 1510
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1536
    .restart local v3    # "controlFlags":I
    :cond_8
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 1538
    :try_start_2
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "InputMethodManager"

    const-string v1, "Reporting focus gain, without startInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1543
    :goto_3
    :try_start_3
    monitor-exit v9

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1541
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public refreshImeWindowVisibility()V
    .locals 2

    .prologue
    .line 2237
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->refreshImeWindowVisibilityLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2241
    return-void

    .line 2238
    :catch_0
    move-exception v0

    .line 2239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 2
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .prologue
    .line 2282
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2283
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2284
    monitor-exit v1

    .line 2285
    return-void

    .line 2284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 861
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_0

    .line 862
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 864
    instance-of v0, p1, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_0

    .line 865
    check-cast p1, Landroid/view/inputmethod/BaseInputConnection;

    .end local p1    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p1}, Landroid/view/inputmethod/BaseInputConnection;->reportFinish()V

    .line 868
    :cond_0
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1170
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1174
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1175
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1176
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1178
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 1182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1181
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto :goto_0
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1691
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1695
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1696
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1697
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_3

    .line 1700
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 1708
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1703
    :cond_3
    :try_start_1
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP PRIVATE COMMAND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1708
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 4
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    const/4 v0, 0x1

    .line 1833
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1834
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 1835
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1836
    monitor-exit v3

    .line 1843
    :goto_0
    return-void

    .line 1839
    :cond_0
    if-ne v1, v0, :cond_1

    .line 1840
    .local v0, "handled":Z
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    goto :goto_0

    .line 1839
    .end local v0    # "handled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1840
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .locals 7
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 1847
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_2

    .line 1848
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v3, :cond_0

    .line 1849
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 1852
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1853
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 1854
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1855
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1856
    const-wide/16 v3, 0x4

    const-string v5, "aq:imm"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1859
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1860
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1861
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1862
    const/4 v3, -0x1

    .line 1868
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "seq":I
    :goto_0
    return v3

    .line 1865
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v2    # "seq":I
    :cond_1
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dropping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2116
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2118
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 2123
    return-void

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2122
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 1993
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1995
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 1998
    :goto_0
    return v1

    .line 1996
    :catch_0
    move-exception v0

    .line 1997
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1998
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2000
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFullscreenMode(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 705
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 696
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setInputChannelLocked(Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 788
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, p1, :cond_2

    .line 789
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 791
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 797
    :cond_1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 799
    :cond_2
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1721
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    return-void

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 1738
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMzInputThemeLight(Z)V
    .locals 2
    .param p1, "light"    # Z

    .prologue
    .line 2329
    if-eqz p1, :cond_0

    const-string/jumbo v0, "white"

    .line 2330
    .local v0, "theme":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2335
    :goto_1
    return-void

    .line 2329
    .end local v0    # "theme":Ljava/lang/String;
    :cond_0
    const-string v0, "black"

    goto :goto_0

    .line 2333
    .restart local v0    # "theme":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    .line 2334
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 2091
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2093
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2096
    :goto_0
    return v1

    .line 2094
    :catch_0
    move-exception v0

    .line 2095
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2096
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2098
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 1961
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1963
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1968
    return-void

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1967
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showInputMethodPicker()V
    .locals 2

    .prologue
    .line 1942
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1943
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 1944
    monitor-exit v1

    .line 1945
    return-void

    .line 1944
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    :goto_0
    return v0

    .line 1018
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1019
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InputMethodManager"

    const-string v2, "ap request show soft input."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1021
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1023
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1027
    :cond_3
    :try_start_1
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "InputMethodManager"

    const-string v3, "Soft input will be shown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_4
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v2

    .line 1032
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1779
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethod request show itself"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1781
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    return-void

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1038
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "showSoftInputUnchecked."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 679
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startGettingWindowFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 1548
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1549
    :try_start_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 1550
    monitor-exit v1

    .line 1551
    return-void

    .line 1550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startInputInner(Landroid/os/IBinder;III)Z
    .locals 17
    .param p1, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p2, "controlFlags"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .prologue
    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1191
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1194
    .local v14, "view":Landroid/view/View;
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    if-nez v14, :cond_2

    .line 1196
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InputMethodManager"

    const-string v3, "ABORT input: no served view!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    .line 1355
    :goto_0
    return v1

    .line 1199
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-virtual {v14}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v13

    .line 1206
    .local v13, "vh":Landroid/os/Handler;
    if-nez v13, :cond_4

    .line 1211
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "InputMethodManager"

    const-string v2, "ABORT input: no handler for view! Close current input."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1213
    const/4 v1, 0x0

    goto :goto_0

    .line 1199
    .end local v13    # "vh":Landroid/os/Handler;
    .end local v14    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1215
    .restart local v13    # "vh":Landroid/os/Handler;
    .restart local v14    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 1218
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "InputMethodManager"

    const-string v2, "Starting input: reschedule to view thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_5
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1225
    const/4 v1, 0x0

    goto :goto_0

    .line 1231
    :cond_6
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1232
    .local v7, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1233
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1234
    invoke-virtual {v14, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1242
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 1243
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, v7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1246
    :cond_7
    iget-object v1, v7, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v1, v2}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    const-string v2, "com.meizu.input.theme"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1267
    :cond_8
    :goto_1
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input: tba="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1272
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v1, :cond_e

    .line 1274
    :cond_a
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input: finished by someone else (view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_b
    const/4 v1, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 1353
    :catchall_1
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1249
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1251
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    const-string v2, "com.meizu.input.theme"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v1}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto/16 :goto_1

    .line 1255
    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1256
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_8

    .line 1257
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->mzGetMeizuFlags()I

    move-result v11

    .line 1258
    .local v11, "meizuFlags":I
    and-int/lit16 v1, v11, 0x800

    if-nez v1, :cond_8

    .line 1259
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    const-string v2, "com.meizu.input.theme"

    const-string v3, "black"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v1}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto/16 :goto_1

    .line 1282
    .end local v11    # "meizuFlags":I
    .end local v15    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_f

    .line 1283
    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    .line 1287
    :cond_f
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1288
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1290
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->notifyInputConnectionFinished()V

    .line 1291
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1293
    if-eqz v10, :cond_14

    .line 1294
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1295
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1296
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1297
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1299
    new-instance v8, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v8, v1, v10, v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    .line 1303
    .local v8, "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_10

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    .line 1306
    :cond_10
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1309
    :try_start_4
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START INPUT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tba="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controlFlags=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    if-eqz p1, :cond_15

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v12

    .line 1321
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    :goto_3
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input: Bind result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_11
    if-eqz v12, :cond_19

    .line 1323
    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 1324
    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 1325
    iget v1, v12, Lcom/android/internal/view/InputBindResult;->sequence:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1326
    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1327
    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1344
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_13

    .line 1346
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1353
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_13
    :goto_5
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1301
    .end local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    goto/16 :goto_2

    .line 1318
    :cond_15
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move/from16 v0, p2

    invoke-interface {v1, v2, v8, v7, v0}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v12

    .restart local v12    # "res":Lcom/android/internal/view/InputBindResult;
    goto :goto_3

    .line 1329
    :cond_16
    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_17

    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v1, v2, :cond_17

    .line 1330
    iget-object v1, v12, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1332
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_12

    .line 1334
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "InputMethodManager"

    const-string v2, "ABORT input: no input method!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1335
    :cond_18
    const/4 v1, 0x1

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 1340
    :cond_19
    const/4 v1, 0x1

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1341
    const-string v1, "InputMethodManager"

    const-string/jumbo v2, "startInputInner : InputBindResult == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 1350
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_0
    move-exception v9

    .line 1351
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1347
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 2048
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2050
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2053
    :goto_0
    return v1

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2053
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2055
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .prologue
    .line 2069
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2071
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2074
    :goto_0
    return v1

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2076
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 1150
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I

    .prologue
    .line 1122
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1123
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1124
    :cond_0
    monitor-exit v1

    .line 1133
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1128
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1129
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1647
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1672
    :goto_0
    return-void

    .line 1651
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1652
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1653
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_3

    .line 1656
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 1671
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1659
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1660
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1661
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "InputMethodManager"

    const-string/jumbo v3, "updateCursor"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    :cond_4
    :try_start_2
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURSOR CHANGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 1666
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1671
    :cond_6
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 903
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 908
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 909
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 911
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 914
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 916
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 920
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    :goto_0
    return-void

    .line 1567
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1568
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1569
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_3

    .line 1572
    :cond_2
    monitor-exit v8

    goto :goto_0

    .line 1597
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1575
    :cond_3
    :try_start_1
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_4

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, p3, :cond_4

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_4

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    if-eq v0, p5, :cond_7

    .line 1578
    :cond_4
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "InputMethodManager"

    const-string/jumbo v3, "updateSelection"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1581
    :cond_5
    :try_start_2
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECTION CHANGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_6
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1583
    .local v1, "oldSelStart":I
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1587
    .local v2, "oldSelEnd":I
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1588
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1589
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1590
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1591
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1597
    .end local v1    # "oldSelStart":I
    .end local v2    # "oldSelEnd":I
    :cond_7
    :goto_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v7

    .line 1594
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public viewClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1609
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->mzCanCheckFocus(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1628
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    .line 1614
    .local v1, "focusChanged":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1615
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1616
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_4

    .line 1619
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 1627
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1613
    .end local v1    # "focusChanged":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1622
    .restart local v1    # "focusChanged":Z
    :cond_4
    :try_start_1
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewClicked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_5
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1627
    :goto_2
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "appWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1364
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1365
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1366
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1368
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1370
    :cond_0
    monitor-exit v1

    .line 1371
    return-void

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method