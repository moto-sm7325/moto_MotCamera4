.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Collection;

    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    .line 8
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    new-instance p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    if-eqz p2, :cond_3

    .line 11
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 13
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
