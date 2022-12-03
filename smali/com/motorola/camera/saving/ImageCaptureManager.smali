.class public Lcom/motorola/camera/saving/ImageCaptureManager;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;,
        Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;,
        Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;,
        Lcom/motorola/camera/saving/ImageCaptureManager$SetResultListener;,
        Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;,
        Lcom/motorola/camera/saving/ImageCaptureManager$OnImageAvailable;,
        Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;,
        Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;
    }
.end annotation


# instance fields
.field public final mCaptureHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/saving/CaptureHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCaptureListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final mCaptureRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            "Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mImageReceivedListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;

.field public mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

.field public mIsSaveQueueFull:Z

.field public mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

.field public final mPendingUriMediaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            "Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;",
            ">;"
        }
    .end annotation
.end field

.field public mQcfaCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;

.field public mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

.field public mReprocWriterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnprocessedImages:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mZslCaptureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/saving/CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mZslResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    .line 8
    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$1;-><init>(Lcom/motorola/camera/saving/ImageCaptureManager;I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    .line 9
    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$2;-><init>(Lcom/motorola/camera/saving/ImageCaptureManager;I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 13
    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;

    .line 14
    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    .line 15
    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageCaptureManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/ImageCaptureManager$1;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    .line 25
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    .line 26
    new-instance p1, Lcom/motorola/camera/saving/ImageCaptureManager$1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/saving/ImageCaptureManager$1;-><init>(Lcom/motorola/camera/saving/ImageCaptureManager;I)V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    .line 27
    new-instance p1, Lcom/motorola/camera/saving/ImageCaptureManager$2;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/saving/ImageCaptureManager$2;-><init>(Lcom/motorola/camera/saving/ImageCaptureManager;I)V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Ljava/util/Map;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 31
    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;

    .line 32
    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    .line 33
    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    .line 34
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ImageCaptureManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static access$400(Ljava/lang/String;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 13

    .line 1
    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_0

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_JPEG_REQUEST:Lcom/motorola/camera/CameraKpi$KPI;

    .line 7
    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 8
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureSeqId(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 12
    iget-object v4, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 13
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/saving/CaptureHolder;

    .line 14
    iget-object v9, v8, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v9, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v8, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v9, v9, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-eq v9, v3, :cond_3

    iget-wide v9, v8, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    .line 15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    :cond_3
    iget-object v9, v8, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v9, :cond_2

    move-object v6, v8

    :cond_4
    if-eqz v6, :cond_1

    :cond_5
    if-eqz v6, :cond_6

    .line 16
    invoke-static {v6, p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_7

    .line 18
    new-instance p0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    :cond_7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;

    if-eqz p0, :cond_8

    .line 22
    check-cast p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;

    sget p1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v5}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReceivedListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 25
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    const/4 v1, 0x1

    .line 11
    :try_start_0
    invoke-static {p0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized captureRecordSize()I
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 7

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v1, :cond_2

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_1
    monitor-exit v0

    return-void

    .line 3
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    monitor-exit v0

    return-void

    .line 5
    :cond_3
    :try_start_3
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v2, :cond_4

    .line 6
    iput-object p0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_4
    :try_start_4
    sget-object v2, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v2, v3, :cond_6

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 10
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 11
    iget-boolean v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 12
    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    goto :goto_0

    .line 13
    :cond_5
    iput-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    .line 14
    :goto_0
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    invoke-static {v3, v4}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 15
    iput-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 16
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    goto :goto_1

    :cond_6
    move-object v2, v1

    .line 17
    :goto_1
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 18
    iget-object v4, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 19
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_7

    .line 24
    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;

    invoke-direct {v5, v3, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map$Entry;Lcom/motorola/camera/saving/CaptureHolder;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 25
    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-wide v5, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-interface {v3, v4, v5, v6}, Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;->onJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;J)V

    goto :goto_2

    .line 26
    :cond_8
    iget-object p0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq p0, v1, :cond_9

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_STORE_ALL_JPEGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 27
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 29
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 30
    :cond_9
    iget-object p0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v2, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    :cond_a
    monitor-exit v0

    return-void

    .line 32
    :cond_b
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No CaptureHolder found in map for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    const-string v1, "ImageCaptureManager"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForProcessing -> no record matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    .line 35
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 36
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_3

    .line 38
    :cond_c
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 39
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static checkSaveQueueIsFull(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/saving/MemoryListener;)Z

    move-result p0

    .line 2
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    if-eqz p0, :cond_0

    .line 6
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 10
    :goto_0
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 11
    iget-boolean p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    return p0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static clearSaveQueueFull()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    return-void
.end method

.method public static declared-synchronized clearZslCaptureMap()V
    .locals 4

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCaptureHolderForSeqId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/saving/CaptureHolder;
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    .line 4
    iget-object v4, v3, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 5
    monitor-exit v0

    return-object v3

    :cond_2
    const/4 p0, 0x0

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCaptureRecord"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCaptureSeqId(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 6

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifSequence:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifSequence:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p1, p0}, Lcom/motorola/camera/IqConfigManager;->getLuxStdForCaptureResult(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Float;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add extra metadata for mcf capture result, exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageCaptureManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageAvailableListener(Ljava/lang/String;)Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$OnImageAvailable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$OnImageAvailable;-><init>(Ljava/lang/String;Lcom/motorola/camera/saving/ImageCaptureManager$1;)V

    return-object v0
.end method

.method public static declared-synchronized getSequenceListForRoot(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 4
    iget v4, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v5, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v4, v5, :cond_0

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 7

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureRequest tag is null!"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    monitor-exit v0

    return v3

    .line 5
    :cond_0
    :try_start_1
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_1

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureResult timestamp is null"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    monitor-exit v0

    return v3

    :cond_1
    const/4 v5, 0x1

    .line 8
    :try_start_2
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v6, :cond_2

    iget-boolean v6, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-eqz v6, :cond_2

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :try_start_4
    invoke-static {p0, p1, p2, v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    .line 12
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v5

    :catchall_0
    move-exception p0

    .line 13
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 14
    :cond_2
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_3

    const-string p0, "ImageCaptureManager"

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No CaptureHolders for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 16
    monitor-exit v0

    return v3

    .line 17
    :cond_3
    :try_start_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_4

    .line 18
    monitor-exit v0

    return v5

    .line 19
    :cond_4
    :try_start_8
    iget-boolean p1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez p1, :cond_7

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeTooLong()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    iget-boolean p1, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-eqz p1, :cond_7

    iget-object p1, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne p1, v6, :cond_7

    .line 22
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->playCaptureSound()V

    goto :goto_0

    .line 23
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    :cond_6
    iget-boolean p1, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-eqz p1, :cond_7

    iget-object p1, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne p1, v6, :cond_7

    .line 25
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->playCaptureSound()V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    .line 27
    iget-object v6, v4, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v6, :cond_8

    .line 28
    iput-object p2, v4, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object p1, v4

    :cond_9
    if-nez p1, :cond_a

    const-string p0, "ImageCaptureManager"

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No CaptureHolder matching seqId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 30
    monitor-exit v0

    return v3

    .line 31
    :cond_a
    :try_start_9
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;

    if-eqz p0, :cond_b

    .line 32
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;

    .line 33
    iput-boolean v5, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mCaptureCompleted:Z

    .line 34
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->checkComplete()V

    .line 35
    :cond_b
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 36
    monitor-exit v0

    return v5

    :catch_0
    :try_start_a
    const-string p0, "ImageCaptureManager"

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No capture record found for timestamp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 38
    monitor-exit v0

    return v5

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z
    .locals 12

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureRequest tag is null!"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return v3

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-static {p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v4, 0x1

    .line 7
    :try_start_2
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v5
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-eqz v6, :cond_2

    .line 9
    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v0

    return v4

    .line 10
    :cond_2
    :try_start_4
    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v6, :cond_3

    .line 11
    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifSequence:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v8, v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v6, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_4

    const-string p0, "ImageCaptureManager"

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No capture holders for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    monitor-exit v0

    return v3

    .line 15
    :cond_4
    :try_start_5
    iget-boolean v7, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez v7, :cond_6

    .line 16
    iget-boolean v7, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne v7, v8, :cond_5

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeTooLong()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v8, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v7, v8, :cond_5

    .line 18
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->playCaptureSound()V

    .line 19
    :cond_5
    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    sub-long/2addr v8, v10

    const-string v10, "SHUTTER_CB_TIME"

    .line 21
    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    .line 23
    :cond_6
    new-instance v7, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-direct {v7}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    .line 24
    iput-object v2, v7, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 25
    iput-object p1, v7, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 26
    iput-object p0, v7, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    .line 27
    iput-wide p2, v7, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v7, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    .line 29
    iget-object p0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p0, v7, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 30
    iget-boolean p0, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p0, :cond_7

    .line 31
    iput-boolean v4, v7, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    .line 32
    :cond_7
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 35
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 36
    invoke-static {v7, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 37
    :cond_8
    monitor-exit v0

    return v4

    :catch_0
    :try_start_6
    const-string p0, "ImageCaptureManager"

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No capture record found for timestamp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 39
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    new-instance v2, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-direct {v2}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    .line 3
    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    .line 5
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 7
    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 8
    :cond_0
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    iget-wide v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v3, "REVIEW_REQUIRED"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "REVIEW_ACCEPT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 3
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v5, "REVIEW_ACCEPT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 4
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x1

    if-ne v5, v15, :cond_1

    .line 5
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/CaptureHolder;

    .line 6
    iget-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5, v15}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    .line 7
    :goto_0
    iput-boolean v15, v5, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto/16 :goto_6

    .line 8
    :cond_1
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v15, :cond_9

    .line 9
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isDepthCaptureInstance()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v5, :cond_2

    .line 11
    sget-object v8, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v5, v8}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mcf/McfDepthRender;

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_6

    .line 12
    iget-object v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/saving/CaptureHolder;

    .line 13
    iget-object v11, v10, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v11, v11, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v11, v11, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    .line 14
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfDepthRender;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v12

    iget v12, v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    if-ne v11, v12, :cond_3

    move-object v9, v10

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v10}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 16
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    new-array v12, v12, [B

    .line 17
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 18
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 19
    iget-object v12, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    sget-object v13, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_3
    iput-boolean v15, v10, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_2

    .line 21
    :cond_4
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/motorola/camera/saving/CaptureHolder;

    .line 22
    iget-object v8, v9, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne v8, v0, :cond_5

    .line 23
    iput-boolean v15, v9, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_4

    :cond_6
    move-object v9, v7

    :cond_7
    :goto_4
    if-nez v9, :cond_8

    .line 24
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/CaptureHolder;

    .line 25
    iget-object v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/saving/CaptureHolder;

    iput-boolean v15, v8, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_5

    :cond_8
    move-object v5, v9

    :goto_5
    move-object v8, v7

    goto :goto_6

    :cond_9
    move-object v5, v7

    move-object v8, v5

    :goto_6
    if-eqz v5, :cond_a

    .line 26
    invoke-virtual {v5}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v9

    .line 27
    sget-object v10, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    .line 28
    iget-object v5, v5, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v10}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_b

    .line 29
    iget-object v10, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v11, v5

    const-string v5, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v10, v5, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_7

    :cond_a
    move-object v9, v7

    .line 30
    :cond_b
    :goto_7
    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v5, :cond_c

    .line 31
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 33
    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v9

    :cond_c
    if-nez v9, :cond_d

    .line 35
    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v5, :cond_d

    if-nez v8, :cond_d

    return-void

    .line 36
    :cond_d
    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v5, :cond_18

    if-nez v9, :cond_15

    if-eqz v8, :cond_e

    move v5, v15

    goto/16 :goto_a

    :cond_e
    const-string v0, "ImageCaptureManager"

    const-string v2, "BG-Process Job is cancelled.Both Data and raw data are empty for sequence ID ="

    .line 37
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Capture Record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    .line 39
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 41
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 43
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v11, 0x0

    const v12, 0x7f120084

    const/4 v2, 0x1

    const/16 v16, 0x3

    const/4 v14, 0x2

    .line 44
    invoke-static/range {v16 .. v16}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v3

    const/16 v4, 0x7d0

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_12

    const/4 v5, 0x3

    if-eq v3, v5, :cond_13

    const/4 v5, 0x4

    if-eq v3, v5, :cond_10

    const/4 v4, 0x5

    if-eq v3, v4, :cond_f

    goto :goto_9

    :cond_f
    const/16 v3, 0xbb8

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_9

    .line 47
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    .line 48
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    move-object v7, v4

    :cond_13
    :goto_9
    if-nez v7, :cond_14

    const/16 v3, 0xfa0

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 50
    :cond_14
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v9, 0x1

    .line 51
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v20, 0x0

    move-object v8, v3

    move v10, v2

    move v5, v15

    move v15, v2

    move/from16 v19, v5

    invoke-direct/range {v8 .. v20}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 52
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v1, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_15
    move v5, v15

    move-object v8, v9

    .line 55
    :goto_a
    iput-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    .line 56
    iput-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    .line 57
    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v2, v8, v1, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 58
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 59
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 60
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_17

    .line 61
    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/gms/common/api/internal/zaz;

    const-string v3, "ERROR_CASE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/zaz;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_b

    .line 63
    :cond_16
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 64
    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    return-void

    .line 65
    :cond_17
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v2, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto/16 :goto_12

    :cond_18
    move v5, v15

    if-nez v2, :cond_1d

    .line 66
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v2, :cond_19

    invoke-static {v1, v8, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 67
    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 68
    invoke-static {v1, v9, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 69
    :cond_1a
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    move v15, v5

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz v15, :cond_1b

    .line 70
    iget-boolean v2, v2, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    if-eqz v2, :cond_1b

    goto :goto_c

    :cond_1b
    move v15, v6

    goto :goto_d

    :cond_1c
    if-eqz v15, :cond_2a

    .line 71
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    goto/16 :goto_12

    :cond_1d
    if-eqz v4, :cond_26

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 73
    new-instance v2, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    invoke-direct {v2}, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;-><init>()V

    .line 74
    iput-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    .line 75
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 76
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {v0, v9, v1, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 77
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const/4 v4, -0x1

    if-nez v3, :cond_22

    .line 78
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v3, 0xc800

    sget-boolean v8, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 80
    :try_start_1
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    iput-boolean v5, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    array-length v9, v0

    invoke-static {v0, v6, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    iget-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v9, :cond_21

    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v9, v4, :cond_21

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v10, v4, :cond_1e

    goto :goto_f

    :cond_1e
    int-to-double v11, v9

    int-to-double v9, v10

    mul-double/2addr v11, v9

    int-to-double v9, v3

    div-double/2addr v11, v9

    .line 84
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    const/16 v9, 0x8

    if-gt v3, v9, :cond_1f

    move v15, v5

    :goto_e
    if-ge v15, v3, :cond_20

    shl-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_1f
    add-int/lit8 v3, v3, 0x7

    .line 85
    div-int/2addr v3, v9

    mul-int/lit8 v15, v3, 0x8

    .line 86
    :cond_20
    iput v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 87
    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 89
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 90
    array-length v3, v0

    invoke-static {v0, v6, v3, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v3, "MotoCameraUtil"

    const-string v5, "Got oom exception "

    .line 91
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_f
    if-eqz v7, :cond_23

    .line 92
    sget-object v0, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    .line 93
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, "data"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    iput-object v0, v2, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    goto :goto_10

    .line 95
    :cond_22
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 96
    :cond_23
    :goto_10
    iput v4, v2, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    .line 97
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSetResultListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/ImageCaptureManager$SetResultListener;

    if-eqz v0, :cond_25

    .line 98
    invoke-interface {v0, v2}, Lcom/motorola/camera/saving/ImageCaptureManager$SetResultListener;->onResultComplete(Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;)V

    goto :goto_11

    .line 99
    :cond_24
    invoke-static {v1, v9, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 100
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v2, :cond_25

    invoke-static {v1, v8, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 101
    :cond_25
    :goto_11
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    goto/16 :goto_12

    :cond_26
    if-eqz v3, :cond_27

    .line 102
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 103
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {v0, v9, v1, v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 104
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    .line 105
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 106
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 107
    invoke-virtual {v2, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 108
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 109
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    goto/16 :goto_12

    .line 110
    :cond_27
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 111
    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    if-eqz v0, :cond_2a

    .line 112
    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    .line 113
    monitor-enter v2

    .line 114
    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 115
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 116
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 117
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    .line 118
    invoke-static {v1, v0, v3, v4}, Lcom/motorola/camera/Util;->undoCorrectOrientationRelativeToSensor(IIIZ)I

    move-result v0

    .line 119
    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 120
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 121
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v6, 0x2

    if-eqz v4, :cond_28

    .line 122
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v3, v1, 0x2

    .line 123
    :cond_28
    invoke-virtual {v9}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/high16 v4, 0x3e800000    # 0.25f

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/motorola/camera/Util;->loadThumbnail(Ljava/nio/ByteBuffer;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_29

    const-string v0, "PostCaptureReview"

    const-string v1, "Unable to obtain post capture frame from JPEG data"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    monitor-exit v2

    goto :goto_12

    :cond_29
    neg-int v3, v0

    int-to-float v3, v3

    .line 126
    :try_start_3
    invoke-static {v1, v3}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v7, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 128
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v3, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 129
    iput v6, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    .line 130
    invoke-virtual {v9}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->loadWatermarkBitmap(Ljava/nio/ByteBuffer;I)V

    .line 131
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    monitor-exit v2

    goto :goto_12

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2a
    :goto_12
    return-void
.end method

.method public static declared-synchronized processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getTimestamp()J

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getFormat()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 5
    iput-boolean v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 7
    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    .line 8
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;

    if-eqz p0, :cond_0

    .line 9
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->onImage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getFormat()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2

    .line 14
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;

    if-eqz v1, :cond_2

    .line 15
    check-cast v1, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->onImage()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getFormat()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    goto :goto_0

    .line 18
    :cond_3
    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 19
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :cond_2
    return-void
.end method

.method public static declared-synchronized removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 9
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v3, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    return-object v2

    .line 12
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCaptureRecord"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCaptureHolderMap not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCaptureRecord"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCaptureRecordMap not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    :cond_0
    move-wide v4, p1

    .line 6
    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p2, :cond_1

    .line 8
    iget v1, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget v2, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    iget v3, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/mcf/McfParameters;->requestPostView(IIIJ)V

    goto :goto_0

    .line 9
    :cond_1
    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v1, p0, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/mcf/McfParameters;->requestPostView(IIIJ)V

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_2
    return-void

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No capture record found for timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageCaptureManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    .line 5
    new-instance v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v1, p1, p0, p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 6
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {p2}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 8
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-direct {v4, v5, v6, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 10
    :try_start_0
    new-instance p2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 12
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {p1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 18
    iput-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ImageCaptureManager"

    const-string v4, "failed to add sw jpeg exif data "

    .line 19
    invoke-static {v4}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_3
    :goto_1
    iget-object p1, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    if-eqz p1, :cond_d

    .line 21
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 22
    monitor-enter p1

    .line 23
    :try_start_1
    iget-object p2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 24
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p2, :cond_c

    .line 25
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-nez v0, :cond_4

    goto/16 :goto_4

    .line 26
    :cond_4
    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    .line 27
    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    .line 28
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 30
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_VIDEO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_6

    .line 32
    monitor-exit p1

    goto/16 :goto_5

    .line 33
    :cond_6
    :try_start_2
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object p2

    .line 34
    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BEST_SHOT:Lcom/motorola/camera/mcf/Mcf$InstanceType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v4, :cond_7

    monitor-exit p1

    goto :goto_5

    .line 35
    :cond_7
    :try_start_3
    iget-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 36
    invoke-virtual {v4}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 37
    :cond_8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->motionPhotosNotEnabledForZoomValue(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_9

    monitor-exit p1

    goto :goto_5

    .line 38
    :cond_9
    :try_start_4
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isFlash()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 39
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_JPEG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_2

    .line 41
    :cond_a
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_JPEG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->generateMotionPhoto(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    monitor-exit p1

    goto :goto_6

    .line 44
    :cond_b
    :goto_3
    monitor-exit p1

    goto :goto_5

    :cond_c
    :goto_4
    :try_start_5
    const-string p2, "MotionPhotosComponent"

    const-string v0, "Unexpected image without seqId"

    .line 45
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    monitor-exit p1

    :goto_5
    move v2, v3

    :goto_6
    move v3, v2

    goto :goto_7

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_d
    :goto_7
    if-nez v3, :cond_e

    .line 47
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 48
    iget-boolean p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez p1, :cond_e

    .line 49
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-nez p0, :cond_e

    .line 50
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_e
    return-void
.end method

.method public static sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 6
    invoke-static {p2, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, p1, p2, p3, p0}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;)V

    .line 8
    invoke-static {v1, p1, p2, p3, p0}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static declared-synchronized setImageReceivedListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setImageReviewListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    if-eqz v0, :cond_3

    .line 3
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->isMotionPhotosJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;

    .line 7
    iget-object v3, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p0, p1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_VIDEO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->isMotionPhotosJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Z

    move-result v4

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->addMotionVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 17
    invoke-virtual {v2}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->onVideoReady()V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v2}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->onVideoReady()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 21
    :cond_3
    invoke-static {p1, p0}, Lcom/motorola/camera/jms/BgJobManager;->processBackgroundJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :goto_1
    return-void
.end method
