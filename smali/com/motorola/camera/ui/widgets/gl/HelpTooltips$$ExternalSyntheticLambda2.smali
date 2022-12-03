.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->dirty()V

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    .line 6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 7
    invoke-virtual {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 10
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->$r8$clinit:I

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    const/4 p0, 0x0

    return-object p0

    .line 16
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 20
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 21
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 24
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 25
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 28
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

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
