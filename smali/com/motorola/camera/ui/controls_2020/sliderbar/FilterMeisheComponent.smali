.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;
.super Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;
.source "FilterMeisheComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterMeisheComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterMeisheComponent.kt\ncom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,568:1\n1#2:569\n*E\n"
.end annotation


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
.field public animationTextView:Landroid/animation/AnimatorSet;

.field public buttonControlAnimator:Landroid/animation/ValueAnimator;

.field public filterListUpdateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public filterSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

.field public googleLens:Landroid/view/View;

.field public lensAllowed:Z

.field public final motionPhotoListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingLockedChangeListener<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public resetButton:Landroid/widget/ImageButton;

.field public textView:Landroid/widget/TextView;

.field public viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;


# direct methods
.method public static $r8$lambda$KzoPaltljrGNlVkkiEMChjNfuD8(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "textView.resources.getSt\u2026ray(R.array.filter_names)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/motorola/camera/utility/FilterMeisheUtil;->TAG:Ljava/lang/String;

    .line 8
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v2, Ljava/lang/String;

    const-string v3, "current"

    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/utility/FilterMeisheUtil;->getId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 13
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->LISTENED_STATES:Ljava/util/Collection;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v1, v2

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animationTextView:Landroid/animation/AnimatorSet;

    .line 3
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda4;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->motionPhotoListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filterListUpdateObserver:Landroidx/lifecycle/Observer;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filterSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    return-void
.end method

.method public static final synthetic access$showSliderBar$s417993662(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    return-void
.end method

.method public static final synthetic access$showToggle$s417993662(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showToggle()V

    return-void
.end method


# virtual methods
.method public final animateButtonControl(Ljava/lang/String;FZLkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;ZFLkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->buttonControlAnimator:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateHideView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 p0, 0x8

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final animateShowView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final fadeAnimatorSet(Landroid/widget/TextView;JJZ)Landroid/animation/AnimatorSet;
    .locals 3

    .line 1
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4
    invoke-virtual {v0, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p2, 0x1

    new-array p3, p2, [Landroid/animation/Animator;

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    if-eqz p6, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    if-eqz p6, :cond_1

    move p4, p5

    .line 5
    :cond_1
    sget-object p5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p6, 0x2

    new-array p6, p6, [F

    const/4 v2, 0x0

    aput v1, p6, v2

    aput p4, p6, p2

    invoke-static {p1, p5, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p3, v2

    .line 6
    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f0801b9

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
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
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->googleLens:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v0
.end method

.method public inflateViewStub()V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v8, 0x0

    .line 3
    iput-object v8, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 4
    invoke-super/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->inflateViewStub()V

    .line 5
    iget-object v0, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 7
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 8
    iget-object v2, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, 0x42080000    # 34.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->textView:Landroid/widget/TextView;

    const/4 v9, 0x4

    if-nez v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_1
    sget-object v0, Lcom/motorola/camera/utility/FilterMeisheUtil;->filterMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v10, 0x1

    xor-int/2addr v0, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    goto/16 :goto_8

    .line 13
    :cond_4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_8

    .line 14
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackMainCamera()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_8

    .line 15
    :cond_6
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCameraSensorName(backMainCameraId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_IDS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 17
    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 18
    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 19
    invoke-static {v0, v2}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 20
    array-length v3, v1

    if-nez v3, :cond_7

    move v3, v10

    goto :goto_2

    :cond_7
    move v3, v11

    :goto_2
    if-nez v3, :cond_d

    if-eqz v2, :cond_a

    array-length v3, v2

    if-nez v3, :cond_8

    move v3, v10

    goto :goto_3

    :cond_8
    move v3, v11

    :goto_3
    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v3, v11

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v10

    :goto_5
    if-eqz v3, :cond_b

    goto :goto_7

    .line 21
    :cond_b
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    move v3, v11

    :goto_6
    add-int/lit8 v4, v3, 0x1

    .line 22
    sget-object v5, Lcom/motorola/camera/utility/FilterMeisheUtil;->filterMap:Ljava/util/Map;

    aget-object v6, v2, v3

    const-string v12, "filterFileNames[i]"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v4, v0, :cond_c

    goto :goto_8

    :cond_c
    move v3, v4

    goto :goto_6

    .line 23
    :cond_d
    :goto_7
    sget-object v1, Lcom/motorola/camera/utility/FilterMeisheUtil;->TAG:Ljava/lang/String;

    const-string v2, "MCF failed get filters ids or names for sensor: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_e
    :goto_8
    iget-object v12, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animationTextView:Landroid/animation/AnimatorSet;

    .line 25
    iget-object v13, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->textView:Landroid/widget/TextView;

    if-nez v13, :cond_f

    goto :goto_9

    .line 26
    :cond_f
    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v14, v0

    .line 27
    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v16, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v18, v4

    move-wide/from16 v4, v16

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->fadeAnimatorSet(Landroid/widget/TextView;JJZ)Landroid/animation/AnimatorSet;

    move-result-object v16

    const/4 v6, 0x0

    move-wide/from16 v4, v18

    .line 29
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->fadeAnimatorSet(Landroid/widget/TextView;JJZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v16, v1, v11

    aput-object v0, v1, v10

    .line 30
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 31
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$2$1;

    invoke-direct {v0, v13}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$2$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->updateIconsVisibility()V

    .line 33
    iget-object v0, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_10

    move-object v0, v8

    goto :goto_a

    :cond_10
    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    :goto_a
    iput-object v0, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    .line 34
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    invoke-direct {v0, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    .line 35
    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez v1, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    :goto_b
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const v2, 0x7f0d006a

    const/16 v3, 0x8

    .line 37
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 38
    iget-object v2, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez v2, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 39
    :goto_c
    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$3;

    invoke-direct {v2, v7, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$3;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;)V

    .line 40
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_d
    iget-object v1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_14

    move-object v1, v8

    goto :goto_e

    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_e
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_15

    move-object v8, v1

    check-cast v8, Landroidx/fragment/app/FragmentActivity;

    :cond_15
    if-nez v8, :cond_16

    goto :goto_f

    .line 42
    :cond_16
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v8}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez v1, :cond_17

    goto :goto_f

    .line 43
    :cond_17
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_18

    goto :goto_f

    .line 44
    :cond_18
    iget-object v2, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filterListUpdateObserver:Landroidx/lifecycle/Observer;

    .line 45
    invoke-virtual {v1, v8, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    :goto_f
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 47
    iget-object v1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->googleLens:Landroid/view/View;

    if-nez v1, :cond_19

    goto :goto_10

    .line 48
    :cond_19
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v7}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :goto_10
    sget-object v1, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$6;

    invoke-direct {v2, v7, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$6;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;Lcom/motorola/camera/utility/LensApiHelper;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/LensApiHelper;->checkGoogleLensAvailability(Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;)V

    .line 51
    :cond_1a
    iget-object v1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0317

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1b

    goto :goto_11

    .line 52
    :cond_1b
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 55
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 56
    :goto_11
    iget-object v0, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_1c

    goto :goto_12

    .line 57
    :cond_1c
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120446

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_12
    return-void
.end method

.method public isCurrentComponentAvailable()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result p0

    return p0
.end method

.method public isFeatureInUse()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyModeComponent(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "IS_SELECTED"

    .line 2
    invoke-static {p0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public onApplyTint(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public reverseColor(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->reverseColor(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f06037c

    goto :goto_0

    :cond_0
    const p1, 0x7f06037a

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->textView:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method public selectButtonAction(Landroid/widget/ImageButton;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderBar(Z)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showToggle(Z)V

    :goto_0
    return-void
.end method

.method public setupClickListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageButton;Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setupImageDrawable()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a1

    aput v4, v2, v3

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080185

    sget-object v5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 4
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 6
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f0801b9

    .line 8
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 9
    invoke-virtual {v1, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public showSliderBar()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderBar(Z)V

    return-void
.end method

.method public final showSliderBar(Z)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filterSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 5
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07013d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->textView:Landroid/widget/TextView;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 12
    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->googleLens:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateHideView(Landroid/view/View;)V

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateShowView(Landroid/view/View;)V

    const v2, 0x7f120477

    if-eqz p1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mParentView.resources.ge\u2026ng.talkback_toggle_close)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$showSliderBar$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$showSliderBar$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateButtonControl(Ljava/lang/String;FZLkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 16
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p1, :cond_a

    goto :goto_4

    .line 17
    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILandroid/widget/ImageButton;)V

    .line 20
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method public showToggle()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showToggle(Z)V

    return-void
.end method

.method public final showToggle(Z)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filterSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 6
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 10
    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07013d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->updateLens()V

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateHideView(Landroid/view/View;)V

    const v2, 0x7f120446

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mParentView.resources.ge\u2026live_filters_toggle_open)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$showToggle$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$showToggle$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateButtonControl(Ljava/lang/String;FZLkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILandroid/widget/ImageButton;)V

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez p1, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    iput-boolean v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    .line 24
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->motionPhotoListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;

    .line 6
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingLockedChangeListener;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/List;

    .line 8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->motionPhotoListener:Lcom/motorola/camera/settings/SettingLockedChangeListener;

    .line 13
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingLockedChangeListener;)V

    goto :goto_1

    .line 14
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 15
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->buttonControlAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->updateIconsVisibility()V

    .line 17
    :cond_4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 18
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 20
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 21
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateFilterVisibility()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.sliderbar.FilterMeisheAdapter"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_a

    .line 5
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    .line 6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 7
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v2, Ljava/lang/String;

    const-string v5, "current"

    .line 10
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_5

    .line 11
    :cond_4
    iget-object v5, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    .line 12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/util/Pair;

    .line 13
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_6
    move-object v6, v7

    .line 14
    :goto_3
    check-cast v6, Landroid/util/Pair;

    if-nez v6, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_4
    if-nez v7, :cond_8

    :goto_5
    move v2, v4

    goto :goto_6

    .line 17
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 18
    :goto_6
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;ILcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    if-nez v1, :cond_9

    .line 20
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 21
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    .line 22
    :cond_9
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public final updateIconsVisibility()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateLens()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.GOOGLE_LENS).value"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->googleLens:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->lensAllowed:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateShowView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    .line 12
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
