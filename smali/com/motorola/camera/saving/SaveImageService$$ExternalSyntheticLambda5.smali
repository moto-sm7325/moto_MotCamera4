.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

.field public final synthetic f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public final synthetic f$4:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$4:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:I

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$4:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 1
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    int-to-float v0, v2

    const/4 v7, 0x1

    .line 2
    invoke-static {v1, v0, v7, v7, v7}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v16, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v9

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v10

    if-nez v9, :cond_0

    if-eqz v10, :cond_1

    .line 5
    :cond_0
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    const/4 v12, 0x0

    iget-wide v13, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    move-object v8, v15

    .line 7
    invoke-static/range {v8 .. v14}, Lcom/motorola/camera/service/WatermarkEditorService;->addWatermarkToBitmap(Landroid/graphics/Bitmap;ZZZIJ)Z

    .line 8
    :cond_1
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 9
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v15, v0, v9, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 12
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v9, "w"

    .line 13
    invoke-static {v0, v9}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V

    .line 15
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    .line 16
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 17
    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 18
    invoke-virtual {v9}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-static {v0, v9}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 20
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v9}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v17

    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 21
    invoke-virtual {v9}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v18

    iget-wide v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v2, 0x0

    :cond_2
    move/from16 v26, v2

    const/16 v27, 0x0

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object/from16 v16, v0

    move-wide/from16 v20, v9

    .line 24
    invoke-direct/range {v16 .. v27}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 25
    iget-object v9, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/gms/common/api/internal/zaz;

    const-string v10, "SEQ_ID"

    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/common/api/internal/zaz;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    iget-object v2, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/gms/common/api/internal/zaz;

    const-string v9, "IS_PRIMARY"

    .line 28
    invoke-virtual {v2, v9, v7}, Lcom/google/android/gms/common/api/internal/zaz;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 31
    invoke-virtual {v2, v4}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 32
    :cond_3
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_4
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    :cond_5
    invoke-static {v8}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v5, :cond_9

    .line 36
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_1

    .line 37
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bitmap compress failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 38
    :goto_0
    :try_start_3
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    const-string v2, "SaveImageService"

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz v15, :cond_8

    .line 41
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_8
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v5, :cond_9

    .line 43
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 44
    :goto_1
    iget-object v1, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_9
    return-void

    :goto_2
    move-object/from16 v8, v16

    :goto_3
    if-eqz v1, :cond_a

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v15, :cond_b

    .line 47
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    :cond_b
    invoke-static {v8}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v5, :cond_c

    .line 49
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 50
    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 52
    :cond_c
    throw v0
.end method
