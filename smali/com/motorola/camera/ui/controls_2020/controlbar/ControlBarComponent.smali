.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "ControlBarComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlBarComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlBarComponent.kt\ncom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,942:1\n33#2,3:943\n1#3:946\n1849#4,2:947\n1849#4,2:949\n1547#4:951\n1618#4,3:952\n*S KotlinDebug\n*F\n+ 1 ControlBarComponent.kt\ncom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent\n*L\n71#1:943,3\n640#1:947,2\n650#1:949,2\n666#1:951\n666#1:952,3\n*E\n"
.end annotation


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_CLICK_STATES:Ljava/util/Collection;
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

.field public static final INFLATION_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.field public static final ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final QUICK_SETTINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHOW_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_CAPTURE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter<",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

.field public autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;

.field public final autoSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final controlPanelAutoHideListener:Lcom/motorola/camera/Notifier$Listener;

.field public final controlPanelGuideline$delegate:Lkotlin/Lazy;

.field public controlPanelToggle:Landroid/widget/ToggleButton;

.field public halFlash:Z

.field public hiddenState:Z

.field public inCapture:Z

.field public isClosing:Z

.field public final isInModeChange$delegate:Lkotlin/properties/ReadWriteProperty;

.field public lastCloseTimestamp:J

.field public final mActivePhysicalCameraIdListener:Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

.field public mPhysicalCameraId:Ljava/lang/String;

.field public final mTorchControlListener:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

.field public final maxItems:I

.field public mcfFlash:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

.field public mcfTorch:Z

.field public final notifierListener:Lcom/motorola/camera/Notifier$Listener;

