.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;Z)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Z)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;Z)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/CameraData;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(Z)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->Companion:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;

    const-string/jumbo v1, "this$0"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->autoCapture:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setSelected(Z)V

    if-eqz p0, :cond_1

    .line 7
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110447

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110446

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 9
    :pswitch_2
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    const-string/jumbo v3, "this$0"

    .line 10
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 13
    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v4

    cmpg-float v4, v4, v3

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 15
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 17
    :cond_5
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060357

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_5

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 22
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 23
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0603ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 24
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    .line 25
    :goto_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "isFirst"

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_7

    .line 30
    :cond_d
    iget p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->OFFSET_LTR:I

    int-to-float p0, p0

    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    mul-float/2addr p0, v0

    iput p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->x:F

    .line 31
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 33
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout21_9()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 34
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 36
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v3

    .line 37
    :cond_e
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 39
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v3

    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->tutorialHeight:I

    int-to-float v0, v0

    add-float/2addr p0, v0

    .line 40
    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    mul-float/2addr p0, v0

    .line 41
    iput p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->y:F

    .line 42
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 43
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x33

    goto :goto_6

    :cond_f
    const/16 p0, 0x35

    :goto_6
    move v5, p0

    .line 44
    iget p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->x:F

    float-to-int v6, p0

    iget p0, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->y:F

    float-to-int v7, p0

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v9, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->SECONDARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;ILjava/lang/Object;)V

    :cond_10
    :goto_7
    return-void

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string/jumbo v1, "this$0"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggleState(ZZ)V

    return-void

    .line 48
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v1, "this$0"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->animateShow()V

    if-nez p0, :cond_12

    .line 51
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-nez p0, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCapture()V

    :cond_12
    :goto_8
    return-void

    .line 52
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    .line 53
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onSkipSilenceEnabledChanged(Z)V

    return-void

    .line 54
    :pswitch_6
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraData;

    .line 55
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 56
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    monitor-enter v2

    if-eqz v0, :cond_13

    .line 57
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    :try_start_1
    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onSaveComplete(Lcom/motorola/camera/CameraData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p0

    .line 61
    :try_start_2
    throw p0

    .line 62
    :cond_13
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 64
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    :try_start_3
    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onSaveError(Lcom/motorola/camera/CameraData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception p0

    .line 66
    :try_start_4
    throw p0

    .line 67
    :cond_14
    monitor-exit v2

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 68
    :goto_b
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Z

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    .line 69
    monitor-enter v0

    .line 70
    :try_start_5
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    .line 71
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    .line 72
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 73
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getFirstFrameCallback()Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 74
    invoke-interface {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 76
    :cond_15
    monitor-enter v0

    .line 77
    :try_start_6
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FrameCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v0

    if-eqz v3, :cond_16

    .line 78
    check-cast v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    iget-object v3, v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 79
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    .line 80
    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_16

    .line 81
    iput-boolean v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mUpdateAvailable:Z

    .line 82
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 83
    iput-boolean v1, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_16
    if-eqz v2, :cond_17

    if-nez p0, :cond_17

    .line 84
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 85
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_17
    return-void

    :catchall_3
    move-exception p0

    .line 86
    monitor-exit v0

    throw p0

    :catchall_4
    move-exception p0

    .line 87
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
