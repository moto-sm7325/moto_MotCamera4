.class public final Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "AutoNightVisionPillComponent.kt"


# static fields
.field public static final CAPTURE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENABLE_STATES:Ljava/util/Collection;
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


# instance fields
.field public mIsCapturing:Z

.field public mIsControlPanelOpened:Z

.field public final mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public mcfAutoNV:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

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

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->INFLATION_STATES:Ljava/util/List;

    .line 2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    const-string v4, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 6
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->ENABLE_STATES:Ljava/util/Collection;

    .line 7
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 8
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 9
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 11
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 13
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 15
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->DISABLE_STATES:Ljava/util/Collection;

    .line 16
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    new-array v7, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v3

    .line 18
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v3

    .line 20
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v0, v3

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 24
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->CAPTURE_STATES:Ljava/util/Collection;

    .line 25
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 26
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 27
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026TES)\n            .build()"

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 5
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->LISTENED_STATES:Ljava/util/Collection;

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

    return-void
.end method

.method public final registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupportedByCurrentCamera(Z)Z

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
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 8
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    invoke-static {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final showPill()V
    .locals 17

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 3
    invoke-static {v10}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    const/16 v3, 0x7d0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xbb8

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    move-object v3, v5

    :cond_4
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

    const v12, 0x7f120036

    const/16 v16, 0x0

    move-object v2, v15

    move v3, v5

    move-object v5, v6

    move v6, v12

    move-object/from16 v12, v16

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
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->ENABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    if-nez p1, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showPill()V

    goto/16 :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->CAPTURE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    if-eqz p1, :cond_4

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    .line 9
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f120036

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->DISABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->INFLATION_STATES:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const-string v3, "changeEvent.context"

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 18
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 19
    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 21
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 24
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 25
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    .line 27
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 28
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    .line 29
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    :cond_4
    :goto_0
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
