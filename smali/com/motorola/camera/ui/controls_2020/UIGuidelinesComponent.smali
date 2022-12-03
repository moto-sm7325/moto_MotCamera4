.class public final Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "UIGuidelinesComponent.kt"


# static fields
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
.field public aboveToggleBarComponentsGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

.field public captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public controlPanelBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public dualCaptureComponentsHorizontalGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public dualCaptureComponentsVerticalGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modePillGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final previewDragListener:Lcom/motorola/camera/Notifier$Listener;

.field public final showDualCaptureLayoutComponent:Lcom/motorola/camera/Notifier$Listener;

.field public final showFilterModeComponent:Lcom/motorola/camera/Notifier$Listener;

.field public toggleBarGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public viewFinderTopGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public zoomToggleBarGuideline:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v4

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->previewDragListener:Lcom/motorola/camera/Notifier$Listener;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->showFilterModeComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showDualCaptureLayoutComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->showDualCaptureLayoutComponent:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method

.method public static final access$setAboveToggleBarComponentsGuideLinePosition(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;F)V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->viewFinderTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->toggleBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->zoomToggleBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->modePillGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlPanelBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->aboveToggleBarComponentsGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->dualCaptureComponentsHorizontalGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->dualCaptureComponentsVerticalGuideline:Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setupGuidelines(Z)V

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setupGuidelines(Z)V

    return-void
.end method

.method public final registerListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->previewDragListener:Lcom/motorola/camera/Notifier$Listener;

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->showFilterModeComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x1

    .line 11
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->showDualCaptureLayoutComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 13
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 14
    invoke-static {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->previewDragListener:Lcom/motorola/camera/Notifier$Listener;

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 19
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 20
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 23
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->showFilterModeComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 24
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    .line 25
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->showDualCaptureLayoutComponent:Lcom/motorola/camera/Notifier$Listener;

    .line 27
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 28
    invoke-static {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setCaptureBarGuidelinePosition(Z)V

    return-void
.end method

.method public final setCaptureBarGuidelinePosition(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 3
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, v1

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FZ)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDualCaptureSwapButtonGuideLinePosition(FFZ)V
    .locals 1

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->dualCaptureComponentsHorizontalGuideline:Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    invoke-static {p3, p1, v0}, Lcom/motorola/camera/utility/AppExtensionsKt;->animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->dualCaptureComponentsVerticalGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    float-to-int p1, p2

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/utility/AppExtensionsKt;->animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V

    goto :goto_2

    .line 3
    :cond_2
    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->dualCaptureComponentsHorizontalGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    float-to-int p1, p1

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 4
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->dualCaptureComponentsVerticalGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_2
    return-void
.end method

.method public final setupGuidelines(Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 6
    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    mul-float/2addr v0, v1

    .line 8
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getControlBarGuideline()F

    move-result v1

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 11
    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v0

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const v2, 0x7f0b000c

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v1, v5}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V

    mul-int/2addr v2, v0

    .line 14
    div-int/2addr v2, v5

    int-to-long v0, v2

    .line 15
    invoke-virtual {v3, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 16
    :cond_4
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    :goto_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setCaptureBarGuidelinePosition(Z)V

    .line 18
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_3
    const/4 p1, 0x0

    .line 22
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

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

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "bundle"

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "USE_CASE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 9
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const-string v2, "MODE"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result p1

    .line 13
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;-><init>(ZLcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setupGuidelines(Z)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->registerListener(Z)V

    goto :goto_1

    .line 17
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->registerListener(Z)V

    :cond_7
    :goto_1
    return-void
.end method
