.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;
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

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V
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

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
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
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->isDrawEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->setRoiVisibility(Z)V

    .line 4
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->isControlPanelOpened(Z)V

    .line 7
    :cond_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 9
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    .line 11
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 12
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 15
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 16
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 19
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->showZoomBarBackground(Z)V

    .line 23
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 24
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    instance-of v0, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    .line 29
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 31
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

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
