.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_3

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    const-string v3, "scale"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    return-void

    .line 7
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->showSliderBar()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
