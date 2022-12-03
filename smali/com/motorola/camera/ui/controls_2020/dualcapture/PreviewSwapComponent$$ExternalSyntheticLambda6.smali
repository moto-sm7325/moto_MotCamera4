.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;FFZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:F

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$2:F

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$3:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;FFZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:F

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$2:F

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v1, 0x1

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$2:F

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$3:Z

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->updateRotation(FF)V

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    .line 4
    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_1
    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$2:F

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$3:Z

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->INFLATION_STATES:Ljava/util/List;

    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->updateRotation(FF)V

    if-eqz p0, :cond_2

    .line 9
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    .line 10
    :cond_2
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
