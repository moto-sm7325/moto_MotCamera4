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
    .locals 25

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

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v11

    .line 22
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 23
    invoke-static {v11, v10}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(IZ)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 24
    invoke-static {v12, v11}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const-string v11, "CAMERA_TYPE"

    .line 25
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/settings/CameraType;

    const-string v12, "OpenCameraRunnable"

    const/4 v13, -0x1

    if-nez v11, :cond_6

    .line 26
    invoke-static {v10, v13, v13}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(ZII)Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    .line 27
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-ne v11, v13, :cond_6

    const-string v0, "cameraType is UNKNOWN"

    .line 28
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v13

    if-nez v13, :cond_7

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    if-eq v11, v13, :cond_7

    move v13, v0

    goto :goto_5

    :cond_7
    move v13, v8

    .line 30
    :goto_5
    iget-object v14, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 31
    iget-object v14, v14, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    if-eqz v13, :cond_8

    .line 32
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v14

    .line 33
    invoke-virtual {v4, v14, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 34
    invoke-virtual {v4, v14, v0}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    .line 35
    iget-object v15, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-static {v15, v14, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->access$200(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Ljava/lang/String;Z)V

    .line 36
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 37
    iget-object v15, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-static {v14, v1, v0, v15}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    .line 39
    :cond_8
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->switchInDualCaptureModeByLayoutChange(Landroid/os/Bundle;)Z

    move-result v0

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-ne v5, v11, :cond_9

    const/4 v8, 0x1

    .line 42
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 43
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 p1, v7

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 44
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 45
    check-cast v7, Landroid/util/Size;

    invoke-static {v5, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 46
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 47
    iput-object v11, v5, Lcom/motorola/camera/settings/SettingsManager;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 48
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p3, v3

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v4

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    move/from16 v18, v13

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v13, :cond_a

    const/4 v4, 0x0

    .line 53
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isUwMaxVideo4kAndZoomBlendingSupport8k(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 54
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    goto :goto_6

    .line 55
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    .line 56
    :goto_6
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 57
    new-instance v1, Lcom/motorola/camera/VideoFormat;

    move/from16 v19, v9

    new-instance v9, Lcom/motorola/camera/PreviewSize;

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/settings/SettingsManager;->getInitVideoSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 59
    new-instance v12, Landroid/util/Size;

    move-wide/from16 v22, v15

    iget v15, v9, Lcom/motorola/camera/PreviewSize;->width:I

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v12, v15, v9}, Landroid/util/Size;-><init>(II)V

    sget-object v9, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    const/4 v15, 0x0

    .line 60
    invoke-direct {v1, v12, v9, v15}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    .line 62
    invoke-static {v1, v9}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    .line 63
    iget-object v9, v13, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 64
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    .line 65
    invoke-virtual {v9, v13, v12, v1}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/VideoFormat;

    .line 66
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_b

    const/4 v9, 0x0

    .line 67
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/VideoFormat;

    :cond_b
    if-eqz v9, :cond_c

    .line 68
    sget-object v12, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    invoke-static {v12, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_c
    move-object v9, v1

    .line 69
    :cond_d
    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 70
    iget-boolean v12, v12, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v12, :cond_e

    .line 71
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;

    invoke-interface {v4, v12}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 72
    sget-object v12, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object v13, v9, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_7

    :cond_e
    move-object v1, v9

    .line 73
    :goto_7
    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 74
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/VideoFormat;

    .line 75
    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 76
    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_10
    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 78
    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_11
    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v1, v13}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 80
    invoke-static {v3, v13}, Lcom/motorola/camera/utility/SizeUtility;->hasAspectRatio(Ljava/util/List;Landroid/util/Size;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 81
    iget-object v12, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v12}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 82
    :cond_12
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 83
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 84
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 85
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    invoke-static {v1, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 87
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 88
    new-instance v3, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v3}, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 89
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 90
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 91
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    .line 92
    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v4

    .line 93
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 94
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 96
    iget-object v9, v7, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 97
    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/Map;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 98
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    .line 102
    new-instance v7, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    invoke-direct {v7, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v9, v4

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 104
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 105
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 106
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 107
    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 108
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 109
    new-instance v3, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v3}, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 110
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 111
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    .line 112
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v5, v2}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v4

    .line 113
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 114
    :cond_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 115
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v1

    if-nez v1, :cond_16

    .line 116
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 117
    iput-object v2, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    goto :goto_b

    .line 118
    :cond_16
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 119
    iput-object v2, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 120
    :goto_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_c

    :cond_17
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_18

    .line 121
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 122
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 123
    check-cast v1, Landroid/util/Range;

    goto :goto_d

    .line 124
    :cond_18
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 125
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 126
    check-cast v1, Landroid/util/Range;

    .line 127
    :goto_d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-virtual {v2, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SettingsManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    .line 128
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    if-eqz v1, :cond_1f

    .line 129
    array-length v2, v1

    if-nez v2, :cond_19

    goto :goto_10

    :cond_19
    const/16 v2, 0x190

    .line 130
    array-length v5, v1

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v5, :cond_1b

    aget-object v9, v1, v7

    .line 131
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 132
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v13, 0x1e

    if-lt v9, v13, :cond_1a

    if-gt v12, v13, :cond_1a

    if-ge v12, v2, :cond_1a

    move v2, v12

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1b
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 133
    :goto_f
    array-length v12, v1

    if-ge v7, v12, :cond_1d

    .line 134
    aget-object v12, v1, v7

    .line 135
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 136
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v13, v2, :cond_1c

    if-ge v9, v12, :cond_1c

    move v5, v7

    move v9, v12

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1d
    if-ltz v5, :cond_1e

    .line 137
    aget-object v1, v1, v5

    goto :goto_12

    :cond_1e
    const-string v1, "Can\'t find an appropriate frame rate range!"

    .line 138
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1f
    :goto_10
    const-string v1, "No supported frame rates returned!"

    .line 139
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move-object v1, v4

    .line 140
    :cond_20
    :goto_12
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 141
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 142
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 144
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 145
    check-cast v5, Landroid/util/Range;

    if-eqz v1, :cond_21

    .line 146
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-virtual {v5, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 147
    :cond_21
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 148
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 149
    check-cast v1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_22
    if-nez v8, :cond_23

    if-nez v0, :cond_23

    .line 150
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoom()V

    :cond_23
    if-eqz v0, :cond_25

    if-eqz v6, :cond_25

    .line 151
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    .line 152
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearSlaveCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    .line 153
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    if-ne v11, v2, :cond_24

    const/4 v2, 0x1

    goto :goto_13

    :cond_24
    const/4 v2, 0x0

    .line 154
    :goto_13
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCaptureZoom(ZZZ)V

    .line 155
    :cond_25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoomLimitMaxValue()V

    .line 156
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 157
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/settings/Setting;

    .line 158
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 159
    iget-object v8, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 161
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 162
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 163
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x1

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f120404

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    iget-object v12, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v12, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v8, 0x7f120403

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->updateMediaVolumes(Z)V

    goto :goto_14

    .line 169
    :cond_26
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 170
    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 171
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 172
    :try_start_0
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 173
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    .line 174
    :catch_0
    invoke-virtual {v5}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    .line 175
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 176
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_14

    .line 177
    :cond_27
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 178
    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 180
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 181
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 182
    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    if-nez v7, :cond_28

    goto :goto_15

    .line 183
    :cond_28
    iget-object v7, v7, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    if-nez v7, :cond_29

    :goto_15
    move v7, v2

    goto :goto_16

    .line 184
    :cond_29
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_16
    if-eq v2, v7, :cond_2a

    .line 185
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 186
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 187
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x1

    if-ne v7, v0, :cond_2a

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 189
    :cond_2a
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 190
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 191
    :cond_2b
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 192
    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 194
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 195
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 196
    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    if-nez v7, :cond_2c

    goto :goto_17

    .line 197
    :cond_2c
    iget-object v7, v7, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    if-nez v7, :cond_2d

    :goto_17
    move v7, v2

    goto :goto_18

    .line 198
    :cond_2d
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_18
    if-eq v2, v7, :cond_2e

    .line 199
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 200
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 201
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x1

    if-ne v7, v0, :cond_2e

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 203
    :cond_2e
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 204
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 205
    :cond_2f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 206
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 208
    :try_start_1
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 209
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_14

    :catch_1
    move-exception v0

    const-string v2, "Perform read VIDEO_STABILIZATION setting throw ClassCastException"

    .line 210
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-virtual {v5}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    .line 212
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 213
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 214
    :cond_30
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 215
    iget-object v2, v5, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_14

    .line 217
    :cond_31
    iget-object v0, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 218
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_14

    .line 219
    :cond_32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 220
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 221
    invoke-virtual {v1, v14}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    const/16 v5, 0x23

    .line 224
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 225
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 226
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 227
    :goto_19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_33

    .line 228
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/PreviewSize;

    .line 229
    new-instance v12, Landroid/util/Size;

    iget v13, v9, Lcom/motorola/camera/PreviewSize;->width:I

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v12, v13, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 230
    :cond_33
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 231
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 232
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 233
    invoke-static {v0, v5, v7}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 234
    invoke-static {v0, v8, v7}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 235
    invoke-static {v0, v9, v7}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 236
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-static {v5, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 237
    invoke-static {v8, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 238
    invoke-static {v9, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 239
    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 240
    invoke-static {v10, v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 241
    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x1

    .line 243
    invoke-static {v0, v1}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 244
    invoke-static {v0, v1}, Lcom/motorola/camera/QuickLaunch;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_1a

    .line 245
    :cond_34
    invoke-static {v0, v2}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 246
    invoke-static {v0, v2}, Lcom/motorola/camera/QuickLaunch;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_1a

    :cond_35
    const/4 v0, 0x0

    .line 247
    :goto_1a
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 248
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQuickDrawCamFacingSupported()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_1b

    .line 249
    :cond_36
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 250
    invoke-static {v0}, Lcom/motorola/camera/QuickLaunch;->getCameraFacing(Landroid/content/Context;)I

    move-result v0

    .line 251
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_1b
    const/4 v0, 0x0

    .line 252
    invoke-static {v10, v0, v6}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZZ)V

    .line 253
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 254
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 255
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 256
    :cond_37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    if-eqz v10, :cond_38

    .line 257
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 258
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    goto :goto_1c

    .line 260
    :cond_38
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 261
    :goto_1c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v14}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    const/4 v0, 0x1

    goto :goto_1d

    :cond_39
    const/4 v0, 0x0

    :goto_1d
    move v1, v0

    .line 264
    sget-object v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    .line 265
    iget-boolean v0, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    if-nez v0, :cond_3b

    const-string v0, "audio.camerasound.force"

    .line 266
    iget-boolean v6, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    const-string v7, "getBoolean"

    :try_start_2
    const-string v8, "android.os.SystemProperties"

    new-array v9, v2, [Ljava/lang/Class;

    .line 267
    const-class v12, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v12, v9, v13

    invoke-static {v8, v7, v9}, Landroidx/core/util/DebugUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_3a

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 268
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

    .line 269
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :cond_3a
    :goto_1e
    iput-boolean v6, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    .line 272
    :cond_3b
    iget-boolean v0, v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    .line 273
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "config_camera_sound_forced"

    const-string v5, "bool"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3c

    .line 274
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 275
    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto :goto_1f

    :cond_3c
    const/4 v2, 0x0

    :goto_1f
    if-nez v2, :cond_3e

    if-nez v1, :cond_3e

    if-eqz v0, :cond_3d

    goto :goto_20

    :cond_3d
    const/4 v0, 0x0

    goto :goto_21

    :cond_3e
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v0, :cond_3f

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 279
    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_22

    .line 280
    :cond_3f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 281
    :goto_22
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 282
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 283
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupBGServiceProcessing()V

    .line 284
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 285
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 287
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    :cond_40
    const/4 v0, 0x1

    .line 288
    invoke-static {v11, v10, v0}, Lcom/motorola/camera/settings/SettingsManager;->setupHdr(Lcom/motorola/camera/settings/CameraType;ZZ)V

    .line 289
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->setupFaceBeauty(Z)V

    .line 290
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "setCurrentCamera dur:"

    .line 291
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_41
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 293
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 294
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 295
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_42

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 297
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "mcf initialization blocks dur:"

    .line 298
    invoke-static {v3}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    .line 300
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_42
    const/4 v2, 0x1

    .line 301
    :cond_43
    :goto_23
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCameraAllowedValues(Z)V

    .line 302
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->setupModeAllowedValues(Z)V

    move-object/from16 v1, p0

    if-eqz v19, :cond_44

    .line 303
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->postCameraSettingsSetup(Z)V

    .line 304
    :cond_44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasHdrProForCurrentMode()Z

    move-result v0

    .line 305
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 306
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->HDR_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    .line 307
    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    .line 308
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v4

    const/16 v5, 0x21

    if-nez v4, :cond_46

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_24

    :cond_45
    const/4 v4, 0x0

    goto :goto_25

    :cond_46
    :goto_24
    move v4, v2

    :goto_25
    if-eqz v3, :cond_47

    if-eqz v4, :cond_47

    goto :goto_26

    :cond_47
    const/4 v2, 0x0

    :goto_26
    if-nez v0, :cond_48

    if-eqz v2, :cond_4f

    .line 309
    :cond_48
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 310
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 311
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 312
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 313
    iget-object v6, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 314
    invoke-virtual {v6, v4, v11}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V

    .line 315
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 316
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 317
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x20

    const/4 v7, 0x3

    if-nez v2, :cond_49

    if-ne v3, v7, :cond_49

    .line 318
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move v5, v6

    goto :goto_27

    :cond_49
    const/4 v8, 0x4

    if-nez v2, :cond_4a

    if-ne v3, v8, :cond_4a

    .line 319
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_27

    :cond_4a
    if-ne v2, v6, :cond_4b

    if-ne v3, v7, :cond_4d

    :cond_4b
    if-ne v2, v5, :cond_4c

    if-ne v3, v8, :cond_4d

    .line 320
    :cond_4c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 321
    :cond_4d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 322
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_27

    :cond_4e
    move v5, v2

    .line 323
    :goto_27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 324
    iget-object v0, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 325
    invoke-virtual {v0, v4, v11}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V

    .line 326
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 327
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_28

    .line 328
    :cond_50
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 331
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxMasterCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 332
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v2

    move-object v2, v0

    move-object/from16 v0, v24

    goto :goto_29

    :cond_51
    const/4 v3, 0x0

    .line 333
    :cond_52
    :goto_29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 334
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraId()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 336
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 337
    :cond_53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraId()Ljava/lang/String;

    move-result-object v2

    :cond_54
    :goto_2a
    if-nez v18, :cond_55

    move-object/from16 v4, p3

    move-object/from16 v5, v17

    .line 338
    invoke-virtual {v5, v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    xor-int/lit8 v6, v3, 0x1

    .line 339
    invoke-virtual {v5, v0, v6}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    .line 340
    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-static {v7, v0, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->access$200(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Ljava/lang/String;Z)V

    .line 341
    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    move-object/from16 v7, p2

    .line 342
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 343
    invoke-static {v0, v1, v6, v8}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    goto :goto_2b

    :cond_55
    move-object/from16 v7, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v17

    .line 344
    :goto_2b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 345
    :cond_56
    invoke-virtual {v5, v2, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 346
    invoke-virtual {v5, v2, v3}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    .line 347
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-static {v0, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->access$200(Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Ljava/lang/String;Z)V

    .line 348
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 349
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 350
    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    .line 351
    :cond_57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 352
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 353
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 354
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {v5, v2, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 356
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->mOpenCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    .line 357
    iget-object v6, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 358
    invoke-static {v2, v1, v3, v6}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;)V

    goto :goto_2c

    :cond_58
    if-eqz p1, :cond_59

    .line 359
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 360
    iget-object v1, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "MCF_PROCESSING"

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_59
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 362
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
