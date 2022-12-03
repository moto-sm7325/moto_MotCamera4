.class public final synthetic Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/ui/ScaleImageView;

    sget v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    invoke-static {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->convertToGLColor(I[F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
