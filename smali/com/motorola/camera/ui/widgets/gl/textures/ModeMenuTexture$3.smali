.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "ModeMenuTexture.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 6
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 3
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method
