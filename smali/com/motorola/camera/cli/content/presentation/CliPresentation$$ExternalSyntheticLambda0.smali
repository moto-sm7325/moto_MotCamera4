.class public final synthetic Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/view/View;Lcom/motorola/camera/cli/content/presentation/CliPresentation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object v3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->inCapture:Z

    :cond_0
    if-nez p0, :cond_1

    .line 4
    iput-boolean v1, v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    .line 5
    :cond_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 7
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "TORCH.mName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->remove()V

    :cond_2
    return-void

    .line 10
    :pswitch_1
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const-string v3, "$it"

    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPresentation;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->getPresentationContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-boolean v3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Collection;

    .line 16
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetColorPickerPosition(Z)V

    goto :goto_3

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 19
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setY(F)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
