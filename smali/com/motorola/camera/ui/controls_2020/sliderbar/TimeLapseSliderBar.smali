.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;
.super Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;
.source "TimeLapseSliderBar.kt"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeLapseSliderBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeLapseSliderBar.kt\ncom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,487:1\n1#2:488\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;

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
.field public final animator:Landroid/animation/ValueAnimator;

.field public final hideValueTextRunnable:Ljava/lang/Runnable;

.field public indicatorValueText:Landroid/widget/TextView;

.field public mTimeLapseIcons:[I

.field public mostRecentVideo:Lcom/motorola/camera/CameraData;

.field public seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

.field public toggleButton:Landroid/widget/ImageButton;

.field public valueText:Landroid/widget/TextView;

.field public videoRecording:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->Companion:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->LISTENED_STATES:Ljava/util/Collection;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 9
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v2, v4

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v4

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mTimeLapseIcons:[I

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->hideValueTextRunnable:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final cancelIndicatorAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->hideIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->indicatorScale:F

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubble:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->hideValueTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_2
    return-void
.end method

.method public getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mTimeLapseIcons:[I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    :goto_0
    aget p0, v1, p0

    .line 3
    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 4
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v0
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final getTimeLapseValueText(F)Ljava/lang/String;
    .locals 3

    const/16 p0, 0x1e

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    .line 1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%dx"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(locale, format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const v2, 0x7f0a03e7

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const v2, 0x7f0a03e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    const v2, 0x7f0a03e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const v1, 0x7f0a03fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    :goto_3
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->toggleButton:Landroid/widget/ImageButton;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 9
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 10
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 11
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "mParentView.context.reso\u2026R.array.time_lapse_icons)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    move v3, v1

    :goto_8
    add-int/lit8 v4, v3, 0x1

    .line 14
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mTimeLapseIcons:[I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v3

    if-lt v4, v2, :cond_8

    goto :goto_9

    :cond_8
    move v3, v4

    goto :goto_8

    .line 15
    :cond_9
    :goto_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_a

    goto :goto_a

    .line 17
    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 18
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 19
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 21
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_a

    :cond_b
    const/high16 v2, 0x42080000    # 34.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 23
    :cond_c
    :goto_a
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->inflateViewStub()V

    .line 24
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateIconsVisibility()V

    return-void
.end method

.method public isCurrentComponentAvailable()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p0

    return p0
.end method

.method public isFeatureInUse()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mostRecentVideo:Lcom/motorola/camera/CameraData;

    :cond_0
    return-void
.end method

.method public onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mostRecentVideo:Lcom/motorola/camera/CameraData;

    return-void
.end method

.method public showSliderBar()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->cancelIndicatorAnimation()V

    .line 2
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method public showToggle()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->cancelIndicatorAnimation()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->videoRecording:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->setupImageDrawable()V

    .line 5
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showToggle()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->toggleButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f120474

    invoke-static {v1, v2, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILandroid/widget/ImageButton;)V

    .line 10
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_5
    :goto_4
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v2

    const-string v3, "TimeLapseSliderBar"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v2, :cond_15

    .line 6
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget v7, v2, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    const/4 v15, 0x2

    if-ne v7, v5, :cond_3

    const v5, 0x7f1202df

    .line 8
    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v5, "cameraApp.getString(R.st\u2026otos_stabilization_title)"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f1202de

    .line 9
    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v5, "cameraApp.getString(R.st\u2026hotos_stabilization_desc)"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    const-string v5, "BigTextStyle().bigText(message)"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 12
    iget-object v7, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mostRecentVideo:Lcom/motorola/camera/CameraData;

    if-eqz v7, :cond_2

    .line 13
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 14
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v7

    if-eq v5, v7, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.TRIM"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.apps.photos"

    .line 16
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v5, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mostRecentVideo:Lcom/motorola/camera/CameraData;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mostRecentVideo:Lcom/motorola/camera/CameraData;

    const-string v7, "null cannot be cast to non-null type com.motorola.camera.CameraData"

    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "mediaInfo"

    .line 19
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/*"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "video/*"

    .line 21
    :goto_0
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f1202a9

    .line 22
    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cameraApp.getString(R.st\u2026tion_channel_name_photos)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    .line 23
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "channelName"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v8, 0x4

    const-string v11, "photos_channel_id"

    invoke-direct {v7, v11, v1, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    .line 25
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v14, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v8, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Landroid/app/NotificationManager;

    .line 26
    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v16, 0x7f080092

    const/16 v17, 0x0

    const-string v8, "photos_channel_id"

    move-object v7, v2

    move-object v4, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    .line 27
    invoke-static/range {v7 .. v15}, Lcom/motorola/camera/shared/NotificationHelper;->createBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/Notification$Style;ILjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 28
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "builder"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "intent"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v5, 0xc000000

    .line 29
    invoke-static {v2, v6, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 30
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 31
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const-string v5, "builder.build()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v15

    const-string v1, "No recent video found or matches, skipping notification"

    .line 34
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v2, v15

    .line 35
    :goto_2
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->Companion:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;->isTimelapseReentry()Z

    move-result v1

    .line 36
    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    const/4 v4, 0x0

    .line 37
    iput-object v4, v0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-nez v3, :cond_4

    const-string v0, "SaveImageService"

    const-string v1, "Timelapse video data is null, nothing to save"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 39
    :cond_4
    new-instance v4, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {v4, v3, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Z)V

    .line 40
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 41
    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    .line 43
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 44
    :cond_6
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 45
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 46
    :cond_7
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 47
    iput-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->videoRecording:Z

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 49
    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    .line 50
    :cond_8
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 51
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 52
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 53
    :cond_9
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 54
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_9

    .line 55
    :cond_a
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v2, "changeEvent.context"

    .line 57
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const-string v2, "Unable to create thumbnail: "

    .line 58
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.google.android.apps.photos.editor.STABILIZE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    if-nez v7, :cond_b

    const/4 v7, 0x0

    goto :goto_3

    .line 60
    :cond_b
    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v7

    .line 61
    :goto_3
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    invoke-static {v8}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 62
    sget-object v8, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v8}, Lcom/motorola/camera/storage/StorageUtils;->getTemporaryDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    .line 63
    sget-object v10, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {v10, v8, v9}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_4

    .line 64
    :cond_c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v8, "Not enough internal space for hyperlapse: "

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v5, v6

    :goto_4
    if-eqz v5, :cond_12

    if-eqz v7, :cond_12

    .line 65
    iget-object v0, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-nez v0, :cond_e

    goto :goto_5

    .line 66
    :cond_e
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    if-nez v5, :cond_f

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_6
    const-string/jumbo v6, "source"

    .line 67
    invoke-static {v5, v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getStabilizationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v8, "video/mp4"

    .line 68
    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "destination"

    .line 69
    invoke-static {v5, v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getStabilizationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "output_uri"

    .line 70
    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    :try_start_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 72
    iget-object v8, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 73
    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x0

    .line 75
    :try_start_2
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_8

    .line 77
    :cond_10
    new-instance v8, Lcom/motorola/camera/saving/FileName;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_7

    :cond_11
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    :goto_7
    invoke-direct {v8, v0}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    .line 78
    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    move-result-object v0

    const-string/jumbo v8, "thumbFileName"

    .line 79
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v0

    .line 80
    iput-object v0, v7, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    .line 81
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v8

    .line 82
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v0, v8, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    .line 84
    :try_start_4
    invoke-static {v9, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "thumbnail"

    .line 85
    invoke-static {v5, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getStabilizationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v5, "thumbnail_uri"

    .line 86
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 87
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-static {v9, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v0

    move-object v5, v0

    .line 88
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-static {v8, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 89
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_1
    move-exception v0

    .line 90
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_8
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 92
    iput-object v7, v0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 93
    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 94
    sget-object v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->PHOTOS_STABILIZE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 95
    iget v3, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/4 v5, 0x0

    .line 96
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    .line 97
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 98
    iget-object v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ACTIVITY_LAUNCHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_a

    .line 99
    :cond_12
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 100
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_a

    .line 102
    :cond_13
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 103
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 104
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 105
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 106
    invoke-static {v5, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_a

    .line 107
    :cond_14
    :goto_9
    iput-boolean v6, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->videoRecording:Z

    :cond_15
    :goto_a
    return-void
.end method

.method public final updateIconsVisibility()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Float;

    const-string/jumbo v1, "timeLapseValue"

    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 6
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->getTimeLapseValueText(F)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateTextPosition()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 15
    :cond_3
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final updateTextPosition()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 3
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v4, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    const/high16 v5, 0x41800000    # 16.0f

    .line 6
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    add-float/2addr v6, v2

    .line 7
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setX(F)V

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x41f80000    # 31.0f

    .line 10
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x26

    int-to-float v0, v0

    .line 11
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 12
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setY(F)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120475

    new-array v6, v3, [Ljava/lang/Object;

    .line 14
    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez v7, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    :goto_2
    aput-object v7, v6, v1

    .line 15
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120471

    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_4
    aput-object v2, v3, v1

    .line 18
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method
