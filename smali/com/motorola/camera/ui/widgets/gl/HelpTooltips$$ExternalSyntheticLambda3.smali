.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;
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

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->isControlPanelOpened(Z)V

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 9
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 12
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 13
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->isLevelerAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showLeveler()V

    .line 16
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 17
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    instance-of v0, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    .line 22
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 24
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    .line 25
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
