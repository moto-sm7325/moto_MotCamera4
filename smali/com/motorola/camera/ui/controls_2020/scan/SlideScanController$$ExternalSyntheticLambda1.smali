.class public final synthetic Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->stateHide:Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->stateHide:Z

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isZoomDisplay:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->animateShow()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoCaptureSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.FIRS\u2026IME_USE_SLIDE_SCAN).value"

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->tutorialTip:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0x32

    int-to-float p0, p0

    .line 13
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    .line 14
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->mScreenDensity:F

    mul-float/2addr p0, v2

    .line 15
    iput p0, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->x:F

    .line 16
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 17
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p0

    const/16 v0, 0x4b

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p0, v0

    const/16 v0, 0x14

    int-to-float v0, v0

    sub-float/2addr p0, v0

    .line 18
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    .line 19
    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->mScreenDensity:F

    mul-float/2addr p0, v0

    .line 20
    iput p0, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->y:F

    .line 21
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x33

    goto :goto_1

    :cond_3
    const/16 p0, 0x35

    :goto_1
    move v2, p0

    .line 23
    iget p0, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->x:F

    float-to-int v3, p0

    iget p0, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->y:F

    float-to-int v4, p0

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;ILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void

    .line 24
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
