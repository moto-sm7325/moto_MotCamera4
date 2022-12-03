.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->show()V

    .line 2
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 4
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 5
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 12
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 13
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->showZoomBarBackground(Z)V

    .line 17
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 18
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V

    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->dirty()V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
