.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "IndicatorBarComponent.kt"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;,
        Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;",
        "Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener<",
        "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndicatorBarComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndicatorBarComponent.kt\ncom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,772:1\n1#2:773\n1547#3:774\n1618#3,3:775\n2505#3,7:778\n*S KotlinDebug\n*F\n+ 1 IndicatorBarComponent.kt\ncom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent\n*L\n562#1:774\n562#1:775,3\n562#1:778,7\n*E\n"
.end annotation


# static fields
.field public static final ACTIVE:F

.field public static final CUTOUT_MARGIN:F

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

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

.field public static final INACTIVE:F

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

.field public static final MODES_HIDDEN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_MENU_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final ONLINE_HELP_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_HIDE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
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


# instance fields
.field public final audioZoomIcon$delegate:Lkotlin/Lazy;

.field public final bottomGuideline$delegate:Lkotlin/Lazy;

.field public clickEnabled:Z

.field public final feedbackButton$delegate:Lkotlin/Lazy;

.field public final gestureCaptureIcon$delegate:Lkotlin/Lazy;

.field public final hdr10Icon$delegate:Lkotlin/Lazy;

.field public final helpButton$delegate:Lkotlin/Lazy;

.field public isControlPanelOpen:Z

.field public isModesMenuOpen:Z

.field public isMotFeedbackSupported:Z

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

.field public final panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public final settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsBtn$delegate:Lkotlin/Lazy;

.field public final settingsGuideline$delegate:Lkotlin/Lazy;

.field public final settingsText$delegate:Lkotlin/Lazy;

.field public shouldKeepHidden:Z

.field public final smileCaptureIcon$delegate:Lkotlin/Lazy;

.field public final tutorialButton$delegate:Lkotlin/Lazy;

