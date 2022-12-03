.class public final Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "ZoomToggleCliComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZoomToggleCliComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZoomToggleCliComponent.kt\ncom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,255:1\n1#2:256\n*E\n"
.end annotation


# static fields
.field public static final DISABLE_STATES:Ljava/util/Collection;
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

.field public static final MAIN_CLI_TEXT:Ljava/lang/String;

.field public static final SHOW_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDE_CLI_TEXT:Ljava/lang/String;


# instance fields
.field public buttonControl:Landroid/widget/Button;

.field public isCodecVideoRecording:Z

.field public isSliderBarSelected:Z

.field public final panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public shouldKeepHidden:Z

.field public final showModeComponent:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    const-string v1, "RATIO_INT_PATTERN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "format(format, *args)"

    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/mediacodec/CodecUtil$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    const-string v2, "RATIO_DEC_PATTERN"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v5, 0x5

    .line 3
    invoke-static {v5}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 4
    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/mediacodec/CodecUtil$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->WIDE_CLI_TEXT:Ljava/lang/String;

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_WAIT_LOADING_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->INFLATION_STATES:Ljava/util/List;

    .line 6
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 8
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    const-string v3, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 11
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v4

    .line 13
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v4

    .line 15
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v5, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v4

    .line 17
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    const-string v5, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 19
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->DISABLE_STATES:Ljava/util/Collection;

    .line 20
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 21
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 22
    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 24
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 26
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 28
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 30
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 32
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 33
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v4

    .line 34
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 36
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 37
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 38
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 39
    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v4

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026TES)\n            .build()"

    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$panelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$panelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$panelTriggeredListener$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$panelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    .line 3
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$showModeComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$showModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$showModeComponent$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$showModeComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    .line 6
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p2

    .line 7
    invoke-static {p1, v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;Z)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->showModeComponent:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
.method public animateShow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isZoomToggleSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_1
    :goto_0
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
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->buttonControl:Landroid/widget/Button;

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f0a045e

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    :goto_0
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->buttonControl:Landroid/widget/Button;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public final isZoomToggleSupported()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isSliderBarSelected:Z

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->unregisterListeners()V

    .line 4
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isZoomToggleSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
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
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->INFLATION_STATES:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 5
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->showModeComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->unregisterListeners()V

    goto/16 :goto_0

    .line 12
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->DISABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 14
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isCodecVideoRecording:Z

    .line 18
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    .line 19
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isCodecVideoRecording:Z

    .line 22
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    goto :goto_0

    .line 23
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->unregisterListeners()V

    .line 25
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 29
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 30
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->showModeComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 32
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 33
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 34
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isCodecVideoRecording:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->shouldKeepHidden:Z

    goto :goto_0

    .line 35
    :cond_7
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->SHOW_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isZoomToggleSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 36
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final unregisterListeners()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->showModeComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {v2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
