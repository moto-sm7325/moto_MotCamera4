.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;
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

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FocusComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->hide()V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->$r8$clinit:I

    const-wide/16 v3, 0x0

    .line 4
    invoke-virtual {p0, v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->sendFocus(ZJ)V

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mShouldHide:Z

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 11
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->onEntering()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 12
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 13
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 16
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
