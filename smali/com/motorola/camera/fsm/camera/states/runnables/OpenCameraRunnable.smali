.class public Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "OpenCameraRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;
    }
.end annotation


# instance fields
.field public final mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$1;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v3, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 4
    invoke-direct {v3, p0, p1, v4, v5}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 5
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public postCameraSettingsSetup(Z)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v0, p1

    .line 2
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v4, :cond_0

    .line 5
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->HAL_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    .line 7
    iget-object v4, v4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v4, v5}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 8
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    .line 10
    iget-object v4, v4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v4, v5}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 11
    :cond_0
    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 12
    iget-object v4, v4, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 13
    invoke-virtual {v4}, Lcom/motorola/camera/device/CameraStateManager;->clear()V

    .line 14
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 15
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "USE_CASE"

    .line 16
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 17
    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v8, 0x0

    if-eq v6, v7, :cond_2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v0

    .line 18
    :goto_1
    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-eq v6, v9, :cond_4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v6, v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v0

    .line 19
    :goto_3
    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v6, v10, :cond_5

    move v6, v0

    goto :goto_4

    :cond_5
    move v6, v8

    .line 20
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v10

    const-string v11, "CAMERA_TYPE"

    .line 21
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/settings/CameraType;

    if-nez v11, :cond_6

    .line 22
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    .line 23
    sget-object v12, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-ne v11, v12, :cond_6

    const-string v0, "OpenCameraRunnable"

    const-string v1, "cameraType is UNKNOWN"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 25
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v12

    if-nez v12, :cond_7

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    if-eq v11, v12, :cond_7

    move v12, v0

    goto :goto_5

    :cond_7
    move v12, v8

    .line 26
    :goto_5
    iget-object v13, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 27
    iget-object v13, v13, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    if-eqz v12, :cond_8

    .line 28
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v4, v13, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 30
    invoke-virtual {v4, v13, v0}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    .line 31
    iget-object v14, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-static {v14, v13, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->access$200(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Ljava/lang/String;Z)V

    .line 32
    iget-object v14, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 33
    iget-object v15, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-static {v13, v1, v14, v15}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    .line 35
    :cond_8
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->switchInDualCaptureModeByLayoutChange(Landroid/os/Bundle;)Z

    move-result v5

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-ne v13, v11, :cond_9

    goto :goto_6

    :cond_9
    move v0, v8

    .line 38
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 39
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 40
    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 41
    check-cast v13, Landroid/util/Size;

    invoke-static {v8, v13}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 42
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 43
    iput-object v11, v8, Lcom/motorola/camera/settings/SettingsManager;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 44
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 45
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 p1, v7

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v17

    move-object/from16 p3, v3

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v3

    .line 49
    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    move/from16 v17, v12

    .line 50
    new-instance v12, Lcom/motorola/camera/VideoFormat;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v19

    move/from16 v20, v9

    invoke-static/range {v19 .. v19}, Lcom/motorola/camera/settings/SettingsManager;->getInitVideoSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 52
    new-instance v9, Landroid/util/Size;

    move-wide/from16 v21, v15

    iget v15, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v9, v15, v1}, Landroid/util/Size;-><init>(II)V

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    const/4 v15, 0x0

    .line 53
    invoke-direct {v12, v9, v1, v15}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 55
    invoke-static {v12, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    iput-boolean v1, v12, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    .line 56
    iget-object v1, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    .line 58
    invoke-virtual {v1, v4, v9, v12}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    .line 59
    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    :cond_a
    if-eqz v1, :cond_b

    .line 61
    sget-object v9, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    move-object v1, v12

    .line 62
    :cond_c
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 63
    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v9, :cond_d

    .line 64
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 65
    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object v15, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_7

    :cond_d
    move-object v12, v1

    .line 66
    :goto_7
    iget-object v1, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/VideoFormat;

    .line 68
    iget-object v15, v12, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 69
    iget-object v15, v12, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_f
    iget-object v15, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 71
    iget-object v15, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_10
    iget-object v15, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v1, v15}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v15

    if-eqz v15, :cond_e

    iget-object v15, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 73
    invoke-static {v2, v15}, Lcom/motorola/camera/utility/SizeUtility;->hasAspectRatio(Ljava/util/List;Landroid/util/Size;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 74
    iget-object v12, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v12}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 75
    :cond_11
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 76
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 77
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 78
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    invoke-static {v1, v13}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 80
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 81
    new-instance v2, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v2}, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;-><init>()V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 82
    invoke-static {v1, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 83
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    .line 85
    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v4

    .line 86
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 87
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValueToSummeryMap:Ljava/util/Map;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 89
    iget-object v9, v7, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 90
    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/Map;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 91
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    .line 95
    new-instance v7, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda7;

    invoke-direct {v7, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v9, v4

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 97
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 98
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 99
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 101
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 102
    new-instance v3, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v3}, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 103
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 104
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    .line 105
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v8, v2}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValueToSummeryMap:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 107
    :cond_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v1

    if-nez v1, :cond_15

    .line 109
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 110
    iput-object v2, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    goto :goto_b

    .line 111
    :cond_15
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 112
    iput-object v2, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 113
    :goto_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_17

    .line 114
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 115
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 116
    check-cast v1, Landroid/util/Range;

    goto :goto_d

    .line 117
    :cond_17
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 118
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 119
    check-cast v1, Landroid/util/Range;

    .line 120
    :goto_d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-virtual {v2, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SettingsManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    .line 121
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    if-eqz v1, :cond_1e

    .line 122
    array-length v2, v1

    if-nez v2, :cond_18

    goto :goto_10

    :cond_18
    const/16 v2, 0x190

    .line 123
    array-length v7, v1

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_1a

    aget-object v9, v1, v8

    .line 124
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 125
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v13, 0x1e

    if-lt v9, v13, :cond_19

    if-gt v12, v13, :cond_19

    if-ge v12, v2, :cond_19

    move v2, v12

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1a
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 126
    :goto_f
    array-length v12, v1

    if-ge v8, v12, :cond_1c

    .line 127
    aget-object v12, v1, v8

    .line 128
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 129
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v13, v2, :cond_1b

    if-ge v9, v12, :cond_1b

    move v7, v8

    move v9, v12

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1c
    if-ltz v7, :cond_1d

    .line 130
    aget-object v1, v1, v7

    goto :goto_12

    :cond_1d
    const-string v1, "Can\'t find an appropriate frame rate range!"

    .line 131
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1e
    :goto_10
    const-string v1, "No supported frame rates returned!"

    .line 132
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move-object v1, v4

    .line 133
    :cond_1f
    :goto_12
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 134
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 135
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 137
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 138
    check-cast v7, Landroid/util/Range;

    if-eqz v1, :cond_20

    .line 139
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-virtual {v7, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 140
    :cond_20
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 141
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 142
    check-cast v1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_21
    if-nez v0, :cond_22

    if-nez v5, :cond_22

    .line 143
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoom()V

    :cond_22
    if-eqz v5, :cond_24

    if-eqz v6, :cond_24

    .line 144
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    .line 145
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearSlaveCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    .line 146
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    if-ne v11, v2, :cond_23

    const/4 v2, 0x1

    goto :goto_13

    :cond_23
    const/4 v2, 0x0

    .line 147
    :goto_13
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCaptureZoom(ZZZ)V

    .line 148
    :cond_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoomLimitMaxValue()V

    .line 149
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 150
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/settings/Setting;

    .line 151
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 152
    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 154
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 155
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 156
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    .line 157
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f1103f9

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 158
    iget-object v9, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummeryMap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v7, 0x7f1103f8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummeryMap:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->updateMediaVolumes(Z)V

    goto :goto_14

    .line 162
    :cond_25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 163
    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 165
    :try_start_0
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 166
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    .line 167
    :catch_0
    invoke-virtual {v5}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    .line 168
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 169
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_14

    .line 170
    :cond_26
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 171
    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 172
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 173
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 174
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 175
    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    if-nez v6, :cond_27

    goto :goto_15

    .line 176
    :cond_27
    iget-object v6, v6, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    if-nez v6, :cond_28

    :goto_15
    move v6, v2

    goto :goto_16

    .line 177
    :cond_28
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_16
    if-eq v2, v6, :cond_29

    .line 178
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 179
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 180
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v6, v0, :cond_29

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 182
    :cond_29
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 183
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 184
    :cond_2a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 185
    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 186
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 187
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 188
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    if-nez v6, :cond_2b

    goto :goto_17

    .line 190
    :cond_2b
    iget-object v6, v6, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    if-nez v6, :cond_2c

    :goto_17
    move v6, v2

    goto :goto_18

    .line 191
    :cond_2c
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_18
    if-eq v2, v6, :cond_2d

    .line 192
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 193
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 194
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v6, v0, :cond_2d

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 196
    :cond_2d
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 197
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 198
    :cond_2e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 199
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 201
    :try_start_1
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 202
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_14

    :catch_1
    move-exception v0

    const-string v2, "Perform read VIDEO_STABILIZATION setting throw ClassCastException"

    .line 203
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    invoke-virtual {v5}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    .line 205
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 206
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 207
    :cond_2f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 208
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_14

    .line 210
    :cond_30
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 211
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 212
    :cond_31
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 213
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 214
    invoke-virtual {v1, v14}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    const/16 v5, 0x23

    .line 217
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 218
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 219
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 220
    :goto_19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_32

    .line 221
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/PreviewSize;

    .line 222
    new-instance v9, Landroid/util/Size;

    iget v12, v8, Lcom/motorola/camera/PreviewSize;->width:I

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v9, v12, v8}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 223
    :cond_32
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 224
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v6}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 225
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 226
    invoke-static {v0, v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 227
    invoke-static {v0, v7, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 228
    invoke-static {v0, v8, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 229
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-static {v5, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 230
    invoke-static {v7, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 231
    invoke-static {v8, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 232
    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 233
    invoke-static {v10, v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 234
    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x1

    .line 236
    invoke-static {v0, v1}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 237
    invoke-static {v0, v1}, Lcom/motorola/camera/QuickLaunch;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_1a

    .line 238
    :cond_33
    invoke-static {v0, v2}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 239
    invoke-static {v0, v2}, Lcom/motorola/camera/QuickLaunch;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_1a

    :cond_34
    const/4 v0, 0x0

    .line 240
    :goto_1a
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQuickDrawCamFacingSupported()Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_1b

    .line 242
    :cond_35
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 243
    invoke-static {v0}, Lcom/motorola/camera/QuickLaunch;->getCameraFacing(Landroid/content/Context;)I

    move-result v0

    .line 244
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_1b
    const/4 v0, 0x0

    .line 245
    invoke-static {v10, v0}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZ)V

    .line 246
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->setupFaceBeauty(Z)V

    .line 247
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 248
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 249
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 250
    :cond_36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    if-eqz v10, :cond_37

    .line 251
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 252
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    goto :goto_1c

    .line 254
    :cond_37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 255
    :goto_1c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v14}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    const/4 v0, 0x1

    goto :goto_1d

    :cond_38
    const/4 v0, 0x0

    :goto_1d
    move v1, v0

    .line 258
    sget-object v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    .line 259
    iget-boolean v0, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    if-nez v0, :cond_3a

    const-string v0, "audio.camerasound.force"

    .line 260
    iget-boolean v6, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    const-string v7, "getBoolean"

    :try_start_2
    const-string v8, "android.os.SystemProperties"

    new-array v9, v2, [Ljava/lang/Class;

    .line 261
    const-class v12, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v12, v9, v13

    invoke-static {v8, v7, v9}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_39

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 262
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v9, 0x1

    aput-object v0, v2, v9

    invoke-virtual {v8, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1e

    :catch_2
    move-exception v0

    const-string v2, "SystemSetting"

    .line 263
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_39
    :goto_1e
    iput-boolean v6, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    .line 266
    :cond_3a
    iget-boolean v0, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    .line 267
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "config_camera_sound_forced"

    const-string v5, "bool"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3b

    .line 268
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 269
    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto :goto_1f

    :cond_3b
    const/4 v2, 0x0

    :goto_1f
    if-nez v2, :cond_3d

    if-nez v1, :cond_3d

    if-eqz v0, :cond_3c

    goto :goto_20

    :cond_3c
    const/4 v0, 0x0

    goto :goto_21

    :cond_3d
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v0, :cond_3e

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 273
    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_22

    .line 274
    :cond_3e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 275
    :goto_22
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 276
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 277
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupBGServiceProcessing()V

    .line 278
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 279
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 280
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 281
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    :cond_3f
    const/4 v0, 0x1

    .line 282
    invoke-static {v11, v10, v0}, Lcom/motorola/camera/settings/SettingsManager;->setupHdr(Lcom/motorola/camera/settings/CameraType;ZZ)V

    .line 283
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_40

    const-string v1, "setCurrentCamera dur:"

    .line 284
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v21

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_40
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCameraAllowedValues(Z)V

    .line 286
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->setupModeAllowedValues(Z)V

    move-object/from16 v1, p0

    if-eqz v20, :cond_41

    .line 287
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->postCameraSettingsSetup(Z)V

    .line 288
    :cond_41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasHdrProForCurrentMode()Z

    move-result v2

    .line 289
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 290
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 292
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->HDR_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    .line 293
    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    .line 294
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v4

    const/16 v5, 0x21

    if-nez v4, :cond_43

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_23

    :cond_42
    const/4 v4, 0x0

    goto :goto_24

    :cond_43
    :goto_23
    move v4, v0

    :goto_24
    if-eqz v3, :cond_44

    if-eqz v4, :cond_44

    goto :goto_25

    :cond_44
    const/4 v0, 0x0

    :goto_25
    if-nez v2, :cond_45

    if-eqz v0, :cond_4c

    .line 295
    :cond_45
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 296
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 297
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 298
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 299
    iget-object v6, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 300
    invoke-virtual {v6, v4, v11}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V

    .line 301
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 302
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 303
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x20

    const/4 v7, 0x3

    if-nez v2, :cond_46

    if-ne v3, v7, :cond_46

    .line 304
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move v5, v6

    goto :goto_26

    :cond_46
    const/4 v8, 0x4

    if-nez v2, :cond_47

    if-ne v3, v8, :cond_47

    .line 305
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_26

    :cond_47
    if-ne v2, v6, :cond_48

    if-ne v3, v7, :cond_4a

    :cond_48
    if-ne v2, v5, :cond_49

    if-ne v3, v8, :cond_4a

    .line 306
    :cond_49
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 307
    :cond_4a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 308
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_26

    :cond_4b
    move v5, v2

    .line 309
    :goto_26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 310
    iget-object v0, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 311
    invoke-virtual {v0, v4, v11}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V

    .line 312
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 313
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_27

    .line 314
    :cond_4d
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 317
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxMasterCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 318
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, v23

    goto :goto_28

    :cond_4e
    const/4 v3, 0x0

    .line 319
    :cond_4f
    :goto_28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 320
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraId()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 322
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraId()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 323
    :cond_50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraId()Ljava/lang/String;

    move-result-object v2

    :cond_51
    :goto_29
    if-nez v17, :cond_52

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    .line 324
    invoke-virtual {v5, v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    xor-int/lit8 v6, v3, 0x1

    .line 325
    invoke-virtual {v5, v0, v6}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    .line 326
    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    xor-int/lit8 v7, v3, 0x1

    invoke-static {v6, v0, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->access$200(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Ljava/lang/String;Z)V

    .line 327
    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    move-object/from16 v7, p2

    .line 328
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 329
    invoke-static {v0, v1, v6, v8}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    goto :goto_2a

    :cond_52
    move-object/from16 v7, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    .line 330
    :goto_2a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 331
    :cond_53
    invoke-virtual {v5, v2, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 332
    invoke-virtual {v5, v2, v3}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    .line 333
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-static {v0, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->access$200(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Ljava/lang/String;Z)V

    .line 334
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 335
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 336
    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    .line 337
    :cond_54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 338
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 339
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 340
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v5, v2, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 342
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 343
    iget-object v6, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 344
    invoke-static {v2, v1, v3, v6}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    goto :goto_2b

    :cond_55
    if-eqz p1, :cond_56

    .line 345
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 346
    iget-object v1, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "MCF_PROCESSING"

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_56
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 348
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
