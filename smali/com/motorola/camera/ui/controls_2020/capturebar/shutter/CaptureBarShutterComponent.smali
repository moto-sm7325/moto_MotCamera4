.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "CaptureBarShutterComponent.kt"


# static fields
.field public static final ANIMATE_HIDE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final LISTENED_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PANORAMA_CAPTURE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_ON_EXIT_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_RECORDING_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_STOP_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cinemagraphAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$CinemagraphAdapter;

.field public isFsmIdle:Z

.field public mShutterProcessingListener:Lcom/motorola/camera/Notifier$Listener;

.field public final mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

.field public final shutterTouchHandler$delegate:Lkotlin/Lazy;

.field public shutterUI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

.field public final superSlowMotionMaxDuration$delegate:Lkotlin/Lazy;

.field public superSlowMotionToken:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v2, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 10
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 12
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 14
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 16
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 18
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 20
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 22
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    const-string v7, "StateKeyCollectionBuilde\u2026rState.ERROR_KEY).build()"

    .line 24
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->ANIMATE_HIDE_STATES:Ljava/util/Collection;

    .line 25
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 27
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v10, v4

    .line 28
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v10, v3, v4

    .line 30
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v3, v4

    .line 31
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 32
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v3, v4

    .line 33
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v3, v4

    .line 35
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v4

    .line 36
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 38
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->SHOW_ON_EXIT_STATES:Ljava/util/Collection;

    .line 39
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 40
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 41
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 42
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 43
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 44
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 45
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 47
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_RECORDING_STATES:Ljava/util/Collection;

    .line 48
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 49
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v10, v8, v4

    .line 50
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 51
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v10, v8, v4

    .line 52
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    .line 54
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_STOP_STATES:Ljava/util/Collection;

    .line 55
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 56
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 57
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 58
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 59
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v8

    .line 61
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STATES:Ljava/util/Collection;

    .line 62
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 63
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 64
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/Collection;

    .line 66
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 68
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 70
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 72
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 73
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 74
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 75
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 76
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-interface {v2, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 83
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 84
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 85
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 86
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 87
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 88
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 89
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    .line 90
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v1, 0x8

    .line 91
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 92
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 93
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    .line 94
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 95
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    .line 96
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    .line 97
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    .line 98
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    .line 99
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    .line 100
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v9, v0, v1

    const/16 v1, 0x13

    .line 101
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026PH_CAPTURING_KEY).build()"

    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    .line 3
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$shutterTouchHandler$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$shutterTouchHandler$2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterTouchHandler$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$superSlowMotionMaxDuration$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$superSlowMotionMaxDuration$2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->superSlowMotionMaxDuration$delegate:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$mcfStateListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$mcfStateListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterProcessingListener:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->cinemagraphAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$CinemagraphAdapter;

    return-void
.end method

.method public static synthetic getShutterState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState(I)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRotatedViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getRotatedViews()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getShutterState(I)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    const/16 p0, 0x22

    if-eq p1, p0, :cond_1

    const/16 p0, 0x24

    if-eq p1, p0, :cond_1

    const/16 p0, 0x26

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2c

    if-eq p1, p0, :cond_1

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    :goto_0
    return-object p0
.end method

.method public final getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterTouchHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    return-object p0
.end method

.method public final getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterUI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "shutterUI"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final getSuperSlowMotionMaxDuration()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->superSlowMotionMaxDuration$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const-string v1, "mParentView"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    const-string v3, "mEventHandler.layoutManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;-><init>(Landroid/view/View;)V

    :goto_0
    const-string v1, "<set-?>"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterUI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->reset()V

    return-void
.end method

