.class public Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;
.super Ljava/lang/Object;
.source "CameraModeSwitch.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$PrcPermissionBlockExplainRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$DualCaptureLayoutChangeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HalProcessingGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CurrentSceneSupportedByModeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$MenuCaseGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$EndKpiWaitingForResumeActivity;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForResumeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCheckPermissionsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckModeRequirementsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$InvalidModeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsSameTargetIdGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$RequireMcfGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStopRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$OpenLocationSettingsGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureVideoVoiceAssistantGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$WaitMcfInitGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuStoreModeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ResetBackTypeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipTutorialsGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsDualCameraGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCloseCameraRequired;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSwitchModeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateSurfacesRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSetupRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable;
    }
.end annotation


# static fields
.field public static final MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CHANGE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN_WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->OPEN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_MCF_INIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->DRAG:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCROLL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_SURFACES:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UI_COMPONENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE_SHOW_UI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS_CHECK:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS_EXPLAIN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CANNOT_SWITCH:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static access$3600(II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->saveSlider(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Ljava/util/Collection<",
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
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "HISTORY_STATE"

    invoke-direct {v3, v4, v5, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 12
    iput-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 13
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getFallbackMode(ILjava/util/List;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/16 v3, 0x18

    const/16 v4, 0x12

    const/4 v5, 0x6

    if-ne p0, v5, :cond_0

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move p0, v4

    goto/16 :goto_1

    :cond_0
    if-ne p0, v4, :cond_1

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move p0, v5

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x3

    if-eq p0, v4, :cond_2

    const/16 v5, 0x8

    if-eq p0, v5, :cond_2

    const/16 v5, 0xd

    if-eq p0, v5, :cond_2

    const/16 v5, 0x22

    if-ne p0, v5, :cond_3

    .line 3
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move p0, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x11

    if-ne p0, v0, :cond_4

    .line 4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-ne p0, v3, :cond_5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move p0, v1

    goto :goto_1

    :cond_5
    if-ne p0, v1, :cond_6

    if-nez p2, :cond_6

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p0, v3

    goto :goto_1

    :cond_6
    const/16 p2, 0x9

    if-eq p0, p2, :cond_8

    const/4 p2, 0x2

    if-ne p0, p2, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_8
    :goto_0
    move p0, v2

    :cond_9
    :goto_1
    return p0
.end method

.method public static getInitListenerTransitions()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
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
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 6
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v4, 0x1

    const-string v5, "MCF_INIT"

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 7
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 8
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLaunchModeUiEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSwitchModeRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSwitchModeRunnable;-><init>()V

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    return-object v1
.end method

.method public static getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>()V

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 16
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 17
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    return-object v1
.end method

.method public static getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MonoSwitchGuardRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/MonoSwitchGuardRunnable;-><init>(Z)V

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>()V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 18
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 19
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    return-object v1
.end method

.method public static getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "SWITCH_CASE"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object p0
.end method

.method public static getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "MODE_DIRECTION"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0
.end method

.method public static getSwitchEntryTransitions()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
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
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 13
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 15
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 17
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 18
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 21
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 22
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 23
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 25
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 26
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSwitchModeEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 6

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSwitchModeRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSwitchModeRunnable;-><init>()V

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Z[Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v2, v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 10
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 11
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    return-object v1
.end method

.method public static getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "USE_CASE"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    return-object p0
.end method

.method public static isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "USE_CASE"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z
    .locals 4

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "USE_CASE"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 4
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 46

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitAfterFireChange(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 3
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchModeEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLaunchModeUiEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 5
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 6
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/DeleteTempVideoFileRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/DeleteTempVideoFileRunnable;-><init>()V

    .line 9
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 11
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 12
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 14
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 15
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "LOADING_COMPLETE"

    const/4 v10, 0x1

    invoke-direct {v8, v3, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 19
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 21
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 23
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 24
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 25
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 26
    invoke-virtual {v8, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 27
    invoke-virtual {v8, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 28
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 29
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 30
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 31
    invoke-virtual {v8, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v12, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 32
    invoke-virtual {v8, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 33
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 34
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 35
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 36
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 37
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 38
    invoke-virtual {v8, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    invoke-direct {v12, v6, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 39
    invoke-virtual {v8, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 40
    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>()V

    .line 41
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 43
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 45
    invoke-virtual {v8, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 46
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 47
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 48
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 49
    invoke-virtual {v8, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 50
    invoke-virtual {v8, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 51
    invoke-virtual {v8, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 52
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    .line 53
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 54
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v8

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 55
    invoke-virtual {v8, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 56
    invoke-virtual {v8, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    invoke-direct {v15, v10, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 57
    invoke-virtual {v8, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 58
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 59
    invoke-static {v2, v7, v14, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 60
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$MenuCaseGuardRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$MenuCaseGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 61
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 62
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 63
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 64
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 65
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 66
    invoke-virtual {v7, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 67
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 68
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 69
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    move-object/from16 p0, v10

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 70
    invoke-virtual {v7, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 71
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 72
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 73
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    move-object/from16 v16, v15

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 74
    invoke-virtual {v7, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .line 75
    invoke-virtual {v7, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 76
    invoke-virtual {v7, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 77
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 78
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 79
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 81
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 82
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 83
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 84
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v18, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 85
    invoke-virtual {v7, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 86
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 87
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 88
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 89
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 90
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 91
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 92
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 93
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 94
    invoke-virtual {v5, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 95
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-direct {v7, v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 96
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 97
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 98
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 99
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 100
    invoke-virtual {v5, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 101
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 102
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 103
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 104
    invoke-virtual {v5, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 105
    invoke-virtual {v5, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    invoke-direct {v7, v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 106
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 107
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 108
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 109
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 110
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v5, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 111
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 112
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 113
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x0

    .line 115
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 116
    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 117
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    .line 118
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 119
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 121
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckModeRequirementsRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckModeRequirementsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 124
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable;

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 126
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;-><init>(Z)V

    .line 128
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 130
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 131
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 132
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v7, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v21, v8

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v22, v15

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v23, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v24, 0x0

    aput-object v23, v15, v24

    move-object/from16 v24, v12

    const/4 v12, 0x0

    invoke-direct {v8, v15, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 133
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$RequireMcfGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v8, v15, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$RequireMcfGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 135
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v8, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 137
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 138
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 139
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 140
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 141
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v7, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v23, v12, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 142
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v12, "MCF_INIT"

    const/4 v15, 0x1

    move-object/from16 v25, v13

    const/4 v13, 0x0

    invoke-direct {v11, v3, v12, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 144
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v11, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 146
    invoke-virtual {v7, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 147
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 148
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 149
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 150
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 151
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v11, 0x1

    move-object/from16 v26, v14

    new-array v14, v11, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v23, v14, v13

    invoke-direct {v8, v14, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 152
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "MCF_INIT_PENDING"

    invoke-direct {v8, v3, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 154
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 155
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 156
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 157
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v27, v6

    const-string v6, "MCF_PROCESSING"

    move-object/from16 v28, v4

    const/4 v4, 0x0

    invoke-direct {v14, v15, v6, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 158
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v29, v5

    const-string v5, "HAL_PROCESSING"

    invoke-direct {v14, v15, v5, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 160
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-object/from16 v30, v8

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v31, 0x0

    aput-object v8, v14, v31

    move-object/from16 v31, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v32, 0x1

    aput-object v1, v14, v32

    sget-object v32, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v33, 0x2

    aput-object v32, v14, v33

    sget-object v33, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v34, 0x3

    aput-object v33, v14, v34

    sget-object v35, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v36, 0x4

    aput-object v35, v14, v36

    sget-object v36, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v37, 0x5

    aput-object v36, v14, v37

    sget-object v38, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v39, 0x6

    aput-object v38, v14, v39

    sget-object v39, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v40, 0x7

    aput-object v39, v14, v40

    const/4 v0, 0x0

    invoke-direct {v4, v14, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 162
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v4, v11, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 164
    invoke-virtual {v7, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 165
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 166
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 167
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    move-object/from16 v41, v12

    const/4 v12, 0x1

    invoke-direct {v11, v15, v6, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 169
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/16 v11, 0x8

    new-array v11, v11, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v8, v11, v14

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v32, v11, v12

    aput-object v33, v11, v34

    const/4 v12, 0x4

    aput-object v35, v11, v12

    aput-object v36, v11, v37

    const/4 v12, 0x6

    aput-object v38, v11, v12

    aput-object v39, v11, v40

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 171
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 173
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 174
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 175
    invoke-static {v2, v0, v9, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    .line 176
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v7, v15, v5, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 178
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/16 v7, 0x8

    new-array v7, v7, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v8, v7, v12

    aput-object v1, v7, v11

    const/4 v11, 0x2

    aput-object v32, v7, v11

    aput-object v33, v7, v34

    const/4 v11, 0x4

    aput-object v35, v7, v11

    aput-object v36, v7, v37

    const/4 v11, 0x6

    aput-object v38, v7, v11

    aput-object v39, v7, v40

    const/4 v11, 0x0

    invoke-direct {v5, v7, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 180
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 182
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 183
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 184
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 185
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 186
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v23, v12, v14

    const/4 v11, 0x0

    invoke-direct {v7, v12, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 189
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v7, v3, v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 191
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 193
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v7, v41

    invoke-direct {v6, v3, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 194
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 195
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 196
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 197
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 198
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v2, p1

    .line 199
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 200
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v6, v31

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 201
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 202
    invoke-virtual {v11, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v12, v30

    invoke-virtual {v11, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfProcessingCompleteGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfProcessingCompleteGuardRunnable;-><init>()V

    .line 203
    invoke-virtual {v11, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 204
    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v11

    .line 205
    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 206
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v11

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 207
    invoke-virtual {v11, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v11, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HalProcessingGuardRunnable;

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HalProcessingGuardRunnable;-><init>(Z)V

    .line 208
    invoke-virtual {v11, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 209
    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v11

    .line 210
    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 211
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v11

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 212
    invoke-virtual {v11, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v11, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 213
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v5

    const-string v5, "HISTORY_STATE"

    invoke-direct {v14, v7, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 216
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBundleToHistory;

    const-string v14, "MODE"

    invoke-direct {v4, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBundleToHistory;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 220
    invoke-virtual {v11, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 221
    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 222
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 223
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 224
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 225
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v11, 0x0

    invoke-direct {v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(Z)V

    .line 226
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 227
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 228
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 229
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CurrentSceneSupportedByModeGuardRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CurrentSceneSupportedByModeGuardRunnable;-><init>(Z)V

    .line 230
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 231
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 232
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 233
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 234
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 235
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 236
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 237
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 238
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 239
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>()V

    .line 240
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 241
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 242
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v31, v11

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v40, v12

    const-string v12, "CLOSE_ON_STOP"

    move-object/from16 v42, v5

    const/4 v5, 0x1

    move-object/from16 v43, v7

    const/4 v7, 0x0

    invoke-direct {v11, v15, v12, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 243
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 244
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 245
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 246
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 247
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCloseCameraRequired;

    move-object/from16 v44, v9

    const/4 v9, 0x0

    invoke-direct {v11, v5, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCloseCameraRequired;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 248
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 249
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 250
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 251
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 253
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v45, 0x0

    aput-object v33, v11, v45

    const/16 v33, 0x1

    aput-object v36, v11, v33

    move-object/from16 v33, v3

    const/4 v3, 0x0

    invoke-direct {v9, v11, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 255
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 257
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 258
    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 259
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 260
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 261
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v11, 0x0

    aput-object v1, v5, v11

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 265
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsDualCameraGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v5, v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsDualCameraGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 267
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsSameTargetIdGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsSameTargetIdGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 269
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 271
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 272
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 273
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 274
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 275
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 276
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v11, 0x0

    aput-object v1, v9, v11

    const/4 v11, 0x0

    invoke-direct {v5, v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 277
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$DualCaptureLayoutChangeGuardRunnable;

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$DualCaptureLayoutChangeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 279
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 281
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 282
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 283
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 284
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 285
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 286
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v9, 0x6

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v11, 0x0

    aput-object v8, v9, v11

    aput-object v32, v9, v5

    const/4 v5, 0x2

    aput-object v38, v9, v5

    aput-object v1, v9, v34

    const/4 v5, 0x4

    aput-object v39, v9, v5

    aput-object v35, v9, v37

    const/4 v5, 0x0

    invoke-direct {v4, v9, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 287
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 288
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 289
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 290
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 291
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v9, v15, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 296
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v13, 0x0

    invoke-direct {v9, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 298
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 299
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 300
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 301
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 302
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 304
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v15, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 307
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 309
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 310
    invoke-virtual {v3, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 311
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 312
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 314
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ResetBackTypeRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ResetBackTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 315
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStopRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStopRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 317
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 319
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 321
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 322
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 323
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 324
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;

    invoke-direct {v3, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 325
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 326
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_CALLED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 327
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v13, 0x0

    aput-object v8, v9, v13

    invoke-direct {v7, v9, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 328
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 329
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 330
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 331
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 332
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 333
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 334
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;

    invoke-direct {v3, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 335
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 336
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 337
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 338
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCheckPermissionsRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCheckPermissionsRunnable;-><init>()V

    .line 339
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 340
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_REQUIRED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 341
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 342
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 343
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 344
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 345
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v8

    .line 346
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    move-object/from16 v34, v7

    const/4 v7, 0x1

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 347
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;-><init>()V

    .line 349
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 351
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_GRANTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 352
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 353
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 354
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 356
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 357
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    move-object/from16 v35, v9

    const/4 v9, 0x0

    invoke-direct {v13, v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 359
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;-><init>()V

    .line 361
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v9, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 363
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 364
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 365
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 366
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 367
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 368
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 369
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 370
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 371
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 372
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 373
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 374
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 375
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    move-object/from16 v36, v11

    const/4 v11, 0x1

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 377
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 379
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 381
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 382
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 383
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 384
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 385
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 386
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 387
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    move-object/from16 v37, v4

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 389
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 391
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v4, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 393
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 394
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 395
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 396
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 397
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 398
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 399
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 400
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 401
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForResumeRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForResumeRunnable;-><init>()V

    .line 402
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$EndKpiWaitingForResumeActivity;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$EndKpiWaitingForResumeActivity;-><init>()V

    .line 403
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 404
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 405
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 406
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 407
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 408
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v7, v30

    .line 409
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v8, 0x0

    .line 410
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    move-object/from16 v13, v33

    move-object/from16 v7, v41

    invoke-direct {v8, v13, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 411
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 412
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 413
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 414
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 415
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 416
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 417
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 418
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 419
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 420
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 421
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 422
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;-><init>()V

    .line 424
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$PrcPermissionBlockExplainRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$PrcPermissionBlockExplainRunnable;-><init>()V

    .line 426
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 428
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_DENIED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 429
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 430
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 431
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 432
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 433
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 434
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 435
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 436
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 437
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 438
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 439
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 440
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 441
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 443
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 445
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 446
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 447
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v13, "RECORDING_START"

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    move-object/from16 v38, v14

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 451
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 453
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 455
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 456
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 457
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 458
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 459
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 460
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 461
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 463
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 465
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 466
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 467
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 471
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 473
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 475
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 476
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 477
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 478
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 479
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 480
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 481
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 482
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 483
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 484
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 485
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 486
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 487
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TORCH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 488
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x0

    .line 489
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 490
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 491
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 492
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 493
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 494
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v8, v29

    .line 495
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 496
    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 497
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 499
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 501
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v13, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 503
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-static {v10, v11, v3, v0, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 505
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v14, "CLOSE_AFTER_OPEN"

    move-object/from16 v29, v5

    const/4 v5, 0x0

    invoke-direct {v13, v15, v14, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 506
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v39, v12

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v23, v12, v5

    const/4 v5, 0x0

    invoke-direct {v13, v12, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 508
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$WaitMcfInitGuardRunnable;

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$WaitMcfInitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 510
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 512
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 513
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 514
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 515
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 516
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 517
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 518
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v15, v14, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 519
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 521
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 523
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 524
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 525
    invoke-static {v0, v3, v7, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v15, v14, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 528
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 530
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 532
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 533
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    move-object/from16 v5, v38

    .line 534
    invoke-static {v0, v3, v7, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 535
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v15, v14, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 536
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v7, v15, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 537
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 538
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 539
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 540
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 541
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 542
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v12, v15, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 543
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 544
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 545
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 546
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v12, v37

    .line 547
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 548
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 549
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 550
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v37, v1

    const/4 v1, 0x1

    invoke-direct {v13, v15, v14, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 551
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v13, v36

    invoke-direct {v1, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 553
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move-object/from16 v36, v8

    move-object/from16 v8, v28

    .line 554
    invoke-static {v11, v1, v3, v0, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-direct {v3, v15, v14, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 556
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v3, v15, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 557
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 558
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 560
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 561
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 562
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 563
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 564
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 565
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 566
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 567
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 569
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 570
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 571
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 574
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateSurfacesRunnable;

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateSurfacesRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 576
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfUpdateOrientationRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfUpdateOrientationRunnable;-><init>()V

    .line 578
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v1, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 580
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 581
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 582
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v3, v35

    .line 583
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 584
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 585
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 586
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 587
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v3, 0x0

    .line 588
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;-><init>()V

    .line 589
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 590
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 591
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 593
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 594
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v3, 0x1

    .line 595
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v8, "OPEN_AFTER_CLOSE"

    invoke-direct {v3, v15, v8, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 596
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 597
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 598
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 599
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 600
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v35, v14

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v38, v11

    const/4 v11, 0x0

    invoke-direct {v14, v15, v8, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 601
    invoke-virtual {v1, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 602
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 603
    invoke-static {v0, v1, v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 604
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v3, v15, v8, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 605
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 606
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 607
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 608
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 609
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 610
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v3, v15, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 611
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 612
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 613
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 614
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 615
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 616
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v3, v15, v8, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 617
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 618
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 620
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v14, v15, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 621
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 623
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 624
    invoke-static {v3, v11, v1, v0, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 625
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v3, v15, v8, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 626
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 628
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/DeleteTempVideoFileRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/DeleteTempVideoFileRunnable;-><init>()V

    .line 629
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 631
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 633
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 634
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 635
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 636
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v3, v34

    .line 637
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v11, 0x0

    .line 638
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v11, v15, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 639
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 640
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 641
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 642
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 643
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 644
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 645
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v10, v30

    .line 646
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 647
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 648
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v15, v8, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 650
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 652
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v11, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 654
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 655
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 656
    invoke-static {v0, v1, v10, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 657
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 658
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v15, v8, v10, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 659
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 661
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 663
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 664
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 666
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v4, v15, v8, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 668
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 669
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 670
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 671
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v15, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 672
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 674
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    .line 675
    invoke-static {v4, v9, v1, v0, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 676
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v4, v15, v8, v9, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 677
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 678
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 679
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 680
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 681
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 682
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v15, v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 683
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 684
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 685
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 686
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 687
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 688
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSetupRunnable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 689
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 690
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v3, v44

    .line 691
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 692
    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 693
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 695
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 696
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 697
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 698
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 699
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 700
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 701
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 702
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 703
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 704
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 705
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 707
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    .line 708
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;-><init>(Z)V

    .line 710
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 712
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 713
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 714
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v11, v36

    .line 715
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;

    invoke-direct {v14, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 716
    invoke-virtual {v1, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 717
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 718
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 719
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 721
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v10, v37

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 723
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 724
    invoke-static {v14, v3, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 725
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 726
    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    move-object/from16 v30, v3

    move-object/from16 v3, v35

    invoke-direct {v10, v15, v3, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 727
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 729
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 731
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v15, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 732
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 733
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 734
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 735
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 736
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 737
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v10, v15, v3, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 738
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v15, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 739
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 740
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 741
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 742
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 743
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 744
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v15, v3, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 745
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 746
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 747
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v15, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 748
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 750
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 751
    invoke-static {v9, v10, v1, v0, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    const/4 v9, 0x0

    .line 752
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 753
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 754
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v15, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 755
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 757
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 758
    invoke-static {v9, v10, v1, v0, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    const/4 v7, 0x0

    .line 759
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v15, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 760
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 761
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v9, v28

    .line 762
    invoke-static {v0, v1, v9, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 763
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v5, v15, v3, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 764
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v15, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 765
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 766
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 767
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 768
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 769
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 770
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;-><init>()V

    .line 771
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 772
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 773
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 774
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 775
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 776
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 777
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 778
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v30

    .line 780
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 781
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 782
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 783
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 784
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 785
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 786
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 787
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 788
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v4, v36

    .line 789
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 790
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 791
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 792
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 793
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 795
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v9, v37

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 797
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-static {v5, v7, v1, v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 799
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 800
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v12, 0x0

    aput-object v23, v11, v12

    invoke-direct {v8, v11, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 801
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(Z)V

    .line 802
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 803
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 804
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 805
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 806
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 807
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 808
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 810
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 811
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 812
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 813
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_2D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 814
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 815
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;

    const-string v7, "LOADING_2D_COMPLETE"

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 817
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 818
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 819
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_3D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 820
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 821
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;

    const-string v7, "LOADING_3D_COMPLETE"

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;-><init>(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 823
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 824
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 825
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 826
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 827
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadingRunnable;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 828
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 829
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 830
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 831
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 832
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v8, v33

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 833
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 835
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 837
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 839
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 841
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 843
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 844
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 845
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 846
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE_SHOW_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 847
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v5, v27

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 848
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 849
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 850
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 852
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v10, v7, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 854
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 855
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 856
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 857
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v7, v17

    .line 858
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v17, v15

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v23, v12

    .line 859
    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v36, v13

    move-object/from16 v13, v42

    move-object/from16 v8, v43

    invoke-direct {v15, v8, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v27, v11

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-object/from16 v28, v6

    const-string v6, "CAPTURE_TRIGGER"

    invoke-direct {v12, v15, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 862
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;

    move-object/from16 v30, v5

    const/4 v5, 0x0

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 864
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 866
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 868
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 869
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 870
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;

    invoke-direct {v14, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 871
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;-><init>(I)V

    .line 873
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v5, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 875
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 876
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 877
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 878
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 879
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    move-object/from16 v34, v5

    .line 880
    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v8, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 883
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v5, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 885
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 886
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 887
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$OpenLocationSettingsGuardRunnable;

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$OpenLocationSettingsGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 888
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 890
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 891
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 892
    invoke-static {v0, v1, v7, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 893
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 894
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 895
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v8, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;

    invoke-direct {v10, v15, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 898
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 900
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 902
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 904
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 905
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 906
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 907
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;

    const/4 v14, 0x4

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;-><init>(I)V

    .line 909
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v10, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 911
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 912
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 913
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 914
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 915
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureVideoVoiceAssistantGuardRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureVideoVoiceAssistantGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 916
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 917
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 918
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 919
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v8, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;

    move-object/from16 v12, v39

    invoke-direct {v10, v12, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 922
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 924
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 925
    invoke-static {v5, v6, v1, v0, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 926
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipTutorialsGuardRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipTutorialsGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 927
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 928
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 929
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 930
    invoke-static {v7, v3}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 931
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 932
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$InvalidModeGuardRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$InvalidModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 933
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 934
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 935
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 936
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    .line 937
    invoke-static {v7, v1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 938
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 939
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 940
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v3, v30

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v5, v28

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 941
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 942
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 943
    invoke-virtual {v6, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 944
    invoke-virtual {v6, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 945
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 946
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 947
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 948
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 949
    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 950
    invoke-virtual {v6, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 951
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 952
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 953
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    move-object/from16 v10, v29

    .line 954
    invoke-virtual {v6, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v11, 0x0

    .line 955
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 956
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 957
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 958
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 959
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 960
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 961
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 962
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 963
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 964
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 965
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 966
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 967
    invoke-virtual {v6, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 968
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 969
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 970
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    move-object/from16 v15, v27

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 971
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v27, v1

    move-object/from16 v1, v32

    invoke-direct {v14, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 973
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    move-object/from16 v10, v16

    invoke-direct {v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 975
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 976
    invoke-static {v12, v14, v6, v0, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 977
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 978
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 979
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 980
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v8, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 982
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 983
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 984
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 985
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 986
    invoke-virtual {v6, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 987
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 988
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 989
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 990
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v14, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 992
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v1, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 994
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v10, 0x0

    invoke-direct {v1, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 996
    invoke-virtual {v6, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 997
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 998
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 999
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1000
    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v6, v34

    .line 1001
    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1002
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1004
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v8, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1007
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1009
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1010
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v10, v18

    move-object/from16 v6, v20

    .line 1011
    invoke-static {v0, v1, v6, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 1012
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v11

    .line 1013
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    move-object/from16 v18, v7

    const/4 v7, 0x1

    invoke-direct {v11, v7, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1014
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v12, "IS_MODE_LIST_SCROLLABLE"

    const/4 v5, 0x0

    move-object/from16 v20, v9

    move-object/from16 v9, v36

    invoke-direct {v11, v9, v12, v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 1016
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/PortraitHorizontalGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/PortraitHorizontalGuardRunnable;-><init>()V

    .line 1018
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v14, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 1020
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1021
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v11, v33

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1023
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1025
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v8, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v7, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1028
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1029
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v5, v26

    .line 1030
    invoke-static {v0, v1, v5, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 1031
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    const/4 v2, 0x0

    invoke-direct {v7, v2, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1033
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    invoke-direct {v2, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1035
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v2, v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 1037
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1038
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuStoreModeRunnable;

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuStoreModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1040
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    move-object/from16 v7, v23

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1042
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v14, v37

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 1044
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1046
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 1047
    invoke-static {v2, v4, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v2, v25

    .line 1048
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline2;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1049
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    move-object/from16 v14, p0

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1051
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-object/from16 v23, v15

    const/4 v15, 0x0

    invoke-direct {v5, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1053
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1054
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1055
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1056
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v4, v19

    .line 1057
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1058
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    move-object/from16 v19, v7

    const/4 v7, 0x1

    invoke-direct {v14, v7, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1060
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v9, v12, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 1062
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeVerticalRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeVerticalRunnable;-><init>()V

    .line 1064
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 1066
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1067
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1069
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1071
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v13, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1074
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1075
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1076
    invoke-static {v0, v1, v6, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 1077
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeHorizontalRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeHorizontalRunnable;-><init>()V

    .line 1078
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1079
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1081
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1083
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v13, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1086
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1087
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1088
    invoke-static {v0, v1, v4, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 1089
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/PortraitVerticalGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/PortraitVerticalGuardRunnable;-><init>()V

    .line 1090
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1091
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1093
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1095
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v13, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1098
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1099
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1100
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1101
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1102
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1103
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v5, v24

    .line 1104
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1105
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 1106
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1107
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1108
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1109
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1110
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1111
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1112
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const-string v7, "ONLINE_HELP_FROM_TYPE"

    const-string v9, "ONLINE_HELP_FROM_MODE"

    move-object/from16 v12, v17

    invoke-direct {v5, v12, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1114
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1115
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1116
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v5, v22

    .line 1117
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x0

    .line 1118
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 1119
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1120
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1121
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1122
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1123
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1124
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1125
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    move-object/from16 v12, v19

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1127
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    move-object/from16 v12, p0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1129
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1131
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1132
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1133
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1134
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v1, p1

    .line 1135
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1136
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v7, v20

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v9, v28

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1137
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v12

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1138
    invoke-virtual {v12, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1139
    invoke-virtual {v12, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    move-object/from16 v15, v23

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1142
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1144
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1146
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v3, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1148
    invoke-virtual {v12, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1149
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 1150
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1151
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 1152
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1153
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1155
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/PortraitHorizontalGuardRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/PortraitHorizontalGuardRunnable;-><init>()V

    .line 1157
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 1159
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1160
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1162
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1164
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v8, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1167
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1168
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 1169
    invoke-static {v0, v3, v4, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 1170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v6, v10, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1172
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeVerticalRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeVerticalRunnable;-><init>()V

    .line 1174
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 1176
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 1179
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 1181
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v13, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1184
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1185
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 1186
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1187
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1188
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1189
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1190
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1191
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v4, v21

    .line 1192
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1193
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 1194
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1195
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1196
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1197
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1198
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1199
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v6, v29

    .line 1200
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v6, 0x0

    .line 1201
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 1202
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 1203
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1204
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 1205
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1206
    invoke-static {v3, v2}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v2, v27

    .line 1207
    invoke-static {v3, v2}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1208
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1209
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v3, 0x0

    .line 1210
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 1211
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1212
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1213
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1214
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1215
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1216
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    const/4 v2, 0x1

    .line 1217
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->autoTransition(Z)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1218
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    move-object/from16 v3, v44

    .line 1219
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1220
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1221
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1222
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1223
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1224
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v2, v40

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1225
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    .line 1226
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v31

    .line 1227
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;-><init>(Z)V

    .line 1228
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagModeChangeRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagModeChangeRunnable;-><init>()V

    .line 1231
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1233
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1234
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 1235
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1236
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1237
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
