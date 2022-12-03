.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$isDualCaptureMode:Z

.field public final synthetic val$previewOffset:F

.field public final synthetic val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic val$scale:F

.field public final synthetic val$startOffset:F

.field public final synthetic val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

.field public final synthetic val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/textures/Texture;FLcom/motorola/camera/ui/widgets/gl/Rotation;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffset:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$scale:F

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-boolean p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$isDualCaptureMode:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 4
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v3

    .line 5
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v3

    .line 6
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p1, v3

    mul-float/2addr v0, p2

    mul-float/2addr v1, p2

    mul-float/2addr p1, p2

    .line 7
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget v2, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, v0

    iput v2, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 9
    iget v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v1

    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 10
    iget v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p1

    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 11
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffset:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    invoke-static {v0, p1, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v7

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$scale:F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 14
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$isDualCaptureMode:Z

    if-eqz p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    .line 19
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 v3, 0x0

    .line 20
    aget-object v4, p1, v3

    .line 21
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v5

    .line 22
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v2, v5

    .line 23
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v0, v4

    mul-float/2addr v1, p2

    mul-float/2addr v2, p2

    mul-float/2addr v0, p2

    .line 24
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object p1, p1, v3

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 25
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 26
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p1, v2

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 27
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr p1, v0

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v0, 0x4

    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 31
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$scale:F

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
