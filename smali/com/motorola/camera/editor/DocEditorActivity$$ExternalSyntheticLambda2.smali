.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->Companion:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;

    .line 1
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->enableZoomToggle(Z)V

    return-void

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 5
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->clickEnabled:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 8
    invoke-static {}, Lcom/motorola/camera/MotoFeedbackHelper;->createFeebackIntent()Landroid/content/Intent;

    move-result-object v0

    .line 9
    sget-object v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->MOTO_FEEDBACK:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 10
    invoke-direct {p1, v0, v2, v3, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void

    .line 11
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->INFLATION_STATES:Ljava/util/List;

    .line 12
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 14
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 15
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0xc8

    .line 16
    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 19
    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 20
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 22
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 25
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    sget p1, Lcom/motorola/camera/fragments/ReportFragment;->$r8$clinit:I

    .line 26
    new-instance p1, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Lcom/motorola/camera/fragments/ReportFragment$1;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    .line 27
    new-instance p1, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Lcom/motorola/camera/fragments/ReportFragment$1;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    return-void

    .line 28
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->clearMask()V

    return-void

    .line 30
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 31
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/saving/SaveListener;

    const/16 v1, 0x65

    invoke-static {p0, p1, v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->saveDocument(Landroid/app/Activity;Lcom/motorola/camera/editor/DocJpegHolder;Lcom/motorola/camera/saving/SaveListener;I)V

    :goto_0
    return-void

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->INFLATION_STATES:Ljava/util/List;

    .line 35
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->superSlowMotionSetting:Lcom/motorola/camera/settings/Setting;

    .line 37
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 39
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 40
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 41
    check-cast v2, Ljava/lang/Integer;

    .line 42
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 43
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PREVIOUS_VALUE"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "SETTING"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const-string v2, "MODE"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v1, "SETTING_UPDATE_TYPE"

    .line 48
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 50
    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->setupImageDrawable(Z)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->setToggleContentDescription(Z)V

    return-void

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
