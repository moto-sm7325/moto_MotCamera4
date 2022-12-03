.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "PreviewSwapComponent.kt"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$WhenMappings;
    }
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
.field public applyPreviewDone:Z

.field public final dualCaptureLayoutTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

.field public previewDrag:Z

.field public previewSwap:Landroid/widget/ImageButton;

.field public rotation:F

.field public rotationX:F

.field public toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public final zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

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

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->INFLATION_STATES:Ljava/util/List;

    .line 2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 4
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 6
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    .line 8
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    const-string v4, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 10
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 11
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 13
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 15
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 17
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 19
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 21
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 23
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v6, v3

    .line 25
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v6, v3

    .line 27
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 29
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 30
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    new-array v8, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v3

    .line 32
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 34
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->DISABLE_STATES:Ljava/util/Collection;

    .line 35
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 36
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v1, v3

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 41
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 46
    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$zoomTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$zoomTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$zoomTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$zoomTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    .line 5
    sget-object p3, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$dualCaptureLayoutTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$dualCaptureLayoutTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$dualCaptureLayoutTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$dualCaptureLayoutTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    .line 8
    sget-object p3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    invoke-static {p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureLayoutTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
.method public final getRotation()F
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42340000    # 45.0f

    :goto_0
    return p0
.end method

.method public final getRotationX()F
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

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

    const v1, 0x7f0a0160

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewSwap:Landroid/widget/ImageButton;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->getRotation()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->getRotationX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->updateRotation(FF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewSwap:Landroid/widget/ImageButton;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->startFlipAnimation(Landroid/view/View;J)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewSwap:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto :goto_3

    :cond_2
    const-string p1, "null cannot be cast to non-null type android.os.Bundle"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    const-string p1, "DUAL_PREV_SWAP_BTN_ROTATION"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    const-string v2, "DUAL_PREV_SWAP_BTN_ROTATION_X"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "DUAL_PREV_DRAG_ACTION_UP"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    if-nez p2, :cond_4

    iget-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->applyPreviewDone:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 8
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;FFZ)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewDrag:Z

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->applyPreviewDone:Z

    goto :goto_3

    .line 11
    :cond_5
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewDrag:Z

    if-eqz p1, :cond_6

    return-void

    .line 12
    :cond_6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewDrag:Z

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :goto_3
    return-void
.end method

.method public final registerListener(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureLayoutTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 9
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 14
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 15
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 17
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 18
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 19
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 20
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewSwap:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 4
    :goto_1
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    :goto_2
    return-void
.end method

.method public final startFlipAnimation(Landroid/view/View;J)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v1, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->updateMatrix(Landroid/view/View;FF)V

    goto :goto_3

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-float/2addr v2, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v3

    cmpg-float v1, v3, v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/high16 v1, 0x42340000    # 45.0f

    goto :goto_2

    :cond_3
    const/high16 v1, -0x3dcc0000    # -45.0f

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_4

    .line 6
    invoke-virtual {p0, p1, v2, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->updateMatrix(Landroid/view/View;FF)V

    goto :goto_3

    .line 7
    :cond_4
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;

    invoke-direct {v4, v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;-><init>(FFF)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;

    invoke-direct {p3, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->start()V

    :goto_3
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
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->SHOW_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->applyPreviewDone:Z

    if-eqz p1, :cond_a

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->applyPreviewDone:Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->DISABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 15
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 16
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->registerListener(Z)V

    .line 18
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewDrag:Z

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 21
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->applyPreviewDone:Z

    goto/16 :goto_0

    .line 24
    :cond_6
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v3, v2

    .line 26
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v2, v3, v1

    .line 27
    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 31
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->switchCameraInPIPLayout(Landroid/os/Bundle;)Z

    move-result p1

    .line 32
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 33
    :cond_7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 38
    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 39
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewDrag:Z

    .line 41
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->applyPreviewDone:Z

    .line 42
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->registerListener(Z)V

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 44
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    .line 45
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_a
    :goto_0
    return-void
.end method

.method public final updateMatrix(Landroid/view/View;FF)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 2
    sget v0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->SQRT:F

    div-float v0, p0, v0

    .line 3
    new-instance v1, Landroid/util/SizeF;

    invoke-direct {v1, v0, v0}, Landroid/util/SizeF;-><init>(FF)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3, v3, p0}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 8
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 9
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    cmpg-float p0, p3, v3

    if-gtz p0, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 12
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    neg-float p0, p3

    .line 13
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 14
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final updateRotation(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->rotation:F

    .line 2
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->rotationX:F

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->previewSwap:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setRotationX(F)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
