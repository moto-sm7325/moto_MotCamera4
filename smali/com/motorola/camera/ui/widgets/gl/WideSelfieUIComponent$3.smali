.class public Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "WideSelfieUIComponent.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateShowLivePreview()V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
