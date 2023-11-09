.class public final synthetic Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    sget v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->$r8$clinit:I

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    if-eq p1, v0, :cond_1

    .line 6
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;->onFrameUpdate(IZ)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    .line 9
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->Companion:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;

    const-string/jumbo v0, "this$0"

    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    .line 11
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekBar:Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-virtual {v4, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 16
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 17
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 18
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    const/high16 v1, 0x41800000    # 16.0f

    .line 19
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v1

    add-float/2addr v5, v2

    .line 20
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setX(F)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 22
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p0, v0

    const/high16 v0, 0x41f80000    # 31.0f

    .line 23
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    sub-float/2addr p0, v1

    neg-float p0, p0

    goto :goto_2

    :cond_4
    const/16 p0, 0x26

    int-to-float p0, p0

    .line 24
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p0, v0

    :goto_2
    const/16 v0, 0x24

    int-to-float v0, v0

    .line 25
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    sub-float p0, v0, p0

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    .line 26
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setY(F)V

    .line 27
    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
