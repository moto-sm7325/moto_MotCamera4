.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->settingSingleTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :goto_2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->shouldShowZoomTooltip:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    .line 8
    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->dualCaptureTooltip:Ljava/util/List;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :goto_4
    return-void

    .line 10
    :goto_5
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
