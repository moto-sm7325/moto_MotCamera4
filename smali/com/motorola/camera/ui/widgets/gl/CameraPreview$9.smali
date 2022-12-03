.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# instance fields
.field public mKpiEndCalled:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/textures/Texture;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->mKpiEndCalled:Z

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->mKpiEndCalled:Z

    if-nez p1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 7
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->mKpiEndCalled:Z

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 3
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const v1, 0x3f4ccccd    # 0.8f

    .line 6
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 9
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    .line 10
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 13
    invoke-virtual {p1, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