.field public pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final settingLockedChangedListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingLockedChangeListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final touchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-class v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlin/reflect/KProperty;

    .line 1
    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v4, "isInModeChange"

    const-string v5, "isInModeChange()Z"

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v3

    aput-object v3, v2, v6

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v6

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 9
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 17
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 19
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 21
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 25
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v4, v2, v6

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v2, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 30
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 31
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 32
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 33
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 34
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 35
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v5, v6

    .line 36
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 37
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v5, v6

    .line 38
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 40
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 41
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 42
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v6

    .line 43
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 44
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v6

    .line 45
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 46
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v6

    .line 47
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 48
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v6

    .line 49
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 51
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->VIDEO_CAPTURE_STATES:Ljava/util/Collection;

    .line 52
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 53
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v6

    .line 54
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 55
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v6

    .line 56
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 57
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v6

    .line 58
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v8, v6

    .line 59
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 60
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PLAY_PAUSE_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 61
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 62
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 63
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 64
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 65
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 66
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 67
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 68
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 69
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 70
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 71
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 72
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 73
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 74
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 75
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 76
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 77
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 78
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v3, v6

    .line 79
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 81
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->DISABLE_CLICK_STATES:Ljava/util/Collection;

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 82
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v9, "MODE_WAIT_LOADING_KEY"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v7, v6

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->INFLATION_STATES:Ljava/util/List;

    .line 83
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 84
    invoke-interface {v8, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-interface {v8, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v8, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-interface {v8, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 89
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 91
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 93
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 95
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 97
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 99
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 101
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 103
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 105
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 106
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 107
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v6

    .line 108
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 110
    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 112
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->LISTENED_STATES:Ljava/util/Collection;

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 113
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v3, v2, v6

    .line 114
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v3, v2, v1

    .line 115
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 116
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->QUICK_SETTINGS:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v7, "FLASH"

    .line 117
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v6

    const-string v3, "TORCH"

    .line 118
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v1

    .line 119
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "HDR"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v2, v5

    .line 120
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "MOTION_PHOTOS"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v2, v0

    .line 121
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const-string p2, "0"

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mPhysicalCameraId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->maxItems:I

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    invoke-direct {p2, p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$controlPanelGuideline$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$controlPanelGuideline$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelGuideline$delegate:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/Notifier$Listener;

    .line 9
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$controlPanelAutoHideListener$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$controlPanelAutoHideListener$1;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$controlPanelAutoHideListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$controlPanelAutoHideListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 11
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/Notifier$Listener;

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    .line 13
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 14
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 17
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingLockedChangedListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mcfStateAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 19
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;

    .line 20
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mTorchControlListener:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

    .line 21
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mActivePhysicalCameraIdListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mActivePhysicalCameraIdListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    .line 23
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->touchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static final access$updateHalFlash(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->halFlash:Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v1, "FLASH.mName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->halFlash:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateItems(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic updateItems$default(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateItems(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;IZLkotlin/jvm/functions/Function0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 2
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;->FADE_OUT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    const-string v5, "ofFloat(recycler, View.A\u2026on(crossFadeAnimDuration)"

    const/4 v7, 0x2

    if-ne v1, v4, :cond_0

    .line 3
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v6, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isSplitScreenLayout()Z

    move-result v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    instance-of v9, v4, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    if-eqz v9, :cond_1

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    return-void

    :cond_2
    if-eqz v8, :cond_3

    move/from16 v9, p3

    goto :goto_1

    :cond_3
    add-int/lit8 v9, p3, 0x1

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x0

    if-gt v9, v7, :cond_5

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    iget v12, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->maxItems:I

    div-int/2addr v9, v12

    int-to-float v12, v9

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07005c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    sub-float/2addr v12, v13

    int-to-float v13, v7

    div-float/2addr v12, v13

    float-to-int v12, v12

    if-eqz v8, :cond_4

    move v13, v10

    goto :goto_2

    :cond_4
    move v13, v11

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    div-int v9, v12, v9

    const/4 v12, 0x4

    move v13, v12

    move v12, v11

    :goto_2
    if-eqz v8, :cond_6

    move v9, v12

    :cond_6
    if-eqz p4, :cond_8

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v14, v1

    .line 11
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$toggleVisibilityBlock$1;

    invoke-direct {v7, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$toggleVisibilityBlock$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    .line 12
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v12

    move v3, v9

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;IILcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;I)V

    if-eqz v8, :cond_7

    .line 13
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    .line 14
    :cond_7
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {v0, v7}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function0;)V

    int-to-long v1, v10

    mul-long/2addr v1, v14

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f020000

    .line 16
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;

    invoke-direct {v1, v6, v11, v14, v15}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;J)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_4

    .line 19
    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;->FADE_IN:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    if-ne v1, v0, :cond_9

    .line 20
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    invoke-static {v6, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v6, v12, v11, v9, v11}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 23
    invoke-virtual {v4, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    goto :goto_4

    :cond_9
    new-array v0, v7, [I

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    aput v1, v0, v11

    const/4 v1, 0x1

    aput v9, v0, v1

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6, v4, v13, v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    :goto_4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$3$1;

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$3$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final controlPanelToggleState(ZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v2, -0x3e600000    # -20.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->moveControlPanelToggle()V

    goto :goto_4

    .line 5
    :cond_5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    :goto_3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_d

    goto :goto_4

    .line 8
    :cond_d
    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_4
    if-nez p1, :cond_e

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->lastCloseTimestamp:J

    :cond_e
    if-nez p2, :cond_13

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_f

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    :goto_5
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p2, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 12
    :goto_6
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_11

    goto :goto_7

    :cond_11
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-virtual {p2, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    :goto_7
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setClickable(Z)V

    goto :goto_8

    :cond_13
    const-string p2, "IS_SELECTED"

    .line 14
    invoke-static {p2, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 15
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 17
    :goto_8
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->getToggleDescription(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_9
    return-void
.end method

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
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final getToggleDescription(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12042e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n            mParentVie\u2026ol_panel_close)\n        }"

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12042f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n            mParentVie\u2026rol_panel_open)\n        }"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public inflateViewStub()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getWaterfallDisplayDimensionX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v3, "mEventHandler"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$inflateViewStub$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$inflateViewStub$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    .line 9
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    .line 12
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x4

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    .line 14
    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 15
    invoke-virtual {v3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 16
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    const/4 v4, 0x0

    sub-float/2addr v1, v4

    cmpg-float v5, v1, v4

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_1

    add-float/2addr v1, v6

    :cond_1
    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    sub-float/2addr v1, v6

    :cond_2
    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    .line 17
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->getToggleDescription(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final isControlPanelAvailableInCurrentMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isSplitScreenLayout()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isSplitScreenLayout()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    const-string v0, "mEventHandler.layoutManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p0

    return p0
.end method

.method public final moveControlPanelToggle()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    const-string v2, "mEventHandler.layoutManager"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/motorola/camera/utility/AppExtensionsKt;->controlPanelGuideline(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;Landroid/content/Context;)I

    move-result p0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->getLocationInWindow([I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p0, p0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2
    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public final removeListeners()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->PANEL_SETTINGS_KEYS:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 6
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingLockedChangedListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;

    .line 9
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingLockedChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reverseColor(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda13;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rotate(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float v0, v0

    rsub-int v1, p1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_0

    add-float/2addr v1, v3

    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    sub-float/2addr v1, v3

    :cond_1
    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    instance-of v1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    if-eqz v1, :cond_4

    .line 5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->uiOrientation:I

    goto :goto_0

    .line 7
    :cond_4
    instance-of p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    if-eqz p1, :cond_5

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    :cond_5
    :goto_0
    return-void
.end method

.method public final setInModeChange(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

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
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3
    iget-object v5, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v4, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 6
    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 7
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 9
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 10
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 13
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 14
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    if-nez v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mTorchControlListener:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 17
    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 21
    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->reverseColor(Z)V

    goto/16 :goto_9

    .line 23
    :cond_2
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    .line 24
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    .line 25
    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 26
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->removeListeners()V

    .line 28
    iget-object v4, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 29
    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 30
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 31
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 32
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 33
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 34
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 35
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 36
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 37
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 38
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    if-nez v1, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mTorchControlListener:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 40
    :goto_1
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 41
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 42
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 43
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 45
    invoke-static {v8, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 47
    invoke-static {v8, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 48
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 49
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    .line 50
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/Notifier$Listener;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 52
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 53
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 54
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "FLASH.mName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez p0, :cond_4

    goto/16 :goto_9

    .line 58
    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 59
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 60
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 61
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    const-string v0, "ANALYTICS_CONTROL_BAR_TAPS"

    .line 62
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 63
    :cond_5
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez p0, :cond_6

    goto/16 :goto_9

    .line 65
    :cond_6
    iput v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    goto/16 :goto_9

    .line 66
    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 67
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8

    .line 68
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 70
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 71
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 72
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "changeEvent.context.getB\u2026t.BundleType.SINGLE_SHOT)"

    .line 73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CAPTURE_AUTO_CAPTURE_TYPE"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 75
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    :cond_9
    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->inCapture:Z

    .line 77
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez p0, :cond_a

    goto/16 :goto_9

    .line 78
    :cond_a
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    goto/16 :goto_9

    .line 79
    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->removeListeners()V

    .line 81
    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 82
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 83
    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 84
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 85
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 86
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    .line 87
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 88
    :cond_d
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 89
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 90
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_6

    .line 91
    :cond_e
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    .line 93
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez p0, :cond_f

    goto/16 :goto_9

    .line 94
    :cond_f
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    goto/16 :goto_9

    .line 95
    :cond_10
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->SHOW_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->VIDEO_CAPTURE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_4

    .line 96
    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 97
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 98
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 99
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "CAPTURE_TRIGGER"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 101
    instance-of v0, p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    goto :goto_2

    :cond_12
    const/4 p1, 0x0

    .line 102
    :goto_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eq p1, v0, :cond_13

    .line 103
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eq p1, v0, :cond_13

    move v8, v7

    .line 104
    :cond_13
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 105
    :cond_14
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->DISABLE_CLICK_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez p0, :cond_15

    goto/16 :goto_9

    .line 106
    :cond_15
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    goto/16 :goto_9

    .line 107
    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 108
    :cond_17
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 109
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 110
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 111
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 112
    invoke-static {p1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 113
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    .line 114
    :cond_18
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez p1, :cond_19

    goto :goto_3

    .line 115
    :cond_19
    iput-boolean v8, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    .line 116
    :goto_3
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 117
    :cond_1a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 118
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 119
    :cond_1b
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 120
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 121
    :cond_1c
    :goto_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 122
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    return-void

    .line 123
    :cond_1d
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->inCapture:Z

    .line 124
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 125
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    .line 126
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 128
    invoke-static {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 129
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 130
    invoke-static {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 131
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 132
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 133
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 134
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 135
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 137
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    .line 138
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->PANEL_SETTINGS_KEYS:Ljava/util/List;

    .line 139
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 140
    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 142
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 143
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingLockedChangedListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;

    .line 145
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingLockedChangeListener;)V

    goto :goto_5

    .line 146
    :cond_1e
    :goto_6
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    .line 147
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v0, :cond_1f

    goto :goto_7

    .line 148
    :cond_1f
    iput-boolean v8, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    .line 149
    :goto_7
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 150
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    .line 151
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->removeListeners()V

    goto :goto_9

    .line 153
    :cond_20
    :goto_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 154
    :cond_21
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 155
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 156
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 157
    :cond_22
    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 158
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_23
    :goto_9
    return-void
.end method

.method public final updateControlBar(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    .line 3
    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateItems(ZLkotlin/jvm/functions/Function0;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isControlPanelAvailableInCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setClickable(Z)V

    :goto_2
    return-void
.end method

.method public final updateItems(ZLkotlin/jvm/functions/Function0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    .line 1
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;->FADE_OUT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-object v2, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v2, v6, v3}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 4
    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_0
    move v2, v4

    goto :goto_1

    .line 5
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isSplitScreenLayout()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 7
    iget-object v3, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 8
    :cond_3
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    iget-object v7, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v7

    .line 9
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->CONTROL_BAR_SETTINGS_KEYS:Ljava/util/List;

    invoke-virtual {v3, v8, v7}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getFilteredSettings(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 10
    iget v7, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->maxItems:I

    sub-int/2addr v7, v5

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 11
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 14
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 15
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    new-instance v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v10, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v11

    const-string v10, "getKey(it.mName)"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v10, "mParentView.context"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xc

    move-object v10, v15

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;I)V

    .line 17
    iget-object v10, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    iget-object v11, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-nez v10, :cond_4

    move v10, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_4
    if-eqz v10, :cond_5

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    move v10, v4

    .line 19
    :goto_5
    iput-boolean v10, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->autoTrigger:Z

    .line 20
    sget-object v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    goto :goto_6

    :cond_6
    move v10, v4

    .line 21
    :goto_6
    iput-boolean v10, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isOn:Z

    .line 22
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    .line 24
    invoke-virtual {v8, v9}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v9

    .line 25
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/Set;

    move-object v10, v9

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 26
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 27
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_7

    move v8, v10

    goto :goto_7

    :cond_7
    move v8, v4

    .line 28
    :goto_7
    iput-boolean v8, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->multiValuesEnabled:Z

    .line 29
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v10

    goto/16 :goto_3

    .line 30
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_9

    goto :goto_8

    .line 31
    :cond_9
    iput-object v0, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    .line 32
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    move-object v2, v1

    goto :goto_a

    :cond_a
    if-nez v2, :cond_b

    .line 33
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;->FADE_IN:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    goto :goto_9

    .line 34
    :cond_b
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;->PADDING_ANIMATION:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    :goto_9
    move-object v2, v0

    :goto_a
    if-ne v2, v1, :cond_c

    .line 35
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Ljava/util/List;ZI)V

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 36
    :cond_c
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;

    move/from16 v1, p1

    invoke-direct {v0, v6, v3, v2, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Z)V

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_b
    return-void
.end method

.method public viewStubInflationStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
