.class public Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;
.super Ljava/lang/Object;
.source "WideSelfieUIComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

.field public final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method
