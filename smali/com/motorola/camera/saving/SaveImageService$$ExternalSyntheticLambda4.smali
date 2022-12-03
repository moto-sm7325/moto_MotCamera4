.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;Z)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;Z)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/CameraData;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->Companion:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;

    const-string/jumbo v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->autoCapture:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setSelected(Z)V

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120459

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120458

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Ljava/util/Collection;

    const-string/jumbo v1, "this$0"

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesCloseButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 9
    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    return-void

    .line 10
    :pswitch_2
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    const-string/jumbo v1, "this$0"

    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_7

    .line 13
    :cond_4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 16
    :cond_6
    sget v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    .line 17
    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060359

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

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

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_7

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 22
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 23
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0603af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 24
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->INACTIVE:F

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeInIcon(Landroid/view/View;F)V

    .line 25
    :goto_7
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

    if-eqz v0, :cond_11

    .line 29
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_9

    .line 30
    :cond_f
    iget p0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->OFFSET_LTR:I

    int-to-float p0, p0

    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    mul-float/2addr p0, v0

    iput p0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->x:F

    .line 31
    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 33
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->tutorialHeight:I

    int-to-float v0, v0

    add-float/2addr p0, v0

    .line 34
    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    mul-float/2addr p0, v0

    .line 35
    iput p0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->y:F

    .line 36
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 37
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0x33

    goto :goto_8

    :cond_10
    const/16 p0, 0x35

    :goto_8
    move v2, p0

    .line 38
    iget p0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->x:F

    float-to-int v3, p0

    iget p0, v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->y:F

    float-to-int v4, p0

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->SECONDARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;ILjava/lang/Object;)V

    :cond_11
    :goto_9
    return-void

    .line 39
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v1, "this$0"

    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_12

    .line 41
    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->rotation:F

    goto :goto_a

    .line 42
    :cond_12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->getRotation()F

    move-result v1

    :goto_a
    if-eqz p0, :cond_13

    .line 43
    iget p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->rotationX:F

    goto :goto_b

    .line 44
    :cond_13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->getRotationX()F

    move-result p0

    .line 45
    :goto_b
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->updateRotation(FF)V

    .line 46
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->previewSwap:Landroid/widget/ImageButton;

    if-eqz p0, :cond_14

    const-wide/16 v1, 0x0

    .line 47
    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->startFlipAnimation(Landroid/view/View;J)V

    :cond_14
    return-void

    .line 48
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v1, "this$0"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->animateShow()V

    if-nez p0, :cond_16

    .line 51
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-nez p0, :cond_15

    goto :goto_c

    :cond_15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCapture()V

    :cond_16
    :goto_c
    return-void

    .line 52
    :pswitch_5
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraData;

    .line 53
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 54
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    monitor-enter v2

    if-eqz v0, :cond_17

    .line 55
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    :try_start_1
    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onSaveComplete(Lcom/motorola/camera/CameraData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception p0

    .line 59
    :try_start_2
    throw p0

    .line 60
    :cond_17
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 62
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    :try_start_3
    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onSaveError(Lcom/motorola/camera/CameraData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception p0

    .line 64
    :try_start_4
    throw p0

    .line 65
    :cond_18
    monitor-exit v2

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 66
    :goto_f
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Z

    .line 67
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setTranslucent(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
