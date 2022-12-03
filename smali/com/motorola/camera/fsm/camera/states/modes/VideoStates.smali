.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.super Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;
.source "VideoStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockVstabOnCliRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CheckVstabStopDetectionRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CleanRecordBundleRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotSupportedGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CaptureTriggerTypeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockFocusCompleteRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$SuperSlowMotionGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UnlockMicSettingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockMicSettingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayPauseToneRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoStopRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPrepareRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoReviewRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoSnapshotRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSizeUpdateLockRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$FaceBeautyLockRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoAutoStartCheckRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ErrorFromCameraSideGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TimelapseGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoCliGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreStartRecordingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;
    }
.end annotation


# static fields
.field public static final CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PLAY_PAUSE_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PLAY_RESUME_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_VSTAB_STOP_DETECTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PREPARE_CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_TONE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v7, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PAUSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PAUSED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESUMING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SNAPSHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v5, 0x3

    new-array v9, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v9, v4

    aput-object v8, v9, v1

    aput-object v6, v9, v2

    invoke-direct {v0, v9}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    aput-object v8, v5, v1

    aput-object v7, v5, v2

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VSTAB_STOP_DETECTION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_VSTAB_STOP_DETECTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->STOPPING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW_RESULT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TIMELAPSE_PROCESSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TIMELAPSE_PROCESSING_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SUPER_SLOW_MOTION_PROCESSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PREPARE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 30
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PAUSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PAUSED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 32
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_RESUME:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 33
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_RECORDING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_STOP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 35
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_PAUSE_TONE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PLAY_PAUSE_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 36
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_RESUME_TONE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PLAY_RESUME_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;-><init>()V

    return-void
.end method

