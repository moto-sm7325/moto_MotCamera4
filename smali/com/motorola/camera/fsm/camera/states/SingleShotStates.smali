.class public Lcom/motorola/camera/fsm/camera/states/SingleShotStates;
.super Ljava/lang/Object;
.source "SingleShotStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CheckZoomCompleteRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RestartShot2ShotKpiRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$QcfaStopPreviewGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CanPrelockFocusRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$UpdateQcfaCaptureExperienceRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ResendLongPressEventRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$HasTimerGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CodecCaptureGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleShotOnLongPressGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockSettingsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ClearSingleShotCaptureRecordRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AcceptReviewBeforeBurst;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureStopRepeatingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureCancelRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForSoftFlashRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleCaptureRequestRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SoftWareFlashLightGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureStopRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureCaptureRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;
    }
.end annotation


# static fields
.field public static final PHOTO_MODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_ADJUST_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_READY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_STOP_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_REPROC_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PRELOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LIGHT_SOFTWARE_FLASH:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_AE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_ZOOM:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_TIMER:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_READY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_READY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_CODEC:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_STOP_REPEATING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_STOP_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_REPROC_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CREATE_REPROC_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_MCF:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_FRAME_COLLECTED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MCF_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_DOC:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ADJUSTMENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_ADJUST_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW_RESULT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SAVING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->GOTO_IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v0, 0x12

    new-array v3, v0, [Ljava/lang/Integer;

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x6

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const/16 v5, 0x11

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v3, v7

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x18

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v3, v1

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v3, v1

    const/16 v0, 0x1d

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v3, v1

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v3, v1

    const/16 v0, 0x23

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/16 v0, 0x1f

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v3, v1

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v3, v1

    const/16 v0, 0x21

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v3, v1

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const/16 v0, 0x29

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 37
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->PHOTO_MODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static access$2400(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionMcfSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "QCFA_SHOT"

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 3
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    .line 8
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "HISTORY_STATE"

    invoke-direct {v6, v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 14
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v10, 0x0

    invoke-direct {v6, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 16
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 17
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 20
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 21
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 22
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;

    const/4 v11, 0x0

    .line 26
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "TIMER"

    invoke-direct {v6, v13, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v6, v12, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 29
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CanPrelockFocusRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CanPrelockFocusRunnable;-><init>()V

    .line 31
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 33
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 34
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v7, v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 37
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 38
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 40
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 41
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 42
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    .line 44
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v7, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 50
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 52
    iput-object v12, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 53
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 56
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 57
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 58
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 59
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v7, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 65
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 67
    iput-object v12, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 68
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 71
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 72
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 73
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 74
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    new-array v13, v5, [Ljava/lang/Integer;

    const/16 v14, 0x50

    .line 75
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-direct {v12, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([Ljava/lang/Integer;I)V

    .line 76
    iput-object v12, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 77
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v7, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 82
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 84
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 86
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 87
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 88
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 90
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 91
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 92
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    invoke-direct {v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 93
    iput-object v12, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 94
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v7, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 99
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 101
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 103
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 104
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 105
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 107
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 108
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 109
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x3

    invoke-direct {v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 110
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v7, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 116
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 118
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 119
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 122
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_TAKE_PICTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 123
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 124
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v7, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 130
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 132
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 133
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 136
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 137
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 138
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 139
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 140
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 141
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v7, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v14, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 146
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 148
    iput-object v14, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 149
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 150
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 152
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 153
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 154
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 155
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v7, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 161
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 163
    iput-object v12, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 164
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 165
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 167
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 168
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 169
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 170
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressStopGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressStopGuardRunnable;-><init>()V

    .line 172
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleShotOnLongPressGuardRunnable;

    invoke-direct {v13, v5, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleShotOnLongPressGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 174
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    .line 176
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v13, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 178
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 179
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v7, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 184
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 186
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 187
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 188
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 190
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 191
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressStopGuardRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressStopGuardRunnable;-><init>()V

    .line 194
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleShotOnLongPressGuardRunnable;

    invoke-direct {v12, v5, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleShotOnLongPressGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 196
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    invoke-direct {v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    .line 198
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 200
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v7, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 206
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 208
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 209
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 210
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 212
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 213
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 214
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 215
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$HasTimerGuardRunnable;

    invoke-direct {v3, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$HasTimerGuardRunnable;-><init>(Z)V

    .line 216
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v7, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 222
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 224
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 225
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 226
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 228
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 229
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 230
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$HasTimerGuardRunnable;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$HasTimerGuardRunnable;-><init>(Z)V

    .line 231
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 237
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 239
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 240
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getMaxAllowedJobs(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 2
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobCntMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    const/4 v2, 0x6

    if-eqz v0, :cond_5

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x10

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x11

    .line 8
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x5

    goto :goto_3

    :cond_5
    move v2, v1

    :cond_6
    :goto_3
    const/4 v0, 0x2

    if-ne v2, v1, :cond_8

    .line 9
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$SceneMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    const/4 v1, 0x3

    if-eq p0, v1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    .line 10
    :cond_8
    :goto_4
    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt(I)I

    move-result p0

    return p0
.end method

.method public static isDeterminateFgProcessingTimeShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DETERMINATE_FG_PROCESSING_TIME"

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->SLOW_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "CAPTURE_EXPERIENCE"

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static shouldShowAllUi(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightVisionMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isNightVisionDedicatedMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 32

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockSettingsRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockSettingsRunnable;-><init>(Z)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SceneUnlockRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneUnlockRunnable;-><init>()V

    .line 6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockSettingsRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockSettingsRunnable;-><init>(Z)V

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 10
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitAfterFireChange(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 12
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 13
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 14
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 16
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 18
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 19
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 21
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 22
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 23
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 25
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 27
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordGuardRunnable;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordGuardRunnable;-><init>(Z)V

    .line 28
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 29
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 31
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 33
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordGuardRunnable;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RemoveCaptureRecordGuardRunnable;-><init>(Z)V

    .line 34
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 35
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 37
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 38
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 39
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 40
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 42
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 43
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 44
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 45
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 47
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 49
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v13, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 50
    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 51
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v12

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 52
    invoke-virtual {v12, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v12, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;

    invoke-direct {v15, v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 53
    invoke-virtual {v12, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 54
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 55
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->PHOTO_MODES:Ljava/util/List;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;

    move-object/from16 p0, v7

    const/4 v7, 0x1

    invoke-direct {v15, v7, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 56
    invoke-static {v5, v12, v15, v6}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v16, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;

    invoke-direct {v5, v7, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 57
    invoke-static {v15, v12, v5, v6}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 58
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 60
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {v6, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 61
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 62
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 63
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 64
    invoke-virtual {v6, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v17, v8

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    move-object/from16 v18, v15

    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    .line 65
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 68
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RestartShot2ShotKpiRunnable;

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-direct {v15, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$RestartShot2ShotKpiRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 70
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v15, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 72
    invoke-virtual {v6, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 73
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 74
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 75
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 76
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 77
    invoke-virtual {v6, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    .line 78
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 79
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 80
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 81
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 82
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 83
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 84
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ResendLongPressEventRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ResendLongPressEventRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 85
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v8, "LONG_PRESS"

    invoke-direct {v7, v4, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 87
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 88
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 89
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 90
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 91
    invoke-virtual {v6, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v15, "IS_CLI_DISPLAY"

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-direct {v10, v11, v15, v8, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 92
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 94
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 95
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 97
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "HISTORY_STATE"

    invoke-direct {v9, v10, v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 100
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 102
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 104
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 106
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v5, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 108
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v15, 0x0

    invoke-direct {v5, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 110
    invoke-virtual {v6, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 111
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 112
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 113
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 114
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {v6, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 115
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v8, "PRELOCK_FOCUS_EXIT"

    invoke-direct {v6, v4, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 116
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 117
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 118
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 119
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 120
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 121
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {v6, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 122
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v6, v4, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 124
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 125
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 126
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 127
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 129
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;-><init>()V

    .line 130
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 131
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 132
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v10, "MCF_PROCESSING"

    const/4 v15, 0x0

    invoke-direct {v8, v9, v10, v15, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 135
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;-><init>(Z)V

    .line 137
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 139
    invoke-virtual {v5, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 140
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v5, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v15, "QCFA_SHOT"

    move-object/from16 v21, v11

    const/4 v11, 0x1

    invoke-direct {v10, v4, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$UpdateQcfaCaptureExperienceRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$UpdateQcfaCaptureExperienceRunnable;-><init>()V

    .line 143
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(I)V

    .line 145
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 147
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 148
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 149
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 150
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 151
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_READY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 152
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v10, v15, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 153
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 154
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 155
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 156
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 157
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v22, v7

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CodecCaptureGuardRunnable;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CodecCaptureGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 158
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 159
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 160
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 161
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 162
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 163
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 164
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;

    const/4 v11, 0x1

    move-object/from16 v23, v14

    const/4 v14, 0x0

    invoke-direct {v7, v11, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 165
    invoke-static {v5, v12, v7, v14}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 166
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 168
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;-><init>()V

    .line 169
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 170
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SoftWareFlashLightGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SoftWareFlashLightGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 171
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AE_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 172
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 173
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 174
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 175
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 176
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v8

    .line 177
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    move-object/from16 v25, v10

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    move-object/from16 v26, v13

    const/4 v13, 0x0

    invoke-direct {v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 178
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureCaptureRunnable;

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 180
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v8, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 182
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 183
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 184
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 185
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 186
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 187
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v14, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 188
    invoke-virtual {v6, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v14, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 189
    invoke-virtual {v6, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 190
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 191
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 192
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 193
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    move-object/from16 v27, v3

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    move-object/from16 v28, v4

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v3, v4, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 194
    invoke-virtual {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v3, v4, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 195
    invoke-virtual {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 196
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CREATE_REPROC_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 197
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 198
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 199
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 200
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v8

    .line 201
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;

    move-object/from16 v30, v9

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;-><init>(Z)V

    .line 202
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v15, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 204
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;-><init>()V

    .line 206
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v8, v13, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 208
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v8, v15, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 209
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 210
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 211
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 212
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 213
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 214
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;

    move-object/from16 v31, v3

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;-><init>(Z)V

    .line 216
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v3, v15, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 218
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;-><init>()V

    .line 220
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v3, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 222
    invoke-virtual {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v3, v15, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 223
    invoke-virtual {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 224
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 225
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 226
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 227
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 228
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 229
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 230
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 231
    invoke-static {v5, v12}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 232
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 234
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CheckZoomCompleteRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CheckZoomCompleteRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 235
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 236
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_ZOOM_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 237
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 238
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 239
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 240
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 242
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForSoftFlashRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForSoftFlashRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 243
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 244
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v9, v10, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 245
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v9, v10, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 246
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 247
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 248
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 249
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 250
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v11, v4, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 251
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v11, v4, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 252
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 253
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v4, v31

    invoke-virtual {v5, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 254
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 255
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 256
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 257
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v12, v15, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 259
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;-><init>()V

    .line 261
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v11, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 263
    invoke-virtual {v5, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;

    invoke-direct {v11, v15, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCaptureTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 264
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 265
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 266
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 267
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 268
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 269
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 270
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 271
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 272
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 273
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 274
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    move-object/from16 v5, v30

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    const/4 v5, 0x1

    .line 275
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->autoTransition(Z)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 276
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 277
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v9, v29

    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 278
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    invoke-direct {v12, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 280
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v13, 0x0

    move-object/from16 v4, v28

    invoke-direct {v12, v13, v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 282
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 284
    invoke-virtual {v5, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 285
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 286
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 287
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 288
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 289
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 290
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    invoke-direct {v12, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 292
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13, v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 294
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 296
    invoke-virtual {v5, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 297
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    const-string v13, "KEY_CODE"

    move-object/from16 v28, v3

    const/16 v3, 0x1b

    invoke-direct {v12, v4, v13, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    .line 299
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 301
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 302
    invoke-static {v11, v3, v5, v2, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 303
    invoke-static {v5, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    invoke-direct {v12, v15, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 304
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;-><init>()V

    .line 306
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v11, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 308
    invoke-virtual {v5, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 309
    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 310
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 311
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 312
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 313
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 314
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 316
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 318
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 319
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 320
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v5, v27

    .line 321
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v10, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 322
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v14, 0x1

    move-object/from16 v27, v6

    new-array v6, v14, [Ljava/lang/Integer;

    const/16 v29, 0x1b

    .line 324
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v6, v30

    invoke-direct {v12, v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([Ljava/lang/Integer;I)V

    .line 325
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 327
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 330
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 332
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 334
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 335
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 337
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v6, v19

    .line 338
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 339
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    invoke-direct {v14, v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 341
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 343
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 345
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 346
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 347
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 348
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 349
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 350
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 351
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 352
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    invoke-direct {v12, v10, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 353
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12, v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 355
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 357
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 358
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    const/16 v12, 0x1b

    invoke-direct {v11, v4, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    .line 360
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 362
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {v10, v14, v3, v2, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 364
    invoke-static {v3, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;-><init>(Z)V

    .line 365
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v15, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 367
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;-><init>()V

    .line 369
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 371
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 372
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 373
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 375
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 376
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v10, v28

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 377
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForZoomGuardRunnable;-><init>(Z)V

    .line 379
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v15, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 381
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AllowShutterGuardRunnable;-><init>()V

    .line 383
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 385
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 386
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 387
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 388
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 389
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 390
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/16 v13, 0x50

    .line 391
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x5

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([Ljava/lang/Integer;I)V

    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 392
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 393
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 394
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 395
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 397
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 398
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 399
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 400
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 401
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;

    move-object/from16 v9, v26

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 402
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 403
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 404
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureStopRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureStopRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 405
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_STOP_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 406
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 407
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 408
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 409
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 410
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$QcfaStopPreviewGuardRunnable;

    invoke-direct {v14, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$QcfaStopPreviewGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 411
    invoke-virtual {v3, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 412
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 413
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 414
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 415
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 416
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 417
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 418
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 419
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 420
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 421
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureReprocCaptureRequestRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureReprocCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 422
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 423
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 424
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 425
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 426
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 427
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 428
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 429
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;-><init>()V

    .line 430
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 431
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 432
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v11, v15, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 433
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 434
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 435
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 436
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 437
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v15, 0x2

    invoke-direct {v11, v15, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 438
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 439
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 440
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 441
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 442
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 443
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 444
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    move-object/from16 v19, v5

    const/4 v5, 0x3

    invoke-direct {v15, v5, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 445
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 447
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 449
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 450
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 451
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 452
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 453
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 454
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 455
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 456
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 457
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FRAME_COLLECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 458
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 459
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 461
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 462
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 463
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 464
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 465
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 466
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 467
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 468
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 469
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 470
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v14, 0x2

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 471
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 472
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 473
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 474
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 475
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 476
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    move-object/from16 v26, v6

    const/4 v6, 0x3

    invoke-direct {v14, v6, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 478
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v6, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 480
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 482
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 483
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 484
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 485
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 486
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 487
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 488
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 489
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 490
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 491
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 492
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 493
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 494
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 495
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 496
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 497
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 498
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 499
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureStopRepeatingRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureStopRepeatingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 500
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 501
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 502
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 503
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 504
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 505
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 506
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 507
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleCaptureRequestRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleCaptureRequestRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 508
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 509
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 510
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v6, v24

    .line 511
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 512
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(I)V

    .line 513
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 514
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 515
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 516
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 517
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;

    invoke-direct {v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;-><init>(I)V

    .line 518
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(I)V

    .line 519
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 520
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 521
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 522
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 523
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 524
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 526
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 528
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 529
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 531
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 532
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureCaptureRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LongExposureCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 533
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 534
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 535
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 536
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 537
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 538
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 540
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaCaptureOngoingGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaCaptureOngoingGuardRunnable;-><init>(Z)V

    .line 542
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 544
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 545
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 546
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 547
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 548
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 549
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 551
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 553
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 554
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 555
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 556
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 557
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 558
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 560
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CopyCameraKeyStatusRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v11, v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 561
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;

    invoke-direct {v11, v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 563
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    move-object/from16 v14, v20

    invoke-direct {v11, v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 565
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CopyKeyCaptureTriggerData;

    invoke-direct {v11, v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyKeyCaptureTriggerData;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 567
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AcceptReviewBeforeBurst;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AcceptReviewBeforeBurst;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 569
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-static {v6, v12, v3, v2, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 571
    invoke-static {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 572
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v14, v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 574
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v14, 0x4

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 576
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 578
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 579
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 580
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 581
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 582
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v14, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 583
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v13, v15, v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 585
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v13, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 587
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 588
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 589
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    invoke-direct {v13, v14, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 590
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/RemoveBundleKeyRunnable;

    const-string v14, "REVIEW_ACCEPT"

    invoke-direct {v13, v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RemoveBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-static {v11, v12, v3, v2, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v11, v23

    .line 594
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-direct {v12, v13, v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 595
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 596
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 597
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 598
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v12, v18

    .line 599
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 600
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 601
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 602
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 603
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 604
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureCancelRunnable;

    const/4 v12, 0x0

    invoke-direct {v3, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureCancelRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 605
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 606
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 607
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;

    const/4 v13, 0x1

    invoke-direct {v8, v13, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$StoreCancelRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 608
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 609
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 610
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 611
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 612
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 613
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v8, 0x0

    invoke-direct {v3, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 614
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 615
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v8, v26

    .line 616
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v12, v22

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 617
    invoke-virtual {v3, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 618
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 619
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 620
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 621
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 622
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 623
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 624
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 625
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 626
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfProcessingCompleteGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfProcessingCompleteGuardRunnable;-><init>()V

    .line 627
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v15, "PROCESSING_COMPLETE"

    move-object/from16 v18, v10

    const/4 v10, 0x1

    invoke-direct {v13, v4, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 628
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 629
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 630
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 631
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 632
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 633
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 634
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 635
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v10, v17

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 636
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 637
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 638
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v13, p0

    .line 639
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 640
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 641
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 642
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 643
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 644
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_ADJUST_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 645
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 646
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 647
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 648
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 649
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    .line 650
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 651
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 652
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 653
    invoke-static {v5, v15}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 654
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 655
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 656
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 657
    invoke-virtual {v2, v15}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->autoTransition(Z)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 658
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v5, v27

    .line 659
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 660
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 661
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 662
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 663
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 664
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 665
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 666
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 667
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 668
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 669
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 670
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 671
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 672
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 673
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 674
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 675
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v5, v16

    .line 676
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 677
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 678
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 679
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 680
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 681
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    const/4 v8, 0x1

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 682
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 683
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 685
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v5, v19

    .line 686
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 687
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 688
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CTSModeGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CTSModeGuardRunnable;-><init>(Z)V

    .line 689
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 691
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 693
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 694
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 695
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 696
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 697
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 698
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 699
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 700
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CTSModeGuardRunnable;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CTSModeGuardRunnable;-><init>(Z)V

    .line 701
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v8, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 703
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;

    invoke-direct {v5, v9, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 704
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 705
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 706
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 707
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 708
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ClearSingleShotCaptureRecordRunnable;

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ClearSingleShotCaptureRecordRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 709
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v9, v21

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 711
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 713
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 714
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 715
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 716
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 717
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 718
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 719
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 720
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 721
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/RemoveBundleKeyRunnable;

    invoke-direct {v6, v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RemoveBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 723
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 724
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 725
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 726
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;-><init>(Z)V

    .line 727
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 729
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 731
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 732
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 733
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 734
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 735
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;-><init>(Z)V

    .line 736
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v11, "REVIEW_SAVED"

    const/4 v12, 0x0

    invoke-direct {v9, v4, v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 738
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 740
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 742
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 743
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 744
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 745
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 746
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewSaveGuardRunnable;-><init>(Z)V

    .line 747
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v4, v11, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 749
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 751
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v10, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 753
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 754
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 755
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 756
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAVING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 757
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v10, 0x0

    .line 758
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v4, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 759
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 760
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 761
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 762
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 763
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 764
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 765
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 766
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 767
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 768
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 769
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 770
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 771
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 772
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 773
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 774
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 775
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 776
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultGuardRunnable;-><init>(ILcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V

    .line 777
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 778
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 779
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 780
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 781
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 782
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/QcfaStates;-><init>(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