.method public final registerCinemagraphAdapter(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->findGlComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->cinemagraphAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$CinemagraphAdapter;

    .line 3
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapters:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->cinemagraphAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$CinemagraphAdapter;

    .line 5
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapters:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final registerMcfStateListener(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public rotate(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    sget v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->ALPHA_ENABLED:F

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->enableClicks(Z)V

    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v4

    const-string v6, "changeEvent.context"

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v7, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerMcfStateListener(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_5

    .line 7
    :cond_1
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 8
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    if-nez v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v7

    :goto_2
    if-nez v0, :cond_7

    const/16 v0, 0x13

    .line 15
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v7, v5

    .line 16
    :cond_7
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v7, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 17
    :cond_8
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 18
    iget-object v4, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 19
    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 22
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    .line 23
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterProcessingListener:Lcom/motorola/camera/Notifier$Listener;

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto/16 :goto_5

    .line 25
    :cond_9
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 26
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 27
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 28
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISPLAY_FLASH_DELAY_TIME:Lcom/motorola/camera/AppFeatures$Feature;

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 31
    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 32
    :cond_b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 33
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 34
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 35
    invoke-static {v1}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 36
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 39
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 40
    :cond_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-nez v2, :cond_36

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isNightVisionDedicatedMode()Z

    move-result v2

    if-nez v2, :cond_36

    .line 43
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 44
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 45
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 46
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isDeterminateFgProcessingTimeShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-nez v2, :cond_d

    move v5, v7

    .line 47
    :cond_d
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;

    invoke-direct {v2, v5, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;-><init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 49
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 50
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "CANCELLED"

    .line 51
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "LONG_PRESS"

    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "PRELOCK_FOCUS_EXIT"

    .line 53
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_36

    .line 55
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 56
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-nez v3, :cond_e

    .line 58
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isNonMcfShotInQcfaMode(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 59
    :cond_e
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 60
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 61
    invoke-static {v1}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 62
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 63
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto/16 :goto_5

    .line 65
    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 66
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_36

    .line 67
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 68
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 69
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "TIMER"

    .line 70
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "IS_DOTS_TIMER"

    .line 71
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;IZ)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 73
    :cond_10
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_11

    .line 74
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_36

    .line 75
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 76
    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 78
    :cond_12
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 79
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 81
    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 82
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 83
    :cond_14
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 84
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 85
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 86
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 87
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 89
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onCaptureEstimate(J)V

    goto/16 :goto_5

    .line 91
    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 93
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 94
    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 95
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 96
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 97
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 98
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isDeterminateFgProcessingTimeShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-nez v0, :cond_17

    move v5, v7

    :cond_17
    if-eqz v5, :cond_36

    .line 99
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_36

    .line 100
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 101
    :cond_18
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 102
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 103
    :cond_19
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->ANIMATE_HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 104
    :cond_1a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 105
    :cond_1b
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->SHOW_ON_EXIT_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 106
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 107
    :cond_1c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v0

    .line 109
    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    .line 110
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZI)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 111
    :cond_1d
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 112
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    goto/16 :goto_5

    .line 113
    :cond_1e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 114
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 115
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 116
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "bundle"

    .line 117
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CAPTURE_TRIGGER"

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 119
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v1, :cond_1f

    move v5, v7

    :cond_1f
    xor-int/lit8 v0, v5, 0x1

    .line 120
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 121
    :cond_20
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_21

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 122
    :cond_21
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 123
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_4

    .line 124
    :cond_22
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_RECORDING_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 125
    :cond_23
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 126
    :cond_24
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_STOP_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_25

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 127
    :cond_25
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 128
    :cond_26
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 129
    :cond_27
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 130
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerCinemagraphAdapter(Z)V

    .line 131
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 132
    :cond_28
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 133
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerCinemagraphAdapter(Z)V

    .line 134
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 135
    :cond_29
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 136
    :cond_2a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 137
    :cond_2b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 138
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 139
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v5, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerMcfStateListener(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 140
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 141
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    .line 142
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterProcessingListener:Lcom/motorola/camera/Notifier$Listener;

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto/16 :goto_5

    .line 144
    :cond_2c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 145
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 146
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v1, v5

    .line 147
    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v1, v7

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v1, v2

    .line 148
    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 149
    :cond_2d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 150
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 151
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 152
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 153
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "PERMISSIONS_GRANTED"

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 155
    :cond_2e
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 156
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 157
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 158
    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 159
    :cond_2f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 160
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    .line 161
    :cond_30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 162
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 164
    check-cast v0, Ljava/lang/Long;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 166
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;J)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 167
    :cond_31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result v0

    if-nez v0, :cond_32

    .line 168
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 169
    :cond_32
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 170
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 171
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "QCFA_SHOT"

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 173
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 174
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 175
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 176
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_33

    .line 177
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result v1

    if-eqz v1, :cond_33

    move v5, v7

    :cond_33
    if-nez v0, :cond_34

    if-eqz v5, :cond_36

    .line 178
    :cond_34
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda9;

    invoke-direct {v0, v5, p0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda9;-><init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 179
    :cond_35
    :goto_4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    :cond_36
    :goto_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 181
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 182
    :cond_37
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 184
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_38

    .line 185
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    .line 187
    :cond_38
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_39

    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_39
    return-void
.end method
