.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "ModeMenuTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public dragDistance:F

.field public move:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragApplyValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 4
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->dragDistance:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->dragDistance:F

    .line 6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 7
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v3, v1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->limitMovePos()V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 20
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragEnd(F)V
    .locals 0

    return-void
.end method

.method public onDragStart(Landroid/graphics/PointF;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->dragDistance:F

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    return-void
.end method
