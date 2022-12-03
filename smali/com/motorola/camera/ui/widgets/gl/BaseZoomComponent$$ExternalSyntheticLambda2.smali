.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

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
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    .line 9
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 10
    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 12
    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v0, :cond_4

    .line 13
    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0

    .line 16
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 19
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->onEntering()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 24
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 25
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->$r8$clinit:I

    .line 26
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->setRoiVisibility(Z)V

    .line 27
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    .line 28
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
