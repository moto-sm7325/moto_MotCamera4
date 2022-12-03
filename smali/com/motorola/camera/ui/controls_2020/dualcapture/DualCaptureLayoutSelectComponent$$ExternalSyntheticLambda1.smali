.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_2
    return-void

    .line 5
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    const-string/jumbo v0, "this$0"

    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported()Z

    move-result v0

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v3, :cond_3

    goto :goto_5

    .line 9
    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    const/16 v0, 0x8

    .line 10
    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 11
    :goto_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    goto :goto_6

    .line 13
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 14
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->showToggle()V

    goto :goto_9

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_7

    goto :goto_7

    .line 16
    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    move v1, v2

    :goto_8
    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->showSliderBar()V

    goto :goto_9

    .line 18
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->showToggle()V

    .line 19
    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_a

    goto :goto_a

    .line 20
    :cond_a
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v2

    :goto_a
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->notifyModeComponent(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
