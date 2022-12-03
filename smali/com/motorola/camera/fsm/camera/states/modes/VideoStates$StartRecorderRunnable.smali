.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "VideoStates.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;
.implements Lcom/motorola/camera/device/callables/MediaStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartRecorderRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string p1, "VideoStates"

    const-string v0, "sessionData is null after recorder has been started"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10
    iget-object p1, v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 11
    iput-wide v1, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    .line 12
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 14
    iput-wide v1, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 16
    const-class p1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter p1

    .line 17
    :try_start_0
    sput-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    const/4 v1, 0x0

    .line 18
    sput-boolean v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    .line 19
    sget-object v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 21
    :cond_1
    :goto_0
    sget-object p1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    .line 23
    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 25
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1204d5

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 26
    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    .line 27
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 31
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STARTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    const/4 v3, 0x1

    const/16 v4, 0xbb8

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Text Description is empty for Setting Confirmation"

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/16 v8, 0xfa0

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    const/16 v10, 0x7d0

    .line 4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/16 v22, 0x4

    if-eqz v2, :cond_6

    .line 5
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x0

    const v18, 0x7f1200ce

    const/16 v21, 0x1

    const/16 v25, 0x0

    .line 7
    invoke-static/range {v22 .. v22}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v14

    if-eqz v14, :cond_4

    if-eq v14, v13, :cond_3

    if-eq v14, v9, :cond_1

    if-eq v14, v6, :cond_0

    move-object v4, v11

    goto :goto_0

    :cond_0
    move/from16 v20, v13

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move/from16 v20, v3

    move-object v4, v10

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move/from16 v20, v7

    move-object v4, v11

    goto :goto_1

    :cond_4
    move-object v4, v10

    :goto_0
    move/from16 v20, v12

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v8, v4

    .line 10
    :goto_2
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v15, 0x1

    .line 11
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v26, 0x0

    move-object v14, v3

    move/from16 v16, v21

    invoke-direct/range {v14 .. v26}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 12
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 15
    :cond_6
    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_d

    .line 16
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 17
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x0

    const v18, 0x7f120131

    const/16 v21, 0x1

    const/16 v25, 0x0

    .line 18
    invoke-static/range {v22 .. v22}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v14

    if-eqz v14, :cond_b

    if-eq v14, v13, :cond_a

    if-eq v14, v9, :cond_8

    if-eq v14, v6, :cond_7

    move-object v4, v11

    goto :goto_3

    :cond_7
    move/from16 v20, v13

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move/from16 v20, v3

    move-object v4, v10

    goto :goto_4

    .line 20
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v20, v7

    move-object v4, v11

    goto :goto_4

    :cond_b
    move-object v4, v10

    :goto_3
    move/from16 v20, v12

    :goto_4
    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    move-object v8, v4

    .line 21
    :goto_5
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v15, 0x1

    .line 22
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v26, 0x0

    move-object v14, v3

    move/from16 v16, v21

    invoke-direct/range {v14 .. v26}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 23
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_9

    .line 26
    :cond_d
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 27
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x0

    const v18, 0x7f120130

    const/16 v21, 0x1

    const/16 v25, 0x0

    .line 28
    invoke-static/range {v22 .. v22}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v14

    if-eqz v14, :cond_12

    if-eq v14, v13, :cond_11

    if-eq v14, v9, :cond_f

    if-eq v14, v6, :cond_e

    move-object v4, v11

    goto :goto_6

    :cond_e
    move/from16 v20, v13

    goto :goto_7

    .line 29
    :cond_f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    move/from16 v20, v3

    move-object v4, v10

    goto :goto_7

    .line 30
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v20, v7

    move-object v4, v11

    goto :goto_7

    :cond_12
    move-object v4, v10

    :goto_6
    move/from16 v20, v12

    :goto_7
    if-nez v4, :cond_13

    goto :goto_8

    :cond_13
    move-object v8, v4

    .line 31
    :goto_8
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v15, 0x1

    .line 32
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v26, 0x0

    move-object v14, v3

    move/from16 v16, v21

    invoke-direct/range {v14 .. v26}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 33
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 36
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 37
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    if-eqz v1, :cond_14

    .line 38
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    .line 39
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 40
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 41
    :cond_14
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 42
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onStatusCallback(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStatusCallback: session data is null, status = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoStates"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    iget-object v4, p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mTYPE:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    if-nez v3, :cond_3

    .line 6
    iget p1, p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mWhat:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 7
    :pswitch_0
    iput v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    .line 8
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 10
    :pswitch_1
    iput v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x63

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    .line 13
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 15
    :cond_2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12012f

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :pswitch_2
    iput v4, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    .line 21
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 22
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12012e

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 23
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    .line 24
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    const/4 p0, 0x2

    .line 26
    iput p0, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    .line 27
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 28
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12012d

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 29
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    .line 32
    :cond_3
    sget-object p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    iget-object p1, p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mTYPE:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    .line 33
    iput p0, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    .line 34
    :cond_4
    :goto_1
    iget p0, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    if-eqz p0, :cond_5

    .line 35
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 36
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->requestAudioFocus(Z)V

    .line 5
    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 6
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 7
    new-instance v1, Lcom/motorola/camera/device/callables/RecorderStartCallable;

    invoke-direct {v1, p0, p0, p3}, Lcom/motorola/camera/device/callables/RecorderStartCallable;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 8
    iget-object p0, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->muteNotifications(Z)V

    .line 10
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 11
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 14
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 15
    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    const-string v0, "CAPTURE_TRIGGER"

    .line 16
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    .line 17
    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const/4 p2, 0x0

    const-string p3, "KEY_CODE"

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
