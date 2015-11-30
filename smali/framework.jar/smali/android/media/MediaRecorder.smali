.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$HDRecordMode;,
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ENCODER_ERROR:I = -0x44f

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field public static final MEDIA_RECORDER_INFO_BITRATE_ADJUSTED:I = 0x382

.field public static final MEDIA_RECORDER_INFO_CAMERA_RELEASE:I = 0x7cf

.field public static final MEDIA_RECORDER_INFO_FPS_ADJUSTED:I = 0x381

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_RECORDED_SIZE:I = 0x37f

.field public static final MEDIA_RECORDER_INFO_SESSIONID:I = 0x380

.field public static final MEDIA_RECORDER_INFO_START_TIMER:I = 0x7ce

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_WRITE_SLOW:I = 0x383

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIsVideoRecord:Z

.field private mNativeContext:I

.field protected mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaRecorder;->mIsVideoRecord:Z

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 123
    new-instance v2, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 130
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    return-void

    .line 124
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v2, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0

    .line 127
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaRecorder;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 93
    iget v0, p0, Landroid/media/MediaRecorder;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object v0
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    .prologue
    .line 384
    const/16 v0, 0x8

    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private native native_reset()V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "mediarecorder_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x7cf

    .line 1124
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediarecorder_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRecorder;

    .line 1125
    .local v1, "mr":Landroid/media/MediaRecorder;
    if-nez v1, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v2, :cond_0

    .line 1130
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 1132
    const-string v2, "MediaRecorder"

    const-string v3, "MediaRecorder MEDIA_RECORDER_INFO_CAMERA_RELEASE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v2, v1, Landroid/media/MediaRecorder;->mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v2, :cond_0

    .line 1135
    iget-object v2, v1, Landroid/media/MediaRecorder;->mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v4, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1139
    :cond_2
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1140
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private native setParameter(Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public native getDuration()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public prepare()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 754
    iget-boolean v0, p0, Landroid/media/MediaRecorder;->mIsVideoRecord:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    :goto_0
    invoke-static {v0}, Landroid/app/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 754
    :cond_0
    const/16 v0, 0x1b

    goto :goto_0

    .line 762
    :cond_1
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "prepare>>>: check permission"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string/jumbo v0, "mobile"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 764
    .local v6, "binder":Landroid/os/IBinder;
    invoke-static {v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v9

    .line 765
    .local v9, "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 766
    .local v11, "uid":I
    iget-boolean v0, p0, Landroid/media/MediaRecorder;->mIsVideoRecord:Z

    if-eqz v0, :cond_2

    const-string/jumbo v10, "sub-permission.OPEN_CAMERA"

    .line 768
    .local v10, "permission":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_3

    :try_start_0
    invoke-interface {v9, v10, v11}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    const-string v0, "MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare<<<: user denied permission "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :catch_0
    move-exception v7

    .line 774
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "MediaRecorder"

    const-string v1, "CheckPermission failed in prepare with RemoteException, continues record."

    invoke-static {v0, v1, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 780
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 782
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 792
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 793
    return-void

    .line 766
    .end local v10    # "permission":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "sub-permission.RECORD_MIC"

    goto :goto_1

    .line 772
    .restart local v10    # "permission":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v0, "MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare<<<: user granted permission "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 784
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 786
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 787
    iget-object v1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    goto :goto_3

    .line 789
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native release()V
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 844
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 847
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 848
    return-void
.end method

.method public native resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAlbumTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 1212
    if-nez p1, :cond_0

    .line 1213
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setAlbumTag: Null album!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return-void

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media-param-tag-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setArtistTag: Null artist!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_0
    return-void

    .line 1205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media-param-tag-artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioChannels(I)V
    .locals 2
    .param p1, "numChannels"    # I

    .prologue
    .line 647
    if-gtz p1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public native setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    .prologue
    .line 663
    if-gtz p1, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .param p1, "samplingRate"    # I

    .prologue
    .line 632
    if-gtz p1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public native setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 694
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 705
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method public native setCamera(Landroid/hardware/Camera;)V
.end method

.method public setCaptureRate(D)V
    .locals 5
    .param p1, "fps"    # D

    .prologue
    .line 453
    const-string/jumbo v3, "time-lapse-enable=1"

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 455
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v0, v3, p1

    .line 456
    .local v0, "timeBetweenFrameCapture":D
    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 457
    .local v2, "timeBetweenFrameCaptureMs":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time-between-time-lapse-frame-capture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public setLocation(FF)V
    .locals 8
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    const v7, 0x461c4000    # 10000.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 502
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 503
    .local v0, "latitudex10000":I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 505
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 506
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 510
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 514
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public native setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .prologue
    .line 1194
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1195
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaRecorder$OnErrorListener;

    .prologue
    .line 906
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 907
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .prologue
    .line 1055
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1056
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 476
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 719
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 720
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 733
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 734
    return-void
.end method

.method public native setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setParametersExtra(Ljava/lang/String;)V
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .param p1, "sv"    # Landroid/view/Surface;

    .prologue
    .line 161
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 162
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 418
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 419
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 420
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 421
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 422
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 423
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3f8

    if-gt v0, v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 428
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 429
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 430
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 431
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setStereo3DType(Ljava/lang/String;)V
    .locals 1
    .param p1, "stereo3dType"    # Ljava/lang/String;

    .prologue
    .line 1223
    const-string/jumbo v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    const-string/jumbo v0, "video-param-stereo-mode=0"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1225
    :cond_0
    const-string v0, "frame_seq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    const-string/jumbo v0, "video-param-stereo-mode=1"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_1
    const-string/jumbo v0, "sidebyside"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    const-string/jumbo v0, "video-param-stereo-mode=2"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_2
    const-string/jumbo v0, "video-param-stereo-mode=3"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    .prologue
    .line 679
    if-gtz p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRecorder;->mIsVideoRecord:Z

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public native setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoSource(I)V
    .locals 2
    .param p1, "video_source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRecorder;->mIsVideoRecord:Z

    .line 400
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setVideoSource"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setVideoSource(I)V

    .line 402
    return-void
.end method

.method public setZoomValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1237
    if-gez p1, :cond_0

    .line 1238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom value is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video-param-camera-digizoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method public native start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
