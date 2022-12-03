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
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$EndKpiWaitingForResumeActivity;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckNewIntentRequest;,
        Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$NewIntentModeChangeRunnable;,
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

.field public static final MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CHANGE_NEW_INTENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN_WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->OPEN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_MCF_INIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

.method public static access$3700(II)V
    .locals 2

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

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    .locals 43

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

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

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
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v2

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 22
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 23
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 24
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 25
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 27
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 29
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 30
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 31
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 32
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 33
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 34
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 35
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 36
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 37
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 38
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 39
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 40
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 41
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 42
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    invoke-virtual {v6, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;

    invoke-direct {v11, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 44
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 45
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 46
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 47
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 48
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 49
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 50
    invoke-virtual {v6, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    invoke-direct {v13, v10, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 51
    invoke-virtual {v6, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 52
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 53
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 54
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    .line 55
    invoke-virtual {v6, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 56
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 57
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 58
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 59
    invoke-virtual {v6, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 60
    invoke-virtual {v6, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 61
    invoke-virtual {v6, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    move-object/from16 p0, v13

    const/4 v13, 0x0

    invoke-direct {v15, v10, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 62
    invoke-virtual {v6, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 63
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 64
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 65
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 66
    invoke-virtual {v6, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 67
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 68
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 69
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v6

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 70
    invoke-virtual {v6, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v13, 0x0

    .line 71
    invoke-virtual {v6, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 72
    invoke-virtual {v6, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 73
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    .line 74
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 75
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 77
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 78
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckModeRequirementsRunnable;

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckModeRequirementsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 80
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable;

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 82
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;

    const/4 v15, 0x1

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;-><init>(Z)V

    .line 84
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v15, 0x0

    invoke-direct {v7, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 86
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 87
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 88
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v17, v14

    invoke-static {v7, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v18, v12

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v19, v11

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v20, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v21, 0x0

    aput-object v20, v11, v21

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-direct {v12, v11, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 89
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$RequireMcfGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$RequireMcfGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 91
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v14, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 93
    invoke-virtual {v7, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 94
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 95
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 96
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 97
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v7, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v14, 0x0

    aput-object v20, v12, v14

    const/4 v14, 0x0

    invoke-direct {v11, v12, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 98
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v12, "MCF_INIT"

    const/4 v14, 0x0

    move-object/from16 v22, v8

    const/4 v8, 0x1

    invoke-direct {v11, v3, v12, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 100
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 102
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 103
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 104
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 105
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 106
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 107
    invoke-virtual {v7, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v9, 0x1

    move-object/from16 v23, v10

    new-array v10, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v20, v10, v14

    invoke-direct {v8, v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 108
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v10, "MCF_INIT_PENDING"

    invoke-direct {v8, v3, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 110
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 111
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 112
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 113
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v24, v5

    const-string v5, "MCF_PROCESSING"

    move-object/from16 v25, v4

    const/4 v4, 0x0

    invoke-direct {v11, v14, v5, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 114
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v26, v6

    const-string v6, "HAL_PROCESSING"

    invoke-direct {v11, v14, v6, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 116
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/16 v11, 0x8

    new-array v11, v11, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-object/from16 v27, v8

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v28, 0x0

    aput-object v8, v11, v28

    move-object/from16 v28, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v29, 0x1

    aput-object v1, v11, v29

    sget-object v29, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v30, 0x2

    aput-object v29, v11, v30

    sget-object v30, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v31, 0x3

    aput-object v30, v11, v31

    sget-object v32, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v33, 0x4

    aput-object v32, v11, v33

    sget-object v33, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v34, 0x5

    aput-object v33, v11, v34

    sget-object v35, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v36, 0x6

    aput-object v35, v11, v36

    sget-object v36, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v37, 0x7

    aput-object v36, v11, v37

    const/4 v0, 0x0

    invoke-direct {v4, v11, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 118
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v4, v9, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 120
    invoke-virtual {v7, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 121
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 122
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 123
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    move-object/from16 v38, v12

    const/4 v12, 0x1

    invoke-direct {v9, v14, v5, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 125
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v8, v9, v11

    aput-object v1, v9, v12

    const/4 v11, 0x2

    aput-object v29, v9, v11

    aput-object v30, v9, v31

    const/4 v11, 0x4

    aput-object v32, v9, v11

    aput-object v33, v9, v34

    const/4 v11, 0x6

    aput-object v35, v9, v11

    aput-object v36, v9, v37

    const/4 v11, 0x0

    invoke-direct {v5, v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 127
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 129
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 130
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 131
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 132
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-direct {v7, v14, v6, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 136
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/16 v7, 0x8

    new-array v7, v7, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v8, v7, v11

    aput-object v1, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    aput-object v30, v7, v31

    const/4 v9, 0x4

    aput-object v32, v7, v9

    aput-object v33, v7, v34

    const/4 v9, 0x6

    aput-object v35, v7, v9

    aput-object v36, v7, v37

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 138
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 140
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 141
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 143
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 144
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 145
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v9, 0x1

    new-array v11, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v12, 0x0

    aput-object v20, v11, v12

    const/4 v9, 0x0

    invoke-direct {v7, v11, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 147
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v7, v3, v10, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 149
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 151
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v7, v38

    invoke-direct {v6, v3, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 153
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 154
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 155
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 156
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v2, p1

    .line 157
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 158
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v6, v28

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 159
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 160
    invoke-virtual {v9, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v10, v27

    invoke-virtual {v9, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfProcessingCompleteGuardRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfProcessingCompleteGuardRunnable;-><init>()V

    .line 161
    invoke-virtual {v9, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 162
    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v9

    .line 163
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 164
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v9

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 165
    invoke-virtual {v9, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HalProcessingGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HalProcessingGuardRunnable;-><init>(Z)V

    .line 166
    invoke-virtual {v9, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 167
    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v9

    .line 168
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 169
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v9

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 170
    invoke-virtual {v9, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 171
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v5

    const-string v5, "HISTORY_STATE"

    invoke-direct {v12, v7, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 174
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBundleToHistory;

    const-string v12, "MODE"

    invoke-direct {v4, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBundleToHistory;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 178
    invoke-virtual {v9, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 179
    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 180
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 181
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 182
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 183
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(Z)V

    .line 184
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 185
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 186
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 187
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CurrentSceneSupportedByModeGuardRunnable;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CurrentSceneSupportedByModeGuardRunnable;-><init>(Z)V

    .line 188
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 189
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 190
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 191
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 193
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 194
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 195
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 196
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 197
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>()V

    .line 198
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 199
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 200
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v28, v9

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v37, v10

    const-string v10, "CLOSE_ON_STOP"

    move-object/from16 v39, v5

    const/4 v5, 0x1

    move-object/from16 v40, v7

    const/4 v7, 0x0

    invoke-direct {v9, v14, v10, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 201
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 202
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 203
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 204
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 205
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCloseCameraRequired;

    move-object/from16 v41, v13

    const/4 v13, 0x0

    invoke-direct {v9, v5, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCloseCameraRequired;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 206
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 207
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 208
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 209
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 210
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v4, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 211
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v42, 0x0

    aput-object v30, v13, v42

    const/16 v30, 0x1

    aput-object v33, v13, v30

    move-object/from16 v30, v3

    const/4 v3, 0x0

    invoke-direct {v9, v13, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 213
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 215
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 216
    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 217
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 218
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 219
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 220
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v13, 0x0

    aput-object v1, v5, v13

    const/4 v13, 0x0

    invoke-direct {v9, v5, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 223
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsDualCameraGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsDualCameraGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 225
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsSameTargetIdGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsSameTargetIdGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 227
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 229
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 230
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 231
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 232
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 233
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 234
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-static {v3, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v13, 0x0

    aput-object v1, v9, v13

    const/4 v13, 0x0

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 235
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$DualCaptureLayoutChangeGuardRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$DualCaptureLayoutChangeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 237
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v5, v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 239
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 240
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 241
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 242
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 243
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v9, 0x6

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v11, 0x0

    aput-object v8, v9, v11

    aput-object v29, v9, v5

    const/4 v5, 0x2

    aput-object v35, v9, v5

    aput-object v1, v9, v31

    const/4 v5, 0x4

    aput-object v36, v9, v5

    aput-object v32, v9, v34

    const/4 v5, 0x0

    invoke-direct {v4, v9, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 245
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 246
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 247
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 248
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 249
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 250
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v9, v14, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 252
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 254
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 256
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 257
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 258
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 259
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 260
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 261
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v14, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 265
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 267
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 268
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 269
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 270
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ResetBackTypeRunnable;

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ResetBackTypeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 273
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStopRunnable;

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStopRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 275
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 277
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 279
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 280
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 281
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 282
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 283
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 284
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_CALLED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 285
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v13, 0x0

    aput-object v8, v9, v13

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 286
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 287
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 288
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 289
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 290
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 291
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 292
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 293
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 294
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 295
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 296
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCheckPermissionsRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCheckPermissionsRunnable;-><init>()V

    .line 297
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 298
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_REQUIRED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 299
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 300
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 301
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 302
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 303
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v8

    .line 304
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    move-object/from16 v31, v7

    const/4 v7, 0x1

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 305
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;-><init>()V

    .line 307
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 309
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_GRANTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 310
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 311
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 312
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 313
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 314
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 315
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;

    move-object/from16 v32, v9

    const/4 v9, 0x0

    invoke-direct {v13, v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoGuardRunnable;-><init>(Z)V

    .line 317
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecordingGuardRunnable;-><init>()V

    .line 319
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v9, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 321
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 322
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 323
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 324
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 325
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 326
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 327
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 328
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 329
    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 330
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 331
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 332
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 333
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    move-object/from16 v33, v11

    const/4 v11, 0x1

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 335
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 337
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 339
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 340
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 341
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 342
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 343
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 344
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 345
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    move-object/from16 v34, v4

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 347
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 349
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v4, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 351
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 352
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 353
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 354
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 356
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 357
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 358
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 359
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForResumeRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForResumeRunnable;-><init>()V

    .line 360
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$EndKpiWaitingForResumeActivity;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$EndKpiWaitingForResumeActivity;-><init>()V

    .line 361
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 362
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 363
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckNewIntentRequest;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CheckNewIntentRequest;-><init>()V

    .line 364
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 365
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 366
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 367
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 368
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 369
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 370
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 371
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v11, v27

    .line 372
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v13, 0x0

    .line 373
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v27, v12

    const/4 v12, 0x1

    move-object/from16 v35, v14

    move-object/from16 v14, v30

    move-object/from16 v30, v1

    move-object/from16 v1, v38

    invoke-direct {v13, v14, v1, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 374
    invoke-virtual {v3, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 375
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 376
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 377
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 378
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 379
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$NewIntentModeChangeRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$NewIntentModeChangeRunnable;-><init>()V

    .line 380
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 381
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 382
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 383
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 384
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 385
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    .line 386
    invoke-virtual {v3, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x0

    .line 387
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v14, v1, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 388
    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 389
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 391
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 392
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 393
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 394
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 395
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 396
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 398
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 399
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 400
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PermissionCheckGuardRunnable;-><init>()V

    .line 401
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$PrcPermissionBlockExplainRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$PrcPermissionBlockExplainRunnable;-><init>()V

    .line 403
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 405
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_DENIED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 406
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 407
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 409
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 410
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 411
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 412
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 413
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 415
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 416
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 417
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 418
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 420
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 422
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 423
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 424
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v13, "RECORDING_START"

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v15, 0x0

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 428
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;

    const/4 v15, 0x0

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 430
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 432
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 433
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 435
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 436
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 437
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipOpenCameraGuardRunnable;-><init>(Z)V

    .line 438
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 440
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v10, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 442
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 443
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 445
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    invoke-direct {v8, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetSkipOpenCamera;-><init>(Z)V

    .line 448
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$FallbackModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 450
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 452
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 453
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 455
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 456
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 457
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 458
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 459
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 460
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 461
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 462
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 463
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 464
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TORCH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 465
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v5, 0x0

    .line 466
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 467
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 468
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 470
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 471
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v7, v26

    .line 472
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 473
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 474
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 476
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 478
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v15, v30

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 480
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-static {v8, v10, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 482
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v26, v3

    const-string v3, "CLOSE_AFTER_OPEN"

    move-object/from16 v30, v12

    const/4 v12, 0x0

    move-object/from16 v36, v14

    move-object/from16 v14, v35

    invoke-direct {v13, v14, v3, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 483
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v35, v15

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v20, v15, v12

    const/4 v12, 0x0

    invoke-direct {v13, v15, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 485
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$WaitMcfInitGuardRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$WaitMcfInitGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 487
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v13, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 489
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 490
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 492
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 493
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 494
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 495
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v14, v3, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 496
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 498
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 500
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 501
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 503
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 505
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 506
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v14, v3, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 507
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 509
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v12, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 511
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 512
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 514
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 515
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v5, v27

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v14, v3, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 516
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v14, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 517
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 518
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 520
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 521
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 522
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v14, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 523
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 524
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 526
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v13, v34

    .line 527
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 528
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 529
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 530
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v27, v7

    const/4 v7, 0x1

    invoke-direct {v15, v14, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v15, v33

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 533
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move-object/from16 v33, v11

    move-object/from16 v11, v25

    .line 534
    invoke-static {v12, v7, v1, v0, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 535
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-direct {v7, v14, v3, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 536
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v7, v14, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 537
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 538
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 540
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 541
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 542
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 543
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 544
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 545
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 546
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 547
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 549
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 550
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 551
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 554
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateSurfacesRunnable;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateSurfacesRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 556
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfUpdateOrientationRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/McfUpdateOrientationRunnable;-><init>()V

    .line 558
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 560
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 561
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 562
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v7, v32

    .line 563
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 564
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 566
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 567
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x0

    .line 568
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;-><init>()V

    .line 569
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 570
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 571
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 572
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 573
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 574
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x1

    .line 575
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v11, "OPEN_AFTER_CLOSE"

    invoke-direct {v7, v14, v11, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 576
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 577
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 579
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 580
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v32, v3

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v34, v12

    const/4 v12, 0x0

    invoke-direct {v3, v14, v11, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 581
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 582
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 583
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 584
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 585
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v7, 0x1

    invoke-direct {v3, v14, v11, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 586
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 587
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 589
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 590
    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 591
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v3, v14, v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 593
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 594
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 596
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 597
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v3, v14, v11, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 598
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 599
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 601
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v7, v14, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 602
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 604
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 605
    invoke-static {v3, v7, v1, v0, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 606
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v3, v14, v11, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 607
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/DeleteTempVideoFileRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/DeleteTempVideoFileRunnable;-><init>()V

    .line 610
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 612
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 614
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 615
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 616
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 617
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v3, v31

    .line 618
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v7, 0x0

    .line 619
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v7, v14, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 620
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 621
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 623
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 624
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 625
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 626
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v7, v33

    .line 627
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 628
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 629
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 630
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v14, v11, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 631
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 633
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 635
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 636
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 637
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 638
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 639
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 640
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 641
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 642
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v14, v11, v8, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 643
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$VideoStorageGuardRunnable;-><init>(Z)V

    .line 645
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 647
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 648
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 649
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 650
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 651
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v14, v11, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 652
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 653
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 654
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 655
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v14, v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 656
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 658
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 659
    invoke-static {v4, v7, v1, v0, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 660
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v14, v11, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 661
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 662
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 663
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 665
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 666
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v14, v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 667
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 668
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 669
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 670
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 671
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 672
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSetupRunnable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 673
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 674
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v3, v41

    .line 675
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 676
    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 677
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 679
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 680
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 682
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 683
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 684
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 685
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 687
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 688
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 689
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 691
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    .line 692
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;-><init>(Z)V

    .line 694
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 696
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 697
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 698
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v11, v27

    .line 699
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;

    invoke-direct {v12, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 700
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 701
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 702
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 703
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 705
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v9, v35

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 707
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 708
    invoke-static {v12, v3, v1, v0, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 709
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 710
    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    move-object/from16 v31, v3

    move-object/from16 v3, v32

    invoke-direct {v9, v14, v3, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 711
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 713
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 715
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v14, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 716
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 717
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 719
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 720
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 721
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v9, v14, v3, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 722
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v14, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 723
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 724
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 726
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 727
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 728
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v14, v3, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 729
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 730
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 731
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v14, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 732
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetCameraBusyExitMessage;-><init>()V

    .line 734
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 736
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 737
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 738
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 739
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_MODE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 740
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 741
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-direct {v8, v14, v3, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 742
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 743
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 744
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v14, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 745
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    .line 746
    invoke-static {v8, v9, v1, v0, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 747
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 748
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 749
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v9, v14, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 750
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 752
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    .line 753
    invoke-static {v8, v9, v1, v0, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    const/4 v8, 0x0

    .line 754
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v14, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 755
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 756
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 757
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 758
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v9, v25

    .line 759
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v5, v14, v3, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 760
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v14, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 761
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 762
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 764
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 765
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 766
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;-><init>()V

    .line 767
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 768
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 769
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 770
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 771
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 772
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 773
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 774
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 775
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v31

    .line 776
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 777
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 778
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 779
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 780
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 781
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 782
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 783
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 784
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v4, v27

    .line 785
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 786
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 787
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 788
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SwitchModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 789
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 791
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v9, v35

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 793
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-static {v5, v7, v1, v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 795
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 796
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v12, 0x0

    aput-object v20, v11, v12

    invoke-direct {v8, v11, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 797
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(Z)V

    .line 798
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 799
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 800
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 801
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 802
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 803
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 804
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 805
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 806
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 807
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 808
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 809
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_2D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 810
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 811
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;

    const-string v7, "LOADING_2D_COMPLETE"

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;-><init>(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 813
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 814
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 815
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_3D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 816
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 817
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;

    const-string v7, "LOADING_3D_COMPLETE"

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadComponentIsComplete;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 819
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 820
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 821
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 822
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 823
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadingRunnable;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$LoadingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 824
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 825
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 826
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 827
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 828
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    move-object/from16 v8, v36

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 829
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 831
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 833
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSameFacingSwitchRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 835
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 837
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 839
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 840
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 842
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE_SHOW_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 843
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 844
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 846
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v8, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 848
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 849
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 850
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 851
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v7, v24

    .line 852
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v35, v14

    .line 853
    invoke-virtual {v15}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v9

    move-object/from16 v24, v11

    move-object/from16 v11, v39

    move-object/from16 v9, v40

    invoke-direct {v13, v9, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v25, v10

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-object/from16 v27, v6

    const-string v6, "CAPTURE_TRIGGER"

    invoke-direct {v13, v14, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 856
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;

    move-object/from16 v31, v5

    const/4 v5, 0x0

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 858
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 860
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 862
    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 863
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 864
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 865
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;-><init>(I)V

    .line 867
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 869
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 870
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 871
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 872
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 873
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    move-object/from16 v32, v5

    .line 874
    invoke-virtual {v15}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v9, v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 877
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 879
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 880
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 881
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$OpenLocationSettingsGuardRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$OpenLocationSettingsGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 882
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 884
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 885
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 886
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 887
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 888
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 889
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 890
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 891
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 892
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;

    invoke-direct {v8, v14, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 895
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreVoiceAssistantTimerRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 897
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 899
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 901
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 902
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 903
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureImageVoiceAssistantGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 904
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;

    const/4 v13, 0x4

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeSelectGuardRunnable;-><init>(I)V

    .line 906
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v8, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 908
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 909
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 910
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 911
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 912
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureVideoVoiceAssistantGuardRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CaptureVideoVoiceAssistantGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 913
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 914
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 915
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 916
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;

    move-object/from16 v12, v30

    invoke-direct {v8, v12, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSerializableBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 919
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SetIntentTriggeredActionRunnable;-><init>()V

    .line 921
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 922
    invoke-static {v5, v6, v1, v0, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 923
    invoke-virtual {v1, v15}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipTutorialsGuardRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$SkipTutorialsGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 924
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 925
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 926
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 927
    invoke-static {v7, v3}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 928
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 929
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$InvalidModeGuardRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$InvalidModeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 930
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 931
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 932
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 933
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    .line 934
    invoke-static {v7, v1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 935
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v3

    move-object/from16 v5, v23

    .line 936
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v6, 0x0

    .line 937
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 938
    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 939
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    .line 940
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 941
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 942
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 943
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v3, v31

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v6, v27

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 944
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    move-object/from16 v8, v22

    .line 945
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v10, v21

    .line 946
    invoke-virtual {v7, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 947
    invoke-virtual {v7, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 948
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 949
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 950
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 951
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 952
    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$StoreSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 953
    invoke-virtual {v7, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 954
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 955
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 956
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    move-object/from16 v12, v26

    .line 957
    invoke-virtual {v7, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v13, 0x0

    .line 958
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 959
    invoke-virtual {v7, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 960
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 961
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 962
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 963
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 964
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 965
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 966
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 967
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 968
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 969
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 970
    invoke-virtual {v7, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 971
    invoke-virtual {v7, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 972
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 973
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    move-object/from16 v21, v1

    move-object/from16 v1, v25

    invoke-direct {v15, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 974
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v12, v29

    invoke-direct {v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 976
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 978
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v15, 0x0

    invoke-direct {v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 980
    invoke-virtual {v7, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 981
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 982
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 983
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    .line 984
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 985
    invoke-virtual {v7, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 986
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 987
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 989
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 990
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 991
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 992
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v13, v32

    .line 993
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 994
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 995
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 996
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v9, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 999
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1001
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1002
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    .line 1003
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1004
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v7

    move-object/from16 v9, v19

    .line 1005
    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1006
    invoke-virtual {v7, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1007
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsCliGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1009
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1011
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v13, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 1013
    invoke-virtual {v7, v13}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1014
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuStoreModeRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuStoreModeRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1016
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    move-object/from16 v13, v24

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1018
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    move-object/from16 v14, v20

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 1020
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v11, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1022
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 1023
    invoke-static {v4, v11, v7, v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    move-object/from16 v7, v18

    .line 1024
    invoke-static {v4, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;->m(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1025
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    move-object/from16 v15, v17

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1027
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    invoke-direct {v14, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1029
    invoke-virtual {v4, v14}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1030
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 1031
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1032
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1033
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1034
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    move-object/from16 v11, p0

    .line 1035
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1036
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1037
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>()V

    .line 1039
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1041
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1043
    invoke-virtual {v4, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1044
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 1045
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1046
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1047
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1048
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1049
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const-string v12, "ONLINE_HELP_FROM_TYPE"

    const-string v14, "ONLINE_HELP_FROM_MODE"

    move-object/from16 p0, v8

    move-object/from16 v8, v35

    invoke-direct {v11, v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1051
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 1052
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1053
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 1054
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v8, 0x0

    .line 1055
    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 1056
    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1057
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 1058
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1059
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1060
    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1061
    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1062
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1064
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1066
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1068
    invoke-virtual {v4, v11}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1069
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 1070
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1071
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1072
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1073
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1074
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1075
    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1076
    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1077
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v10, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1079
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1081
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1083
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1085
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1086
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    .line 1087
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1088
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v4

    .line 1089
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1090
    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1091
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v8, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 1093
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 1095
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ClearSliderTagRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    .line 1097
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1099
    invoke-virtual {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1100
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1101
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1102
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1103
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1104
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1105
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1106
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v16

    .line 1107
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1108
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1109
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1110
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1111
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1112
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1113
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1114
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v4, v26

    .line 1115
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v4, 0x0

    .line 1116
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 1117
    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/UpdatePreviewRunnable;-><init>()V

    .line 1118
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1119
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1120
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1121
    invoke-static {v1, v7}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-object/from16 v4, v21

    .line 1122
    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1123
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 1124
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    const/4 v4, 0x0

    .line 1125
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$FullFrameConfigUpdateRunnable;-><init>()V

    .line 1126
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1127
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1128
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1129
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1130
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1131
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    const/4 v1, 0x1

    .line 1132
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->autoTransition(Z)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1133
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    move-object/from16 v4, v41

    .line 1134
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1135
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1136
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1137
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1138
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    .line 1139
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1140
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-result-object v1

    .line 1141
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    move-object/from16 v3, v28

    .line 1142
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;-><init>(Z)V

    .line 1143
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagModeChangeRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagModeChangeRunnable;-><init>()V

    .line 1146
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 1148
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;

    .line 1149
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    .line 1150
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;

    .line 1151
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 1152
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
