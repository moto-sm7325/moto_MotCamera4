.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;
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

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FocusComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    .line 1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    .line 2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget v2, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->PANE_HIDE_DUR:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 8
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->show()V

    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 12
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->$r8$clinit:I

    .line 13
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateGridVisibility(Z)V

    .line 14
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->mShouldKeepHidden:Z

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 16
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 21
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 22
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    sget v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->$r8$clinit:I

    .line 23
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->darkenPreview(Z)V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 25
    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    const-wide/16 v3, 0x0

    .line 26
    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->sendFocus(ZJ)V

    .line 27
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mShouldHide:Z

    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 29
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 30
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

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
