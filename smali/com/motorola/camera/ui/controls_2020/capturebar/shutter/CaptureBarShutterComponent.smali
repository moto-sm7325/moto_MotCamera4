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
    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 5
    move-object v5, v0

    check-cast v5, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 7
    move-object v6, v0

    check-cast v6, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    check-cast v0, Ljava/util/Set;

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
    move-object v9, v6

    check-cast v9, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 14
    move-object v9, v6

    check-cast v9, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 16
    move-object v9, v6

    check-cast v9, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 18
    move-object v9, v6

    check-cast v9, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 20
    move-object v9, v6

    check-cast v9, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v7, v4

    .line 22
    move-object v10, v6

    check-cast v10, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    check-cast v6, Ljava/util/Set;

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
    move-object v11, v7

    check-cast v11, Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v10, v4

    .line 28
    move-object v3, v7

    check-cast v3, Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v10, v3, v4

    .line 30
    move-object v10, v7

    check-cast v10, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v3, v4

    .line 31
    move-object v5, v7

    check-cast v5, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 32
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v3, v4

    .line 33
    move-object v5, v7

    check-cast v5, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v3, v4

    .line 35
    move-object v5, v7

    check-cast v5, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v4

    .line 36
    move-object v5, v7

    check-cast v5, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    check-cast v7, Ljava/util/Set;

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
    move-object v8, v5

    check-cast v8, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 42
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 43
    move-object v8, v5

    check-cast v8, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 44
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 45
    move-object v8, v5

    check-cast v8, Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    check-cast v5, Ljava/util/Set;

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
    move-object v10, v7

    check-cast v10, Ljava/util/Set;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 51
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v10, v8, v4

    .line 52
    move-object v10, v7

    check-cast v10, Ljava/util/Set;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 53
    check-cast v7, Ljava/util/Set;

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
    move-object v11, v8

    check-cast v11, Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 58
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 59
    move-object v11, v8

    check-cast v11, Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    check-cast v8, Ljava/util/Set;

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
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/Collection;

    .line 66
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 68
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 70
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 72
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 73
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 74
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v10, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 75
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v11, v10, v4

    .line 76
    move-object v11, v2

    check-cast v11, Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    move-object v10, v2

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x13

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

    .line 87
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    .line 88
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 89
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 90
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

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
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    .line 96
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    .line 97
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    .line 98
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    .line 99
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v9, v0, v1

    const/16 v1, 0x12

    .line 100
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v1

    .line 101
    move-object v1, v2

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026PH_CAPTURING_KEY).build()"

    .line 103
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

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterTouchHandler$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$superSlowMotionMaxDuration$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$superSlowMotionMaxDuration$2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->superSlowMotionMaxDuration$delegate:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$mcfStateListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$mcfStateListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 6
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
    const-string p0, "shutterUI"

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
    .locals 8
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v2

    const-string v4, "changeEvent.context"

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v5, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerMcfStateListener(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_4

    .line 7
    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    iget-object v6, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 9
    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v6, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 11
    :cond_2
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 13
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 15
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 17
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 20
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISPLAY_FLASH_DELAY_TIME:Lcom/motorola/camera/AppFeatures$Feature;

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 23
    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 24
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 26
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 27
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 28
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isDeterminateFgProcessingTimeShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-nez v0, :cond_6

    move v3, v5

    .line 30
    :cond_6
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 31
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    .line 33
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v2, v3, v0, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(ZZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 35
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 36
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "CANCELLED"

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "LONG_PRESS"

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "PRELOCK_FOCUS_EXIT"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_34

    .line 41
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 42
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-nez v1, :cond_7

    .line 44
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isNonMcfShotInQcfaMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 45
    :cond_7
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 46
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 48
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto/16 :goto_4

    .line 51
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 53
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 54
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 55
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "TIMER"

    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "IS_DOTS_TIMER"

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;IZ)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 59
    :cond_9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 61
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 62
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 64
    :cond_b
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 65
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 68
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 69
    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 71
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 72
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 73
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 75
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onCaptureEstimate(J)V

    goto/16 :goto_4

    .line 77
    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 79
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 80
    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 82
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 83
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 84
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isDeterminateFgProcessingTimeShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-nez v0, :cond_10

    move v3, v5

    :cond_10
    if-eqz v3, :cond_34

    .line 85
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 86
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 87
    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 88
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 89
    :cond_12
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->ANIMATE_HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 90
    :cond_13
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 91
    :cond_14
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->SHOW_ON_EXIT_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 92
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 93
    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 94
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v0

    .line 95
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    if-eqz v1, :cond_18

    .line 96
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 97
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v2

    if-nez v2, :cond_18

    .line 98
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    const/16 v4, 0x11

    if-ne v2, v4, :cond_16

    move v2, v5

    goto :goto_0

    :cond_16
    move v2, v3

    :goto_0
    if-nez v2, :cond_18

    const/4 v2, 0x6

    if-eq v1, v2, :cond_18

    const/4 v2, 0x7

    if-eq v1, v2, :cond_18

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_17

    goto :goto_1

    :cond_17
    move v1, v3

    goto :goto_2

    :cond_18
    :goto_1
    move v1, v5

    :goto_2
    if-nez v1, :cond_19

    const/16 v1, 0x13

    .line 99
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    move v3, v5

    .line 100
    :cond_1a
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    .line 101
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v3, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZZ)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 102
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    goto/16 :goto_4

    .line 104
    :cond_1c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 105
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 106
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 107
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "bundle"

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CAPTURE_TRIGGER"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 110
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v1, :cond_1d

    move v3, v5

    :cond_1d
    xor-int/lit8 v0, v3, 0x1

    .line 111
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 112
    :cond_1e
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 113
    :cond_1f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 114
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_3

    .line 115
    :cond_20
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_RECORDING_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 116
    :cond_21
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 117
    :cond_22
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_STOP_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 118
    :cond_23
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 119
    :cond_24
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 120
    :cond_25
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 121
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerCinemagraphAdapter(Z)V

    .line 122
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 123
    :cond_26
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 124
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerCinemagraphAdapter(Z)V

    .line 125
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 126
    :cond_27
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 127
    :cond_28
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 128
    :cond_29
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 129
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 130
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerMcfStateListener(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_4

    .line 131
    :cond_2a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 132
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 133
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v3

    .line 134
    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    .line 135
    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 136
    :cond_2b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 137
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 138
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 139
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 140
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "PERMISSIONS_GRANTED"

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 142
    :cond_2c
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 143
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 144
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 145
    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 146
    :cond_2d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 147
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    return-void

    .line 148
    :cond_2e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 149
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 150
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 151
    check-cast v0, Ljava/lang/Long;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    .line 153
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;JI)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 154
    :cond_2f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result v0

    if-nez v0, :cond_30

    .line 155
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 156
    :cond_30
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 157
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 158
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "QCFA_SHOT"

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 161
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 162
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 163
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_31

    .line 164
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result v1

    if-eqz v1, :cond_31

    move v3, v5

    :cond_31
    if-nez v0, :cond_32

    if-eqz v3, :cond_34

    .line 165
    :cond_32
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;

    invoke-direct {v0, v3, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;-><init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 166
    :cond_33
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    :cond_34
    :goto_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 168
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 169
    :cond_35
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 171
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_36

    .line 172
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    .line 174
    :cond_36
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-wide/16 v0, 0x0

    .line 175
    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_37
    return-void
.end method