.method public static getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_VSTAB_STOP_DETECTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$SuperSlowMotionGuardRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$SuperSlowMotionGuardRunnable;-><init>()V

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;-><init>(Z)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 12
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 13
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    return-object v1
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getParentState()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->configureCaptureStates(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public configureCaptureStates(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 58

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 2
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 3
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 5
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v5, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 6
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$FaceBeautyLockRunnable;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$FaceBeautyLockRunnable;-><init>(Z)V

    .line 9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSizeUpdateLockRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSizeUpdateLockRunnable;-><init>(Z)V

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockMicSettingRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockMicSettingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 13
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockVstabOnCliRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockVstabOnCliRunnable;-><init>(Z)V

    .line 15
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/RemoveBundleKeyRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "ENABLE_VSTAB_STOP_DETECTION"

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/RemoveBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 19
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 20
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 21
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;-><init>()V

    .line 23
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreStartRecordingRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreStartRecordingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 24
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 25
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 27
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 30
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 31
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 33
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "HISTORY_STATE"

    invoke-direct {v10, v11, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 36
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 37
    invoke-static {v4, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;

    invoke-direct {v15, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;-><init>(Z)V

    .line 38
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;-><init>(Z)V

    .line 40
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v15, 0x2

    invoke-direct {v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 42
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v6, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 44
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 45
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 47
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 49
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 51
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 52
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 53
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 55
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CURRENT_MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 56
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 57
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 59
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 60
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 61
    invoke-virtual {v4, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v16, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 62
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v10

    .line 64
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 65
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 67
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-direct {v6, v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 69
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 70
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 72
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 74
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;-><init>()V

    .line 75
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 76
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 77
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 78
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 80
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 81
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_VSTAB_STOP_DETECTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v20, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v21, v14

    const-string v14, "RECORDING_ERROR"

    move-object/from16 v22, v9

    const/4 v9, 0x1

    invoke-direct {v5, v8, v14, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v9, 0x0

    invoke-direct {v5, v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 84
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 85
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 87
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 88
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v12, v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 91
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 93
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 95
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 96
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 98
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 100
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 103
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v12, "VIDEO_RESTART"

    move-object/from16 v23, v15

    const/4 v15, 0x1

    invoke-direct {v9, v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v15, 0x0

    invoke-direct {v9, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 107
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 108
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 110
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 112
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 113
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 114
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TONE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 115
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v9, v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 116
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 117
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 119
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 120
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 121
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 123
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 125
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v7

    .line 126
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 127
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 129
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 131
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 134
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v7, v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v15, 0x0

    invoke-direct {v7, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 138
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 139
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 141
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 142
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 143
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SetActiveRequestRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_CAPTURE_VIDEO_REQUESTS:Ljava/util/List;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetActiveRequestRunnable;-><init>(Ljava/util/List;)V

    .line 144
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;-><init>()V

    .line 145
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 146
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 147
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 148
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 149
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 150
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 151
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 152
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 153
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 154
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 155
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 156
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 158
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 160
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 161
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 162
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STARTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 163
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 164
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 165
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 166
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 168
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v7

    .line 169
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v27, v5

    const/4 v5, 0x1

    invoke-direct {v7, v8, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 170
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 171
    invoke-static {v15, v5, v4, v3, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 172
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 173
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 176
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v7, v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v15, 0x0

    invoke-direct {v7, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 180
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 181
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 183
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 185
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;-><init>()V

    .line 188
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 190
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v7, "VIDEO_RECORDING"

    const/4 v15, 0x1

    invoke-direct {v5, v8, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 194
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 195
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 196
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;

    invoke-direct {v15, v0, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 197
    invoke-virtual {v4, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    move-object/from16 v28, v5

    move-object/from16 v5, v22

    invoke-direct {v7, v8, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 198
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 199
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 200
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 201
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 202
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;

    move-object/from16 v22, v7

    const/4 v7, 0x0

    invoke-direct {v15, v0, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 203
    invoke-virtual {v4, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v7, v8, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 204
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 205
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 206
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 207
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 208
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 209
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v7

    .line 210
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    move-object/from16 v30, v6

    const/4 v6, 0x5

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 211
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 213
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 215
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v7, 0x1

    invoke-direct {v6, v8, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 216
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 217
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 218
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 219
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 220
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 221
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 223
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v15, 0x4

    move-object/from16 v31, v6

    const/4 v6, 0x1

    invoke-direct {v7, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 224
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 225
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v15, "CLOSE_ON_STOP"

    move-object/from16 v32, v14

    const/4 v14, 0x0

    invoke-direct {v7, v8, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v14, "FINISH_APP"

    const/4 v2, 0x1

    invoke-direct {v7, v8, v14, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 229
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 231
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-object/from16 v33, v14

    const/4 v14, 0x0

    invoke-direct {v2, v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 233
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 234
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 235
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 237
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v1, 0x1

    invoke-direct {v14, v8, v15, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v1, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 242
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v1, v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 244
    invoke-virtual {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 245
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 246
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 247
    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 248
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 249
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 250
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 251
    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 252
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CaptureTriggerTypeGuardRunnable;

    move-object/from16 v34, v4

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-direct {v14, v0, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CaptureTriggerTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;)V

    .line 253
    invoke-virtual {v1, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 254
    invoke-virtual {v1, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 255
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 256
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 257
    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 258
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotSupportedGuardRunnable;

    move-object/from16 v35, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotSupportedGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 259
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 260
    invoke-virtual {v1, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 261
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 262
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 263
    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 264
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 265
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v36, v4

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;-><init>()V

    .line 266
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v37, v0

    const/4 v0, 0x1

    invoke-direct {v4, v8, v5, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 267
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 268
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 269
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 270
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 272
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 275
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v8, v12, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 279
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 280
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 281
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 282
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 283
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/VideoThermalCheckGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/VideoThermalCheckGuardRunnable;-><init>()V

    .line 284
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 285
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 286
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 287
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 288
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 289
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const-string v5, "SURFACE"

    invoke-direct {v4, v8, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 292
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 293
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 294
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 295
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 296
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    move-object/from16 v38, v1

    const/4 v1, 0x1

    move-object/from16 v39, v13

    const/4 v13, 0x0

    invoke-direct {v5, v1, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 297
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 298
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 299
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 300
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 301
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 302
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;-><init>()V

    .line 303
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    move-object/from16 v40, v5

    .line 304
    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v41, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v21

    invoke-direct {v13, v1, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 306
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 307
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 308
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 309
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ErrorFromCameraSideGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ErrorFromCameraSideGuardRunnable;-><init>()V

    .line 310
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 311
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v1

    .line 312
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v42, v14

    const-string v14, "OPEN_CAMERA_ERROR"

    move-object/from16 v43, v4

    const/4 v4, 0x1

    invoke-direct {v1, v8, v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 313
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v4, 0x0

    invoke-direct {v1, v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 316
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 317
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 318
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 319
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 320
    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v44, v6

    const/4 v6, 0x1

    invoke-direct {v13, v8, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 323
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 325
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v13, 0x0

    invoke-direct {v6, v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 327
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 328
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 329
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 330
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 331
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 332
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 333
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 334
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v3, p1

    .line 335
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 336
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;-><init>()V

    .line 337
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 338
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v13

    move-object/from16 v45, v9

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 339
    invoke-virtual {v13, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v46, v11

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 340
    invoke-virtual {v13, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v47, v11

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v48, v5

    const/4 v5, 0x1

    move-object/from16 v49, v1

    const/4 v1, 0x0

    invoke-direct {v11, v8, v14, v5, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 341
    invoke-virtual {v13, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 344
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v11, v8, v14, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 346
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 348
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {v5, v11, v13, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 350
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 351
    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v50, v14

    const/4 v14, 0x0

    invoke-direct {v13, v8, v15, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 352
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$SuperSlowMotionGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$SuperSlowMotionGuardRunnable;-><init>()V

    .line 354
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 356
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 357
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x0

    move-object/from16 v51, v5

    move-object/from16 v5, v32

    invoke-direct {v13, v8, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 359
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 361
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-static {v11, v14, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 363
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 364
    invoke-static {v1, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v32, v11

    const/4 v11, 0x0

    invoke-direct {v14, v8, v15, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 365
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TimelapseGuardRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TimelapseGuardRunnable;-><init>()V

    .line 367
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 369
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 370
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 372
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 374
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-static {v11, v14, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v11, v23

    .line 376
    invoke-static {v1, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v23, v4

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 377
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 379
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 381
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsUseCaseGuardRunnable;

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 382
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 383
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 385
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 387
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 390
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 392
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v4, v8, v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 393
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 394
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 396
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v4, v18

    .line 398
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 399
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v10

    .line 400
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v10, v8, v15, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 401
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v6, 0x4

    invoke-direct {v10, v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 403
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 405
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v6, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 407
    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v14, v8, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 410
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 412
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 414
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 416
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 417
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 419
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 421
    invoke-static {v1, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v15, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 422
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v3, 0x4

    invoke-direct {v13, v14, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 424
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    invoke-direct {v3, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 426
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v3, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 428
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v8, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 431
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 433
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-static {v3, v13, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 435
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 436
    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v13, v8, v15, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 437
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v14, 0x1

    move-object/from16 v52, v3

    const/4 v3, 0x4

    invoke-direct {v13, v14, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 439
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v3, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 441
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 443
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x0

    invoke-direct {v10, v8, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 444
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 446
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-static {v3, v13, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 448
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 449
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v10, v8, v15, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 450
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 451
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 452
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 453
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 455
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 457
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 458
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 460
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v10, v30

    .line 461
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 462
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 463
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 465
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 467
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v8, v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 468
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 469
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 471
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 473
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 474
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v14, v8, v15, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 476
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 478
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 480
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 481
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v8, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 483
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 485
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-static {v11, v14, v1, v0, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 487
    invoke-static {v1, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v15, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 488
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 490
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 492
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 493
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 494
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v8, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 495
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 497
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-static {v11, v14, v1, v0, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 499
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 500
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x1

    move-object/from16 v30, v9

    const/4 v9, 0x0

    invoke-direct {v13, v8, v15, v14, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 501
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 502
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 503
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 505
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 506
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 507
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 508
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v8, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 509
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 511
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 513
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 514
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 516
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v1, p1

    .line 517
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 518
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SetActiveRequestRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/SetActiveRequestRunnable;-><init>(Ljava/util/List;)V

    .line 519
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;-><init>()V

    .line 520
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 521
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v13

    move-object/from16 v14, v27

    .line 522
    invoke-virtual {v13, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v27, v5

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v53, v10

    invoke-static {v13, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v54, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;

    move-object/from16 v55, v11

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;-><init>(Z)V

    .line 523
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;-><init>(Z)V

    .line 525
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 527
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 529
    invoke-virtual {v13, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 530
    invoke-virtual {v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 531
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 532
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 533
    invoke-virtual {v5, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 534
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 535
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 536
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 537
    invoke-virtual {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 538
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 539
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    move-object/from16 v56, v14

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 540
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 542
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 544
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 546
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 547
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 548
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 549
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 550
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 551
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 552
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 553
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    move-object/from16 v11, v26

    .line 554
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x1

    move-object/from16 v26, v10

    const/4 v10, 0x0

    invoke-direct {v13, v8, v15, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 555
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    .line 556
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 557
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 558
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 559
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 560
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 561
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v10, v23

    .line 562
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 563
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 564
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 565
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 566
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 567
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 568
    invoke-virtual {v5, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 569
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 570
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 571
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 572
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    move-object/from16 v13, v49

    .line 573
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 574
    invoke-virtual {v5, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 575
    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 576
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 577
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 578
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 579
    invoke-virtual {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 580
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v11

    .line 581
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v49, v4

    const/4 v4, 0x1

    invoke-direct {v11, v8, v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 582
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 584
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v11, 0x0

    invoke-direct {v4, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 586
    invoke-virtual {v5, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 587
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 588
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 589
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 590
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TimelapseGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TimelapseGuardRunnable;-><init>()V

    .line 591
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v14, "OPEN_AFTER_CLOSE"

    move-object/from16 v57, v12

    const/4 v12, 0x1

    invoke-direct {v5, v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 593
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 594
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 595
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    move-object/from16 v5, v48

    .line 596
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 597
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 598
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 599
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 600
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 601
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v4, v32

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 602
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 603
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 604
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 605
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    move-object/from16 v32, v11

    const/4 v11, 0x0

    invoke-direct {v14, v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 606
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v14, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 608
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 610
    invoke-virtual {v4, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 611
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 612
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 613
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 614
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 615
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 616
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 617
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ACTIVITY_LAUNCHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 618
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    move-object/from16 v48, v8

    const/4 v8, 0x0

    invoke-direct {v14, v8}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 619
    invoke-virtual {v4, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 620
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 621
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 622
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 623
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 624
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 625
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 626
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 627
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 628
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 629
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 630
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    .line 632
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 634
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 635
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 636
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 637
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 638
    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 639
    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 640
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 641
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 642
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 643
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 644
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v4, v51

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 645
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 646
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 647
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 648
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 650
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 652
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 654
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 655
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 656
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 657
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SLOW_MOTION_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 658
    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 659
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 660
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 661
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 662
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 663
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 664
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 665
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 666
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 667
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v4, v46

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 668
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 669
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CheckVstabStopDetectionRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CheckVstabStopDetectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 670
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CleanRecordBundleRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CleanRecordBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 672
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 674
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 676
    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 677
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VSTAB_STOP_DETECTION_ON:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 678
    invoke-virtual {v8, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 679
    invoke-virtual {v8, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 680
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 681
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 682
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VSTAB_STOP_DETECTION_OFF:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 683
    invoke-virtual {v8, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 684
    invoke-virtual {v8, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 685
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 686
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 687
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 688
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 689
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v8, v44

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;-><init>(Z)V

    .line 690
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 691
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    move-object/from16 v10, v25

    .line 692
    invoke-virtual {v8, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 693
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 694
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 695
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    .line 696
    invoke-virtual {v8, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v8, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 697
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 698
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 699
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    .line 700
    invoke-virtual {v8, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 701
    invoke-virtual {v8, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 702
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 703
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v25, v3

    const/4 v3, 0x1

    move-object/from16 v44, v6

    move-object/from16 v6, v48

    invoke-direct {v14, v6, v15, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 704
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 706
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v3, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 708
    invoke-virtual {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 709
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 710
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 711
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 712
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 713
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 714
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 715
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;-><init>()V

    .line 716
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 718
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 720
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 721
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v8, v28

    .line 722
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 723
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 724
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 725
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v12, v31

    .line 726
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 727
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 728
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 729
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v14, v22

    .line 730
    invoke-virtual {v3, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 731
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 732
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 733
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v8, v29

    .line 734
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 735
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 736
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 737
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 738
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v8, v43

    .line 739
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 740
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v8, 0x1

    const/4 v14, 0x0

    invoke-direct {v12, v8, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 741
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 742
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 743
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 744
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v8, v34

    .line 745
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 746
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 747
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 748
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 749
    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 750
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 751
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v46, v2

    const/4 v2, 0x1

    invoke-direct {v8, v6, v15, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 752
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v2, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 754
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 755
    invoke-static {v14, v2, v3, v0, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 756
    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v8, v6, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 757
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 759
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v8, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 761
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 762
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 763
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 764
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CaptureTriggerTypeGuardRunnable;

    move-object/from16 v8, p0

    move-object/from16 v14, v35

    invoke-direct {v3, v8, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CaptureTriggerTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;)V

    .line 765
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v19

    .line 766
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 767
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 768
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 769
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 770
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 771
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v37

    .line 772
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 773
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 774
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 775
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v8, v36

    .line 776
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;-><init>()V

    .line 777
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 778
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 779
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 780
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v14, v39

    .line 781
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 782
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 783
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 784
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 785
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v19, v7

    const/4 v7, 0x1

    move-object/from16 v3, v57

    invoke-direct {v8, v6, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 787
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v7, v38

    .line 788
    invoke-static {v14, v3, v2, v0, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 789
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/VideoThermalCheckGuardRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/VideoThermalCheckGuardRunnable;-><init>()V

    .line 790
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v8, v18

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 791
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;

    const/4 v14, 0x0

    invoke-direct {v3, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 792
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 793
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 794
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 795
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v3, v41

    .line 796
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v40

    .line 797
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;-><init>()V

    .line 798
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 799
    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, v21

    move-object/from16 v3, v42

    invoke-direct {v14, v7, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 801
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 802
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 803
    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 804
    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 805
    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 806
    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 807
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 808
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 809
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;-><init>(Z)V

    .line 810
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 811
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 812
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v45

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 813
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 814
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 815
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 816
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 817
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 818
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 819
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 820
    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 821
    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v15, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 822
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 824
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 826
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 827
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 828
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 829
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 830
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 831
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 832
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 833
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 834
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    move-object/from16 v4, v37

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 835
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;-><init>()V

    .line 836
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 837
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    move-object/from16 v7, v56

    .line 838
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 839
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 840
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 841
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 842
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 843
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 844
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoSnapshotRunnable;

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoSnapshotRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 845
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 846
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v7, "VIDEO_PAUSED"

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 847
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 848
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 849
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 850
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 851
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v6, v7, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 852
    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 853
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 854
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 855
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 856
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v6, v7, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 857
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 858
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 859
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 860
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 861
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v3, v6, v7, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 862
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 863
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 864
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 865
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 866
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 867
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 868
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v52

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 869
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_PLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 870
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v8, "REVIEW_PLAY"

    const/4 v11, 0x1

    move-object/from16 v12, v32

    invoke-direct {v7, v12, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 871
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v8, "REVIEW_ACCEPT"

    invoke-direct {v7, v6, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 873
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 875
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 876
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 877
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 878
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 879
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 880
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 881
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 882
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 883
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 884
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 885
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 886
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 887
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 888
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v4, v22

    .line 889
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v11, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 890
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 891
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 892
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 893
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 894
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v7, v6, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 895
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 896
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 897
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 898
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v7, v46

    .line 899
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 900
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 901
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v6, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 902
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v13, v19

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 904
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 905
    invoke-static {v12, v11, v2, v0, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 906
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v19, v10

    move-object/from16 v10, v33

    invoke-direct {v11, v6, v10, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 907
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 908
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 909
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v11, v6, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 910
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 912
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 914
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 915
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 916
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 917
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 918
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 919
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoReviewRunnable;

    invoke-direct {v2, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoReviewRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 920
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 921
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 922
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v10, v55

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v6, v8, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 923
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    .line 924
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 925
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 926
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 927
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 928
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v11, v49

    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 929
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 930
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v14, v6, v8, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 931
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 933
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 935
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 936
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 937
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 938
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 939
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v44

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 940
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 941
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v10, v6, v8, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 942
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;-><init>(Z)V

    .line 944
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 946
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 947
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 948
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 949
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 950
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 951
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v40

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 952
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 953
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v3, v23

    .line 954
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 955
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 956
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 957
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 958
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 959
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/16 v8, 0x8

    const/4 v10, 0x1

    invoke-direct {v2, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 960
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 961
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 962
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockFocusCompleteRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockFocusCompleteRunnable;-><init>(Z)V

    .line 963
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 964
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 965
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 966
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 967
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 968
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 969
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v54

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 970
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 971
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 972
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v8, v26

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockFocusCompleteRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockFocusCompleteRunnable;-><init>(Z)V

    .line 973
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 974
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 975
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 976
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 977
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 978
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 979
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPrepareRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPrepareRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 980
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 981
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v3, v20

    .line 982
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 983
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 984
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 985
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 986
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v8, v31

    .line 987
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 988
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 989
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 990
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 991
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v11, v53

    .line 992
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    move-object/from16 v48, v5

    move-object/from16 v5, v27

    invoke-direct {v12, v6, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 993
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 994
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 995
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 996
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 997
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 998
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 999
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;-><init>()V

    .line 1000
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1001
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v12, v28

    .line 1002
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1003
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1004
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1005
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1006
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1007
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1008
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1009
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1011
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v14, v34

    .line 1012
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1013
    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1014
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1015
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1016
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v8, v36

    .line 1017
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;-><init>()V

    .line 1018
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1019
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1020
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1021
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1022
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoCliGuardRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoCliGuardRunnable;-><init>()V

    .line 1023
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1024
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1025
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1026
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1027
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1028
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x0

    invoke-direct {v12, v6, v15, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1029
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v8, v6, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1030
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1031
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1032
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1033
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v8, v29

    .line 1034
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1035
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v8, 0x5

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 1036
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1037
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1038
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1039
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v8, v16

    .line 1040
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1041
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1042
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1043
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1044
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1045
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1046
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1047
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1048
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1049
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1050
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1051
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1052
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v4, 0x1

    invoke-direct {v12, v6, v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1054
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1056
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v12, v48

    .line 1057
    invoke-static {v8, v4, v2, v0, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1058
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ErrorFromCameraSideGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ErrorFromCameraSideGuardRunnable;-><init>()V

    .line 1059
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x1

    move-object/from16 v12, v50

    invoke-direct {v4, v6, v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1060
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1061
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1062
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1063
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v4, v43

    .line 1064
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v8, 0x0

    .line 1065
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v4, 0x0

    move-object/from16 v32, v5

    const/4 v5, 0x1

    invoke-direct {v8, v5, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 1066
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1067
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1068
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1069
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1070
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1071
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1072
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1073
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1074
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1075
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1076
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1077
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoStopRunnable;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoStopRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 1078
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1079
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v4, v30

    .line 1080
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v5, v49

    .line 1081
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 p0, v3

    const/4 v3, 0x0

    invoke-direct {v8, v6, v15, v3, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 1082
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 1083
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1084
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1085
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1086
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1087
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1088
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v25

    .line 1089
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v8, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x1

    invoke-direct {v3, v6, v15, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 1090
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1091
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1092
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1093
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1094
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1095
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v47

    .line 1096
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v3, v6, v12, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 1097
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1098
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 1100
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1102
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v8, 0x0

    invoke-direct {v4, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1104
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1105
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1106
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1107
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1108
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v55

    .line 1109
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-direct {v3, v6, v15, v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 1110
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1111
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1112
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1113
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1114
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1115
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1116
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1119
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 1121
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1123
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1124
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1125
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1126
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1127
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1130
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1132
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1134
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1135
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1136
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1137
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1138
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1139
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1140
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1141
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;-><init>(Z)V

    .line 1142
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1143
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1144
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1145
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1146
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1147
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;-><init>(Z)V

    .line 1148
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PLAY_PAUSE_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1149
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1150
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1151
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1152
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1153
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v8, v16

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v11, v32

    invoke-direct {v10, v6, v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1154
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1155
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1156
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1157
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v5, v48

    .line 1158
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1159
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1160
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1161
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1162
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v2, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v6, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1163
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1165
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1167
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1168
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1169
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1170
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1171
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1172
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;-><init>()V

    .line 1173
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1174
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v10, v28

    .line 1175
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1176
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1177
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1178
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v10, v31

    .line 1179
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1180
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1181
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1182
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v10, v36

    .line 1183
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;-><init>()V

    .line 1184
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1185
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1186
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1187
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v11, v22

    .line 1188
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1189
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1190
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1191
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v11, v29

    .line 1192
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 1193
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1194
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1195
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1196
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v11, v43

    .line 1197
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1198
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v11, v12, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 1199
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1200
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1201
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1202
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v11, v34

    .line 1203
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;-><init>(Z)V

    .line 1204
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1205
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1206
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1207
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1208
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1209
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayToneGuardRunnable;-><init>(Z)V

    .line 1210
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PLAY_RESUME_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1211
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1212
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1213
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1214
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1215
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1216
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v16, v11

    const/4 v11, 0x1

    invoke-direct {v14, v6, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 1218
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1220
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 1221
    invoke-static {v7, v11, v2, v0, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1222
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;-><init>()V

    .line 1223
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1224
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1225
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1226
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v7, v39

    .line 1227
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 1228
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreMediaMountRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1229
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1230
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1231
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1232
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v6, v38

    .line 1233
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/VideoThermalCheckGuardRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/VideoThermalCheckGuardRunnable;-><init>()V

    .line 1234
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v7, v18

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 1235
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoThermalStopToastRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 1236
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1237
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1238
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1239
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1240
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1241
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1242
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1243
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1244
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1245
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1246
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1247
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1248
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_RESUMED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1249
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v6, p0

    .line 1250
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1251
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1252
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1253
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1254
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1255
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1256
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1257
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1258
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1259
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1260
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayPauseToneRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayPauseToneRunnable;-><init>(Z)V

    .line 1261
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1262
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v3, v19

    .line 1263
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1264
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1265
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1266
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1267
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1268
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1269
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1270
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1271
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1272
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1273
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1274
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayPauseToneRunnable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPlayPauseToneRunnable;-><init>(Z)V

    .line 1275
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1276
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1277
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1278
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1279
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1280
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1281
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1282
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1283
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1284
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1285
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1286
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1287
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method

.method public getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 11

    .line 1
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoAutoStartCheckRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoAutoStartCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UnlockMicSettingRunnable;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UnlockMicSettingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$FaceBeautyLockRunnable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$FaceBeautyLockRunnable;-><init>(Z)V

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSizeUpdateLockRunnable;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSizeUpdateLockRunnable;-><init>(Z)V

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockVstabOnCliRunnable;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockVstabOnCliRunnable;-><init>(Z)V

    .line 15
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 17
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/IdleOnEntryRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/IdleOnEntryRunnable;-><init>()V

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/StateHelper$MicSetupRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/StateHelper$MicSetupRunnable;-><init>()V

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/TriggerPendingEventRunnable;-><init>()V

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 28
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/IdleOnExitRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/IdleOnExitRunnable;-><init>()V

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 33
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 34
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 35
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 36
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 37
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 38
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 39
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MediaMountedGuardRunnable;-><init>()V

    .line 40
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 43
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 45
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 47
    iput-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 48
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 49
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 51
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 52
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 53
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 54
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 55
    iput-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 56
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 57
    iput-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 58
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 59
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 61
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 62
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 63
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 64
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 65
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 66
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 67
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HISTORY_STATE"

    invoke-direct {v4, v5, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 69
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 70
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 72
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 73
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 74
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 75
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 76
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 77
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 78
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 79
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 80
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 82
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 83
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 84
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 85
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 86
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 87
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/Collection;

    move-result-object p1

    .line 89
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 91
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 92
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 93
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 94
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v8, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 97
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 99
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 101
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v5, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 104
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 105
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 106
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 108
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 110
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 112
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 114
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 115
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 116
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 117
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 118
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$TapAnywhereGuardRunnable;-><init>()V

    .line 119
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 120
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 121
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 122
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 123
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 125
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 126
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 127
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 128
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 129
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 130
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 131
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 133
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 134
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 135
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 136
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 137
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 138
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 139
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 141
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 142
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 143
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 144
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 145
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 146
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 147
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 149
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 150
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 151
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 152
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v8, 0x5

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 153
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 154
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 155
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 156
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 157
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 159
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_INFO_DIALOG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 160
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 161
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->HELP_MODE_INFO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 162
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 163
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 164
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 166
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p1

    .line 168
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 170
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 171
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 172
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 173
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 174
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 175
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/Collection;

    move-result-object p1

    .line 177
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p1

    .line 179
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object p1

    .line 181
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 182
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 183
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 184
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 185
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 188
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeBannerSwitchCaseRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeBannerSwitchCaseRunnable;-><init>()V

    .line 190
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 192
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 194
    iput-object v8, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 195
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 196
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 198
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p1

    .line 200
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 202
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 203
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 204
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;

    invoke-direct {v8, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearCapturedVideoDataRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 207
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 209
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 211
    iput-object v6, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 212
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 213
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 215
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 216
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 217
    iput-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 218
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    invoke-direct {v4, v3, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V

    .line 219
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 220
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 221
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 223
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 224
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 225
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 226
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 227
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoDepthGuardRunnable;-><init>()V

    .line 228
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 229
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 230
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 232
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 233
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 236
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 237
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 238
    iput-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 239
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    const-string v4, "MODE"

    invoke-direct {v1, v7, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 250
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 251
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 252
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public getParentState()Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 5

    .line 1
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 5
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 15
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 16
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 19
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 20
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 21
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 22
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 23
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 28
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 29
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 30
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 37
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 38
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public getParentStateKey()Lcom/motorola/camera/fsm/camera/StateKey;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
