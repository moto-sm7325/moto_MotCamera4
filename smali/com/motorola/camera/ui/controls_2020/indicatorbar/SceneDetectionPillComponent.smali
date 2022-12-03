.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SceneDetectionPillComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;

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

.field public static final LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/Notifier$TYPE;",
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
.field public currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

.field public final eventListener:Lcom/motorola/camera/EventListener;

.field public isControlPanelOpen:Z

.field public isEnabled:Z

.field public isOptOutHidden:Z

.field public isOtherComponentVisible:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

.field public final multiVisibilitySubject$delegate:Lkotlin/Lazy;

.field public noSceneDetected:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;

.field public final panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public final sceneDetectionIcon$delegate:Lkotlin/Lazy;

.field public final sceneDetectionText$delegate:Lkotlin/Lazy;

.field public final settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_WAIT_LOADING_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->INFLATION_STATES:Ljava/util/List;

    .line 2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 4
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 6
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 8
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 10
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 12
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 14
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 16
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    const-string v4, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 18
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 19
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 21
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 23
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 24
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 25
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 30
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 33
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->LISTENED_STATES:Ljava/util/Collection;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/motorola/camera/Notifier$TYPE;

    .line 34
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v1, v3

    .line 35
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    .line 36
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->OPT_IN_PILL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v1, v0

    .line 37
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    .line 3
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$sceneDetectionIcon$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$sceneDetectionIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->sceneDetectionIcon$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$sceneDetectionText$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$sceneDetectionText$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->sceneDetectionText$delegate:Lkotlin/Lazy;

    .line 5
    new-instance p2, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 6
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$panelTriggeredListener$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$panelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$panelTriggeredListener$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$panelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    .line 7
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {p2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 9
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;

    .line 10
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$multiVisibilitySubject$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$multiVisibilitySubject$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->multiVisibilitySubject$delegate:Lkotlin/Lazy;

    .line 11
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$mcfStateAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    return-void
.end method


# virtual methods
.method public final cleanSceneInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final cleanUp(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 6
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v1, p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 9
    sput-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateSceneDetection()V

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->hideScenePill()V

    return-void
.end method

.method public final getSceneDetectionIcon()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->sceneDetectionIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSceneDetectionText()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->sceneDetectionText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSceneForUpdate(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->Companion:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;->getFactory()Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final hideScenePill()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanSceneInfo()V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public inflateViewStub()V
    .locals 2
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

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f0802c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :goto_2
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->rotateVisiblePill(I)V

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->settingChangedListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 12
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanSceneInfo()V

    return-void
.end method

.method public final isAutoLensSwitchScene()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eq v0, v2, :cond_3

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v1

    :goto_1
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v1, p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method public final isCurrentScenePersistent()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public final registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->multiVisibilitySubject$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    return-void
.end method

.method public rotate(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->rotateVisiblePill(I)V

    return-void
.end method

.method public final rotateVisiblePill(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/16 v3, 0xb4

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    .line 3
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRotation()F

    move-result p1

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_4

    add-float/2addr p0, v4

    :cond_4
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, p0, v3

    if-lez v3, :cond_5

    sub-float/2addr p0, v4

    :cond_5
    add-float/2addr p1, p0

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_6

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 7
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method public final setOptOutVisibility(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isAutoLensSwitchScene()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v4

    .line 4
    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsHelper;->isAiSceneModesSupportedOnCamera(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_7

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOtherComponentVisible:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isControlPanelOpen:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOptOutHidden:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanSceneInfo()V

    goto :goto_4

    .line 15
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->hideScenePill()V

    :goto_4
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5
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
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->SHOW_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 5
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "changeEvent.context"

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    .line 12
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isControlPanelOpen:Z

    xor-int/2addr p1, v2

    .line 14
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOptOutHidden:Z

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility()V

    goto/16 :goto_5

    .line 16
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v3, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanUp(Z)V

    .line 20
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOptOutHidden:Z

    .line 21
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isControlPanelOpen:Z

    goto/16 :goto_5

    .line 22
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 23
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ORIGIN_CAMERA_TYPE"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isCurrentScenePersistent()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "IS_MANUAL_JUMP"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 29
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p1, :cond_c

    .line 30
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez p1, :cond_6

    goto :goto_4

    .line 32
    :cond_6
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneAdjustmentSetting(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneForUpdate(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    const-string v1, "eventListener"

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    .line 35
    :cond_7
    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v1

    :goto_0
    sget-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v1, v4, :cond_a

    .line 36
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    goto :goto_2

    :cond_9
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    move v2, v3

    .line 37
    :goto_3
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v2, :cond_b

    goto :goto_4

    .line 38
    :cond_b
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 39
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 40
    :cond_c
    :goto_4
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanUp(Z)V

    :cond_d
    :goto_5
    return-void
.end method

.method public final updateSceneDetection()V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const/4 v3, 0x0

    const-string v4, "eventListener"

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    iget-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 3
    :cond_2
    invoke-interface {v2}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    if-ne v6, v7, :cond_a

    .line 4
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneAdjustmentStatusEnabled(Lcom/motorola/camera/scenedetection/scene/Scene;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v5

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    .line 7
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {v2}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v5

    :goto_1
    const/4 v4, 0x1

    if-ne v5, v1, :cond_7

    .line 9
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    move v3, v4

    .line 10
    :cond_7
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v3, :cond_8

    goto :goto_5

    .line 11
    :cond_8
    sput-object v2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 12
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_5

    .line 13
    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    .line 14
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 16
    sput-object v5, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 17
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_5

    .line 18
    :cond_a
    invoke-interface {v2}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    if-ne v1, v2, :cond_c

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    .line 20
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 22
    sput-object v5, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 23
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_5

    .line 24
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/EventListener;

    .line 25
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 27
    sput-object v5, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 28
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public updateViewStub()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->noSceneDetected:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final updateVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->setOptOutVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    move-result-object v0

    if-ne v2, v0, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->setOptOutVisibility(Z)V

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->setOptOutVisibility(Z)V

    :cond_3
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
