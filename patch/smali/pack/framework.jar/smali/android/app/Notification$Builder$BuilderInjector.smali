.class Landroid/app/Notification$Builder$BuilderInjector;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyStandardTemplate(Landroid/app/Notification$Builder;Landroid/app/NotificationBuilderExt;Landroid/widget/RemoteViews;)V
    .locals 6
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "builderExt"    # Landroid/app/NotificationBuilderExt;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x1020006

    const/16 v4, 0x8

    const v3, 0x102033c

    const v2, 0x1020259

    const/4 v1, 0x0

    .line 2012
    # getter for: Landroid/app/Notification$Builder;->mSmallIcon:I
    invoke-static {p0}, Landroid/app/Notification$Builder;->access$200(Landroid/app/Notification$Builder;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2013
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2016
    iget-object v0, p1, Landroid/app/NotificationBuilderExt;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2017
    iget-object v0, p1, Landroid/app/NotificationBuilderExt;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2018
    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2024
    :goto_0
    iget v0, p1, Landroid/app/NotificationBuilderExt;->mRightIcon:I

    if-eqz v0, :cond_3

    .line 2025
    iget v0, p1, Landroid/app/NotificationBuilderExt;->mRightIcon:I

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2026
    const v0, 0x1020339

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2027
    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2038
    :goto_1
    iget-boolean v0, p1, Landroid/app/NotificationBuilderExt;->mIsCircleProgressBar:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/NotificationBuilderExt;->mCircleProgressBarColor:I

    if-eqz v0, :cond_0

    .line 2039
    const v0, 0x102000d

    const-string/jumbo v1, "setBarColor"

    iget v2, p1, Landroid/app/NotificationBuilderExt;->mCircleProgressBarColor:I

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2043
    :cond_0
    iget-boolean v0, p1, Landroid/app/NotificationBuilderExt;->mIsCircleProgressBar:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/app/NotificationBuilderExt;->mCircleProgressRimColor:I

    if-eqz v0, :cond_1

    .line 2044
    const v0, 0x102000d

    const-string/jumbo v1, "setRimColor"

    iget v2, p1, Landroid/app/NotificationBuilderExt;->mCircleProgressRimColor:I

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2046
    :cond_1
    return-void

    .line 2020
    :cond_2
    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 2029
    :cond_3
    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method static buildUnstyled(Landroid/app/Notification;Landroid/app/NotificationBuilderExt;)V
    .locals 2
    .param p0, "dst"    # Landroid/app/Notification;
    .param p1, "builder"    # Landroid/app/NotificationBuilderExt;

    .prologue
    .line 2050
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, p1, Landroid/app/NotificationBuilderExt;->mInternalApp:I

    iput v1, v0, Landroid/app/NotificationExt;->internalApp:I

    .line 2051
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, p1, Landroid/app/NotificationBuilderExt;->mNotificationIcon:I

    iput v1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 2052
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/NotificationBuilderExt;->mNotificationBitmapIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    .line 2053
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/NotificationBuilderExt;->mSubTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    .line 2054
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/NotificationBuilderExt;->mIconIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    .line 2055
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, p1, Landroid/app/NotificationBuilderExt;->mProgressBarDrawable:I

    iput v1, v0, Landroid/app/NotificationExt;->progressBarDrawable:I

    .line 2057
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-boolean v1, p1, Landroid/app/NotificationBuilderExt;->mIsCircleProgressBar:Z

    iput-boolean v1, v0, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    .line 2058
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, p1, Landroid/app/NotificationBuilderExt;->mCircleProgressBarColor:I

    iput v1, v0, Landroid/app/NotificationExt;->circleProgressBarColor:I

    .line 2059
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, p1, Landroid/app/NotificationBuilderExt;->mCircleProgressRimColor:I

    iput v1, v0, Landroid/app/NotificationExt;->circleProgressRimColor:I

    .line 2060
    return-void
.end method

.method static generateActionButton(Landroid/app/Notification$Action;ZLandroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6
    .param p0, "action"    # Landroid/app/Notification$Action;
    .param p1, "tombstone"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const v1, 0x102032c

    .line 2071
    const/4 v0, 0x0

    .line 2072
    .local v0, "button":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2073
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "button":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    const v2, 0x1090077

    :goto_0
    invoke-direct {v0, v3, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2076
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    iget v2, p0, Landroid/app/Notification$Action;->icon:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2090
    :goto_1
    return-object v0

    .line 2073
    .end local v0    # "button":Landroid/widget/RemoteViews;
    :cond_1
    const v2, 0x1090076

    goto :goto_0

    .line 2077
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    :cond_2
    iget v2, p0, Landroid/app/Notification$Action;->icon:I

    if-nez v2, :cond_4

    .line 2078
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "button":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_3

    const v2, 0x10900ac

    :goto_2
    invoke-direct {v0, v3, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2081
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 2078
    .end local v0    # "button":Landroid/widget/RemoteViews;
    :cond_3
    const v2, 0x10900ab

    goto :goto_2

    .line 2083
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    :cond_4
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "button":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_5

    const v2, 0x10900b3

    :goto_3
    invoke-direct {v0, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2086
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    iget v2, p0, Landroid/app/Notification$Action;->icon:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 2087
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 2083
    .end local v0    # "button":Landroid/widget/RemoteViews;
    :cond_5
    const v2, 0x10900b1

    goto :goto_3
.end method

.method static makeContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 2
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isCircleProgressBar"    # Z

    .prologue
    .line 2063
    if-eqz p1, :cond_0

    .line 2064
    const v0, 0x10900b6

    const/4 v1, 0x0

    # invokes: Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    invoke-static {p0, v0, v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2066
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x10900b5

    const/4 v1, 0x1

    # invokes: Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    invoke-static {p0, v0, v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method
