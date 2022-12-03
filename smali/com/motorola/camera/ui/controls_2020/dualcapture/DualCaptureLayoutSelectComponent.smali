.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;
.super Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;
.source "DualCaptureLayoutSelectComponent.kt"


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
.field public animationTextView:Landroid/animation/AnimatorSet;

.field public dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

.field public layoutListUpdateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

.field public textView:Landroid/widget/TextView;

.field public viewModel:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/Collection;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 8
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 10
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 16
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v2, v4

    .line 20
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v2, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 23
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v4

    .line 25
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v6, v4

    .line 26
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 28
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->DISABLE_STATES:Ljava/util/Collection;

    .line 29
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 30
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v1, v4

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->ANIMATE_HIDE_STATES:Ljava/util/Collection;

    .line 34
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 35
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 36
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/List;

    .line 38
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 40
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026TES)\n            .build()"

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V
    .locals 1

    const-string/jumbo v0, "stateHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->animationTextView:Landroid/animation/AnimatorSet;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutListUpdateObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800f3

    goto :goto_0

    :cond_0
    const v0, 0x7f0800f1

    .line 3
    :goto_0
    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 4
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 9
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

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 4
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->inflateViewStub()V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a01e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 7
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/high16 v3, 0x42080000    # 34.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 8
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a022f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->animationTextView:Landroid/animation/AnimatorSet;

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->textView:Landroid/widget/TextView;

    const/4 v3, 0x2

    if-nez v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 14
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 15
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    invoke-virtual {v7, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x0

    .line 17
    invoke-virtual {v7, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    .line 18
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    invoke-static {v2, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 19
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 20
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 21
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$2$1;

    invoke-direct {v4, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$2$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->updateIconsVisibility()V

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_3

    :cond_4
    const v2, 0x7f0a015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    :goto_3
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    .line 24
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    .line 25
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    :goto_4
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const v4, 0x7f0d006a

    .line 27
    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 28
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 29
    :goto_5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$3;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$3;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;)V

    .line 30
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_6
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_8

    move-object v1, v0

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_7
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_9

    move-object v0, v1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    :cond_9
    if-nez v0, :cond_a

    goto :goto_9

    .line 32
    :cond_a
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    if-nez v1, :cond_b

    goto :goto_8

    .line 33
    :cond_b
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->init()V

    .line 34
    :goto_8
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    if-nez v1, :cond_c

    goto :goto_9

    .line 35
    :cond_c
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->layoutLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_d

    goto :goto_9

    .line 36
    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutListUpdateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_9
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isCurrentComponentAvailable()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    return p0
.end method

.method public isFeatureInUse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyModeComponent(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    const-string p0, "IS_SELECTED"

    .line 3
    invoke-static {p0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public setupImageDrawable()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->setupImageDrawable()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :goto_0
    return-void
.end method

.method public showSliderBar()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->updateLayoutVisibility()V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method public showToggle()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePIPSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showToggle()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->isDragging:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->registered:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView$scrollListener$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->registered:Z

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120436

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->setupImageDrawable()V

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_5
    :goto_3
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2
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
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/List;

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const-string v1, "MODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    :goto_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    if-nez p0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->init()V

    goto/16 :goto_2

    .line 12
    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 13
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->updateIconsVisibility()V

    .line 17
    :cond_4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 18
    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->ANIMATE_HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 20
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 21
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 22
    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->DISABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 23
    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 25
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 28
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    if-nez p0, :cond_9

    goto :goto_2

    .line 30
    :cond_9
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->initialized:Z

    if-nez p1, :cond_a

    goto :goto_2

    .line 31
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->layoutLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 32
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->initialized:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public final updateIconsVisibility()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateLayoutVisibility()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.dualcapture.DualCaptureLayoutAdapter"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 4
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureLayoutType()I

    move-result v2

    .line 6
    new-instance v4, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, v1}, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;ILcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->registered:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView$scrollListener$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 9
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->registered:Z

    :cond_1
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
