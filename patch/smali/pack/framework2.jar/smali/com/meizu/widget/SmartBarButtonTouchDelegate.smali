.class public Lcom/meizu/widget/SmartBarButtonTouchDelegate;
.super Ljava/lang/Object;
.source "SmartBarButtonTouchDelegate.java"


# static fields
.field private static final MAX_HIT_EDGE_COUNT:I = 0x14

.field private static final PADDING_DIRECTION:Ljava/lang/String; = "padding_direction"


# instance fields
.field private mDelegateView:Landroid/view/View;

.field private mDownPosition:I

.field private mLayoutPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "delegateView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mLayoutPosition:I

    .line 14
    iput v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDownPosition:I

    .line 20
    iput-object p1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 21
    return-void
.end method

.method private allowToAdjustPadding(Z)Z
    .locals 8
    .param p1, "inside"    # Z

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v6, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "valueArray":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->getSmartbarPadding()I

    move-result v2

    .line 96
    .local v2, "padding":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 98
    :try_start_0
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 103
    .local v3, "value":I
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-ne v3, v2, :cond_3

    .line 104
    if-eqz p1, :cond_1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    .line 112
    .end local v3    # "value":I
    :cond_0
    :goto_2
    return v5

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3    # "value":I
    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_0

    .line 112
    .end local v3    # "value":I
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    .line 96
    .restart local v3    # "value":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getHitEdgeCount(Z)I
    .locals 3
    .param p1, "inside"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smartbar_hit_edge_count_inside"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smartbar_hit_edge_count_outside"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSmartbarPadding()I
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smartbar_padding_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onHitEdge(Z)V
    .locals 7
    .param p1, "inside"    # Z

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0, v5}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->getHitEdgeCount(Z)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->getHitEdgeCount(Z)I

    move-result v3

    sub-int v0, v2, v3

    .line 117
    .local v0, "hitEdgeCount":I
    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-direct {p0, v5}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->allowToAdjustPadding(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SMARTBAR_PADDING_ADJUSTMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "padding_direction"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(IZ)V

    .line 124
    invoke-direct {p0, v4, v4}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(IZ)V

    .line 137
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 125
    :cond_0
    if-gez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v6, :cond_1

    invoke-direct {p0, v4}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->allowToAdjustPadding(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SMARTBAR_PADDING_ADJUSTMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "padding_direction"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(IZ)V

    .line 132
    invoke-direct {p0, v4, v4}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(IZ)V

    goto :goto_0

    .line 135
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->getHitEdgeCount(Z)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(IZ)V

    goto :goto_0
.end method

.method private saveHitEdgeCount(IZ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "inside"    # Z

    .prologue
    .line 59
    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_smartbar_hit_edge_count_inside"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_smartbar_hit_edge_count_outside"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 0
    .param p1, "layoutPosition"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mLayoutPosition:I

    .line 25
    return-void
.end method
