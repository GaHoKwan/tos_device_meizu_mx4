.class public Lcom/meizu/widget/KeyBackButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "KeyBackButton.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/meizu/widget/LayoutPositionState;


# instance fields
.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDownTime:J

.field private mSupportsLongpress:Z

.field private mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0x1010499

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/widget/KeyBackButton;->mSupportsLongpress:Z

    .line 31
    new-instance v3, Lcom/meizu/widget/KeyBackButton$1;

    invoke-direct {v3, p0}, Lcom/meizu/widget/KeyBackButton$1;-><init>(Lcom/meizu/widget/KeyBackButton;)V

    iput-object v3, p0, Lcom/meizu/widget/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    .line 56
    sget-object v3, Lcom/android/internal/R$styleable;->KeyBackButton:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->isThemeLight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    sget-object v3, Lcom/android/internal/R$styleable;->ImageView:[I

    const v4, 0x10102d8

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    .local v2, "defaultDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    if-eqz v2, :cond_0

    .line 67
    iput-object v2, p0, Lcom/meizu/widget/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    .end local v1    # "b":Landroid/content/res/TypedArray;
    .end local v2    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/meizu/widget/KeyBackButton;->init(Landroid/content/Context;)V

    .line 74
    new-instance v3, Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-direct {v3, p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/meizu/widget/KeyBackButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/KeyBackButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/KeyBackButton;

    .prologue
    .line 21
    iget v0, p0, Lcom/meizu/widget/KeyBackButton;->mCode:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0, v1}, Lcom/meizu/widget/KeyBackButton;->setClickable(Z)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/meizu/widget/KeyBackButton;->setFocusable(Z)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/meizu/widget/KeyBackButton;->setEnabled(Z)V

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/widget/KeyBackButton;->mCode:I

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/KeyBackButton;->mTouchSlop:I

    .line 85
    iput-boolean v1, p0, Lcom/meizu/widget/KeyBackButton;->mSupportsLongpress:Z

    .line 86
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 97
    iget-object v6, p0, Lcom/meizu/widget/KeyBackButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v6, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 102
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return v5

    .line 105
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/widget/KeyBackButton;->mDownTime:J

    .line 106
    invoke-virtual {p0, v5}, Lcom/meizu/widget/KeyBackButton;->setPressed(Z)V

    .line 107
    iget v6, p0, Lcom/meizu/widget/KeyBackButton;->mCode:I

    if-eqz v6, :cond_1

    .line 108
    iget-wide v6, p0, Lcom/meizu/widget/KeyBackButton;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/meizu/widget/KeyBackButton;->sendEvent(IIJ)V

    .line 113
    :goto_1
    iget-boolean v4, p0, Lcom/meizu/widget/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/meizu/widget/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v4, p0, Lcom/meizu/widget/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/meizu/widget/KeyBackButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0, v5}, Lcom/meizu/widget/KeyBackButton;->performHapticFeedback(I)Z

    goto :goto_1

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 120
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 121
    .local v3, "y":I
    iget v6, p0, Lcom/meizu/widget/KeyBackButton;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/meizu/widget/KeyBackButton;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/KeyBackButton;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/meizu/widget/KeyBackButton;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/meizu/widget/KeyBackButton;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/KeyBackButton;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->setPressed(Z)V

    goto :goto_0

    .line 127
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->setPressed(Z)V

    .line 128
    iget v4, p0, Lcom/meizu/widget/KeyBackButton;->mCode:I

    if-eqz v4, :cond_3

    .line 129
    invoke-virtual {p0, v5, v7}, Lcom/meizu/widget/KeyBackButton;->sendEvent(II)V

    .line 131
    :cond_3
    iget-boolean v4, p0, Lcom/meizu/widget/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/meizu/widget/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/widget/KeyBackButton;->isPressed()Z

    move-result v1

    .line 137
    .local v1, "doIt":Z
    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->setPressed(Z)V

    .line 138
    iget v6, p0, Lcom/meizu/widget/KeyBackButton;->mCode:I

    if-eqz v6, :cond_6

    .line 139
    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {p0, v5, v4}, Lcom/meizu/widget/KeyBackButton;->sendEvent(II)V

    .line 141
    invoke-virtual {p0, v5}, Lcom/meizu/widget/KeyBackButton;->sendAccessibilityEvent(I)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->playSoundEffect(I)V

    .line 152
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/meizu/widget/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/meizu/widget/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/meizu/widget/KeyBackButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 144
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/meizu/widget/KeyBackButton;->sendEvent(II)V

    goto :goto_2

    .line 148
    :cond_6
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/meizu/widget/KeyBackButton;->performClick()Z

    goto :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/widget/KeyBackButton;->sendEvent(IIJ)V

    .line 163
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .prologue
    .line 166
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    .line 168
    .local v7, "repeatCount":I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/meizu/widget/KeyBackButton;->mDownTime:J

    iget v6, p0, Lcom/meizu/widget/KeyBackButton;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v11, p2, 0x8

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 172
    .local v0, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "KeyBackButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " injection failed!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void

    .line 166
    .end local v0    # "ev":Landroid/view/KeyEvent;
    .end local v7    # "repeatCount":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/meizu/widget/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-virtual {p0, p1}, Lcom/meizu/widget/KeyBackButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 1
    .param p1, "layoutPosition"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/meizu/widget/KeyBackButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->setLayoutPosition(I)V

    .line 188
    return-void
.end method
