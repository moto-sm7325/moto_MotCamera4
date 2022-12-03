.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:J

    .line 1
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:J

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    const-string/jumbo p0, "this$0"

    .line 3
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->ensureMainThread()V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->animateShow(Landroid/view/View;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->animateDeterminate(Landroid/widget/ProgressBar;JZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