.field public final tutorialTip$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014e

    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 4
    sput v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014f

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 8
    sput v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    .line 9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->CUTOUT_MARGIN:F

    .line 11
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 17
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 19
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 21
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 25
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 29
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 30
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 31
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 32
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 35
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 36
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 37
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v2, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 39
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 40
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 41
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v4

    .line 42
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v4

    .line 44
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 45
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v4

    .line 46
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 48
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->MODE_MENU_STATES:Ljava/util/Collection;

    .line 49
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 50
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v4

    .line 51
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 52
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v4

    .line 53
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 54
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v4

    .line 55
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 56
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v4

    .line 57
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 58
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v4

    .line 59
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 61
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->SETTINGS_HIDE_STATES:Ljava/util/Collection;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/16 v7, 0x10

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v7, 0x9

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 64
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->MODES_HIDDEN:Ljava/util/List;

    .line 65
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 66
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 67
    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 69
    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 70
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 71
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 73
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 74
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-array v8, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 75
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_CLOSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v4

    .line 76
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    .line 78
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ONLINE_HELP_STATES:Ljava/util/Collection;

    .line 79
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    new-array v9, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 80
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v10, v9, v4

    .line 81
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v8

    .line 83
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->DISABLE_CLICK_STATES:Ljava/util/Collection;

    new-array v9, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 84
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v11, "MODE_WAIT_LOADING_KEY"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v9, v4

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INFLATION_STATES:Ljava/util/List;

    .line 85
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 86
    invoke-interface {v10, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-interface {v10, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-interface {v10, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {v10, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    invoke-interface {v10, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 93
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 95
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 97
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 99
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 101
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 103
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 105
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 106
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 107
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v0, v4

    .line 108
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 109
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v4

    .line 110
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 112
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$settingsBtn$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$settingsBtn$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsBtn$delegate:Lkotlin/Lazy;

    .line 3
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$settingsText$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$settingsText$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsText$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$smileCaptureIcon$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$smileCaptureIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->smileCaptureIcon$delegate:Lkotlin/Lazy;

    .line 5
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$gestureCaptureIcon$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$gestureCaptureIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->gestureCaptureIcon$delegate:Lkotlin/Lazy;

    .line 6
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$audioZoomIcon$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$audioZoomIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->audioZoomIcon$delegate:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$hdr10Icon$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$hdr10Icon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->hdr10Icon$delegate:Lkotlin/Lazy;

    .line 8
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$feedbackButton$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$feedbackButton$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->feedbackButton$delegate:Lkotlin/Lazy;

    .line 9
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$helpButton$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$helpButton$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->helpButton$delegate:Lkotlin/Lazy;

    .line 10
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$tutorialButton$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$tutorialButton$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->tutorialButton$delegate:Lkotlin/Lazy;

    .line 11
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$tutorialTip$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$tutorialTip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->tutorialTip$delegate:Lkotlin/Lazy;

    .line 12
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$settingsGuideline$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$settingsGuideline$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsGuideline$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$bottomGuideline$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$bottomGuideline$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->bottomGuideline$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$panelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$panelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$panelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$panelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    .line 15
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 16
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 17
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$mAutoDisplayFlashListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$mAutoDisplayFlashListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$mAutoDisplayFlashListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    .line 18
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 19
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

    .line 20
    new-instance p1, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    return-void
.end method

.method public static fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V
    .locals 3

    and-int/lit8 p0, p5, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p0, p5, 0x4

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_1

    move-wide p3, v1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    .line 2
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p5, 0x0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    cmp-long p5, p3, v1

    if-eqz p5, :cond_5

    .line 3
    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4
    :cond_5
    new-instance p3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {p3, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final areGestureAndSmileEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final fadeInIcon(Landroid/view/View;F)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final getAudioZoomIcon()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->audioZoomIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getFeedbackButton()Landroid/widget/ImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->feedbackButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getGestureCaptureIcon()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->gestureCaptureIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getHdr10Icon()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->hdr10Icon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getHelpButton()Landroid/widget/ImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->helpButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getLimitRotatedViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getRotatedViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSmileCaptureIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getGestureCaptureIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getAudioZoomIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHdr10Icon()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getFeedbackButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHelpButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    return-object v0
.end method

.method public final getSettingsBtn()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsBtn$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getSettingsGuideline(Landroid/view/View;Z)I
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    .line 3
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->CONTROL_BAR_SETTINGS_KEYS:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getFilteredSettings(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isInSplitScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/2addr p0, v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07005c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p0, p1

    .line 8
    div-int/2addr p0, v1

    return p0
.end method

.method public final getSmileCaptureIcon()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->smileCaptureIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final getTutorialButton()Landroid/widget/ImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->tutorialButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->tutorialTip$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateUiForSplitScreen()V

    return-void
.end method

.method public final isInSplitScreen()Z
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

.method public onClick(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const-string p0, "item"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reverseColor(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getGestureCaptureIcon()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f060032

    const v2, 0x7f0603af

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    sget-object v5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 3
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 4
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSmileCaptureIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    sget-object p1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 7
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 8
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_3
    return-void
.end method

.method public rotate(I)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    int-to-float p1, p1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, p1, v4

    if-nez v4, :cond_3

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz v4, :cond_4

    sub-float/2addr v6, p1

    .line 5
    invoke-virtual {p0, v6, v3, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->y:F

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_6

    :cond_4
    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v3, 0x43870000    # 270.0f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_7

    :goto_4
    move v0, v5

    :cond_7
    if-eqz v0, :cond_9

    .line 7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    int-to-float v4, v2

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    goto :goto_5

    :cond_8
    int-to-float v0, v1

    div-float/2addr v0, v3

    int-to-float v4, v2

    div-float/2addr v4, v3

    sub-float v4, v0, v4

    :goto_5
    int-to-float v0, v1

    div-float v5, v0, v3

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v5, v2

    const/16 v2, 0x9

    int-to-float v2, v2

    .line 9
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    sub-float/2addr v6, p1

    .line 10
    invoke-virtual {p0, v6, v4, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 11
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->x:F

    float-to-int p1, p1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->y:F

    float-to-int v2, v2

    const/16 v3, 0xa

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_9
    :goto_6
    return-void
.end method

.method public final shouldShowModeTutorial()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x13

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    .line 18
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x24

    .line 22
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 26
    :cond_5
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x10

    .line 27
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 31
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 35
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    .line 40
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isInSplitScreen()Z

    move-result v1

    if-nez v1, :cond_a

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(ZLcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 48
    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->shouldKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->MODES_HIDDEN:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 7
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    and-int/2addr v2, v3

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 14
    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateIcons()V

    goto :goto_2

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->clickEnabled:Z

    .line 18
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method public final showToast$enumunboxing$(II)V
    .locals 16

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-static/range {p2 .. p2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    const/16 v3, 0x7d0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v8, 0x4

    if-eq v2, v8, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    const/16 v2, 0xbb8

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v8, v5

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v8, v2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v2, 0x2

    move v8, v2

    :goto_0
    move-object v3, v7

    goto :goto_1

    :cond_4
    move v8, v6

    :goto_1
    if-nez v3, :cond_5

    const/16 v2, 0xfa0

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    :cond_5
    new-instance v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object v2, v15

    move v3, v5

    move-object v5, v6

    move/from16 v6, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v14}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 11
    sput-object v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v1, v15}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    invoke-static {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout21_9()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 7
    invoke-static {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 10
    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 11
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->reverseColor(Z)V

    goto/16 :goto_1

    .line 13
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 15
    invoke-static {v3, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout21_9()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 18
    invoke-static {v3, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 19
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 21
    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 22
    :cond_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->shouldKeepHidden:Z

    .line 23
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isControlPanelOpen:Z

    .line 24
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 25
    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 27
    :cond_3
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 28
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 29
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 30
    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 31
    :cond_5
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->SETTINGS_HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 32
    :cond_6
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 33
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 35
    :cond_7
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->SHOW_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 36
    :cond_8
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 37
    :cond_9
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ONLINE_HELP_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 38
    :cond_a
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->DISABLE_CLICK_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->clickEnabled:Z

    goto :goto_1

    .line 39
    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 40
    :cond_c
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->MODE_MENU_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 41
    :cond_d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 42
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 43
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 44
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 45
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 46
    :cond_e
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 47
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 48
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 49
    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 50
    :cond_10
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 51
    :cond_11
    :goto_0
    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    :goto_1
    return-void
.end method

.method public final updateIcons()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isModesMenuOpen:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHelpButton()Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsBtn()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isMotFeedbackSupported:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getFeedbackButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsBtn()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    .line 7
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isMotFeedbackSupported:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getFeedbackButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHelpButton()Landroid/widget/ImageButton;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateSettingsButton()V

    .line 10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isControlPanelOpen:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateIndicatorIcons(Z)V

    return-void
.end method

.method public final updateIndicatorIcons(Z)V
    .locals 12

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSmileCaptureIcon()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getGestureCaptureIcon()Landroid/widget/ImageView;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x6

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getAudioZoomIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHdr10Icon()Landroid/widget/ImageView;

    move-result-object v7

    invoke-static/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    goto/16 :goto_6

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSmileCaptureIcon()Landroid/widget/ImageView;

    move-result-object p1

    sget v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSmileCaptureIcon()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x6

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getGestureCaptureIcon()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getGestureCaptureIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 14
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getAudioZoomIcon()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    goto :goto_4

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getAudioZoomIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 17
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0801ab

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHdr10Icon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHdr10Icon()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    goto :goto_6

    .line 23
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHdr10Icon()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    :goto_6
    return-void
.end method

.method public final updateSettingsButton()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsText$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isControlPanelOpen:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 4
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isControlPanelOpen:Z

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsGuideline(Landroid/view/View;Z)I

    move-result v0

    int-to-float v0, v0

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsGuideline$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    :goto_2
    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_4

    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_4
    const/4 v2, 0x0

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    int-to-float v3, v3

    :goto_3
    sub-float/2addr v3, v0

    if-eqz v1, :cond_9

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsBtn()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsBtn()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    return-void
.end method

.method public final updateSettingsGuideline(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsGuideline(Landroid/view/View;Z)I

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->settingsGuideline$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v0

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string p1, "guidelineEnd"

    .line 4
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final updateUiForSplitScreen()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isInSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 4
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v0, v1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->bottomGuideline$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    float-to-int v0, v0

    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/utility/AppExtensionsKt;->animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isInSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->shouldShowModeTutorial()V

    :goto_2
    return-void
.end method

.method public updateViewStub()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSmileCaptureIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getGestureCaptureIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getAudioZoomIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsBtn()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    :goto_4
    invoke-static {}, Lcom/motorola/camera/MotoFeedbackHelper;->createFeebackIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isMotFeedbackSupported:Z

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getFeedbackButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isMotFeedbackSupported:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    goto :goto_5

    :cond_7
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 10
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getFeedbackButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getHelpButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
