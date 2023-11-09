.class public final synthetic Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    sget v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
