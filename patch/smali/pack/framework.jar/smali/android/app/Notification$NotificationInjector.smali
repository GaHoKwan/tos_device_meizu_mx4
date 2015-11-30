.class Landroid/app/Notification$NotificationInjector;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneInto(Landroid/app/Notification;Landroid/app/Notification;)V
    .locals 2
    .param p0, "des"    # Landroid/app/Notification;
    .param p1, "src"    # Landroid/app/Notification;

    .prologue
    .line 2615
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->notificationIcon:I

    iput v1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 2616
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2617
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    .line 2619
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->rightIcon:I

    iput v1, v0, Landroid/app/NotificationExt;->rightIcon:I

    .line 2620
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->internalApp:I

    iput v1, v0, Landroid/app/NotificationExt;->internalApp:I

    .line 2621
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    .line 2622
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    .line 2623
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->progressBarDrawable:I

    iput v1, v0, Landroid/app/NotificationExt;->progressBarDrawable:I

    .line 2625
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-boolean v1, v1, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    iput-boolean v1, v0, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    .line 2626
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressBarColor:I

    iput v1, v0, Landroid/app/NotificationExt;->circleProgressBarColor:I

    .line 2627
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressRimColor:I

    iput v1, v0, Landroid/app/NotificationExt;->circleProgressRimColor:I

    .line 2628
    return-void
.end method

.method static readFromParcel(Landroid/app/Notification;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2559
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/NotificationExt;->internalApp:I

    .line 2560
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 2561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    .line 2564
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2565
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, v1, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    .line 2567
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2568
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v1, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    .line 2570
    :cond_2
    return-void
.end method

.method static setLatestEventInfo(Landroid/app/Notification$Builder;Landroid/app/Notification;)V
    .locals 2
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 2597
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->notificationIcon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 2598
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2599
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setNotificationBitmapIcon(Landroid/graphics/Bitmap;)V

    .line 2601
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->rightIcon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setRightIcon(I)V

    .line 2602
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->internalApp:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setInternalApp(I)V

    .line 2603
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 2604
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setIconIntent(Landroid/app/PendingIntent;)V

    .line 2605
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->progressBarDrawable:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setProgressBarDrawable(I)V

    .line 2607
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-boolean v1, v1, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setCircleProgressBar(Z)V

    .line 2608
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressBarColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setCircleProgressBarColor(I)V

    .line 2609
    iget-object v0, p0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressRimColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setCircleProgressRimColor(I)V

    .line 2611
    return-void
.end method

.method static writeToParcel(Landroid/app/Notification;Landroid/os/Parcel;I)V
    .locals 3
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2573
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v0, v0, Landroid/app/NotificationExt;->internalApp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2574
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v0, v0, Landroid/app/NotificationExt;->notificationIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2575
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2576
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2581
    :goto_0
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 2582
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2587
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 2588
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2593
    :goto_2
    return-void

    .line 2579
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 2585
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2591
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
