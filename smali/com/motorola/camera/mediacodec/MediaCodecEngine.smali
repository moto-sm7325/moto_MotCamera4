.class public Lcom/motorola/camera/mediacodec/MediaCodecEngine;
.super Ljava/lang/Object;
.source "MediaCodecEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;,
        Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;
    }
.end annotation


# static fields
.field public static final mTrackLock:Ljava/lang/Object;


# instance fields
.field public mAudioBufferSize:I

.field public mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mCamcorderProfile:Landroid/media/CamcorderProfile;

.field public mCodecSurface:Landroid/view/Surface;

.field public mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field public mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public final mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroidx/core/util/Pair<",
            "Landroid/media/Image;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mIsUsingVideoSurface:Z

.field public mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

.field public mMediaMuxer:Landroid/media/MediaMuxer;

.field public mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    iput-boolean p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    .line 5
    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-direct {p1, p2, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    return-void
.end method


# virtual methods
.method public final createAudioEncoder()Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aac-profile"

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    const-string v3, "sample-rate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    const-string v3, "channel-count"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p0
.end method

.method public final createMediaCodec(Lcom/motorola/camera/PreviewSize;)Landroid/media/MediaCodec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v1

    .line 3
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoFps(Landroid/util/Size;Z)Landroid/util/Range;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_0

    .line 6
    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    mul-int/2addr v1, v2

    goto :goto_0

    .line 7
    :cond_0
    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 8
    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 11
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 12
    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->HEVC_CODEC_VIDEO_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    .line 13
    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v2, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v5, p1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    .line 16
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 17
    invoke-virtual {v7, v6}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v6

    .line 18
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/VideoFormat;

    .line 19
    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v8, v2, :cond_1

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 20
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-ne v8, v5, :cond_1

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 21
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 22
    iget-boolean v2, v7, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    move v3, v4

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result v1

    if-eqz v3, :cond_4

    const-string/jumbo v2, "video/hevc"

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "video/avc"

    .line 24
    :goto_2
    iget-boolean v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    goto :goto_3

    :cond_5
    iget v5, p1, Lcom/motorola/camera/PreviewSize;->width:I

    .line 25
    :goto_3
    iget-boolean v6, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    goto :goto_4

    :cond_6
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 26
    :goto_4
    invoke-static {v2, v5, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 27
    invoke-static {v2}, Lcom/motorola/camera/mediacodec/CodecUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v5

    const-string v6, "bitrate"

    .line 28
    invoke-virtual {p1, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 30
    iget-boolean p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz p0, :cond_7

    const p0, 0x7f000789

    goto :goto_5

    :cond_7
    const/16 p0, 0x15

    :goto_5
    const-string v0, "color-format"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-range"

    .line 31
    invoke-virtual {p1, p0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p0, 0x4

    const-string v0, "color-standard"

    .line 32
    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "i-frame-interval"

    .line 33
    invoke-virtual {p1, p0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "bitrate-mode"

    .line 34
    invoke-virtual {p1, p0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz v3, :cond_8

    move p0, v4

    goto :goto_6

    :cond_8
    const/16 p0, 0x8

    :goto_6
    const-string v0, "profile"

    .line 35
    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    invoke-static {v2, v5}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo;)I

    move-result p0

    const-string v0, "level"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0, v0, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p0
.end method

.method public final processForAnalytics(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->getSessionSeqId()J

    move-result-wide v0

    .line 4
    new-instance v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    long-to-int v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;-><init>(ILandroid/os/Bundle;)V

    .line 5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v2, p1}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 7
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v6, "SEQ_ID"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 9
    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "CAPTURE_TRIGGER"

    .line 10
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .line 11
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "KEY_CODE"

    .line 13
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 14
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 16
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "ANALYTICS_SEQID"

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 18
    new-instance v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v1, v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    .line 19
    iget-wide v5, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    sget-object v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NANO_TO_MILLI:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v5, v7

    iput-wide v5, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    .line 20
    iget-wide v5, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v5, v7

    iput-wide v5, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    .line 21
    iget-wide v5, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v5, v7

    iput-wide v5, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    .line 22
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 23
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    .line 24
    new-instance v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-direct {v2, v0, v1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    .line 25
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 26
    iput-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    return-void
.end method

.method public final declared-synchronized startEngine()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 11
    iput-wide v2, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 22

    move-object/from16 v1, p0

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 2
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 4
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 8
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0xbb8

    const/4 v4, 0x5

    const/16 v6, 0xfa0

    const/4 v8, 0x4

    const/16 v9, 0x7d0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x4

    .line 10
    :try_start_2
    iget-boolean v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-nez v0, :cond_3

    .line 11
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    if-nez v0, :cond_2

    .line 12
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 13
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v15, Landroidx/core/util/Pair;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v15, v12, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v5, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 15
    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v5, "MediaCodecEngine"

    const-string v15, "Failed to notify EOS:%s"

    new-array v7, v11, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v10

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    .line 19
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 20
    :cond_4
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    .line 22
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 23
    :cond_5
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_7

    .line 24
    iget-object v5, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v5, v7, :cond_6

    .line 25
    iget-object v7, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v7, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 26
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v5, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 27
    :cond_6
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    .line 28
    :cond_7
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 30
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    .line 31
    :cond_8
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 33
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    .line 34
    :cond_9
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 36
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 37
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    :cond_a
    const-wide/16 v17, 0x0

    .line 38
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_b

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    .line 40
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 41
    :cond_b
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 42
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_c

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v5}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_c
    :goto_2
    const-wide/16 v19, 0x3e8

    cmp-long v0, v17, v19

    if-gez v0, :cond_f

    if-nez v2, :cond_d

    .line 44
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 45
    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v7, 0x7f12047e

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 47
    invoke-virtual {v0, v5, v7}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 48
    :cond_d
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-nez v0, :cond_e

    goto :goto_3

    .line 49
    :cond_e
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 50
    :goto_3
    iput-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    goto :goto_4

    .line 51
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->processForAnalytics(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 52
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    .line 53
    sget-object v5, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 54
    iget-object v5, v5, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 55
    new-instance v7, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v2, :cond_1e

    .line 56
    :try_start_4
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 57
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 58
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v5

    .line 59
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v5, :cond_14

    if-eq v5, v13, :cond_13

    if-eq v5, v8, :cond_11

    if-eq v5, v4, :cond_10

    goto :goto_5

    .line 60
    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v9, v13

    goto :goto_6

    .line 61
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    move-object v12, v9

    move v9, v11

    goto :goto_6

    .line 62
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v9, 0x2

    goto :goto_6

    :cond_14
    move-object v12, v9

    :goto_5
    move v9, v10

    :goto_6
    if-nez v12, :cond_15

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 64
    :cond_15
    new-instance v16, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v4, 0x1

    .line 65
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v20, 0x0

    move-object/from16 v3, v16

    move/from16 v5, v18

    move-object v6, v7

    const v7, 0x7f120130

    move/from16 v10, v18

    move v11, v14

    move-object/from16 v12, v17

    move-object v13, v15

    move/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 66
    sput-object v16, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_b

    :goto_7
    :try_start_5
    const-string v5, "MediaCodecEngine"

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MediaMuxer stop failed."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-nez v0, :cond_16

    goto :goto_8

    .line 69
    :cond_16
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 70
    :goto_8
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 71
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_17

    .line 72
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v5}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_17
    if-eqz v2, :cond_1e

    .line 73
    :try_start_6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 74
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 75
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v5

    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v5, :cond_1c

    if-eq v5, v13, :cond_1b

    if-eq v5, v8, :cond_19

    if-eq v5, v4, :cond_18

    goto :goto_9

    .line 77
    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v9, v13

    goto :goto_a

    .line 78
    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v12, v9

    move v9, v11

    goto :goto_a

    .line 79
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v9, 0x2

    goto :goto_a

    :cond_1c
    move-object v12, v9

    :goto_9
    move v9, v10

    :goto_a
    if-nez v12, :cond_1d

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 81
    :cond_1d
    new-instance v16, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v4, 0x1

    .line 82
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v20, 0x0

    move-object/from16 v3, v16

    move/from16 v5, v18

    move-object v6, v7

    const v7, 0x7f120130

    move/from16 v10, v18

    move v11, v14

    move-object/from16 v12, v17

    move-object v13, v15

    move/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 83
    sput-object v16, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 84
    :goto_b
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    .line 85
    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    :cond_1e
    monitor-exit p0

    return-void

    :goto_c
    if-eqz v2, :cond_25

    .line 87
    :try_start_7
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 88
    sget-object v15, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 89
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v5

    .line 90
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v5, :cond_23

    if-eq v5, v13, :cond_22

    if-eq v5, v8, :cond_20

    if-eq v5, v4, :cond_1f

    goto :goto_d

    .line 91
    :cond_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v9, v13

    goto :goto_e

    .line 92
    :cond_20
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    move-object v12, v9

    move v9, v11

    goto :goto_e

    .line 93
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v9, 0x2

    goto :goto_e

    :cond_23
    move-object v12, v9

    :goto_d
    move v9, v10

    :goto_e
    if-nez v12, :cond_24

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 95
    :cond_24
    new-instance v13, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v4, 0x1

    .line 96
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v16, 0x0

    move-object v3, v13

    move/from16 v5, v19

    move-object v6, v7

    const v7, 0x7f120130

    move/from16 v10, v19

    move v11, v14

    move-object/from16 v12, v18

    move-object v14, v13

    move-object/from16 v13, v17

    move-object/from16 v21, v14

    move/from16 v14, v20

    move-object/from16 p1, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    move-object/from16 v3, v21

    .line 97
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 98
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v0, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_f

    :cond_25
    move-object/from16 p1, v0

    .line 100
    :goto_f
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
