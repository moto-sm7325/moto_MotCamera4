.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;
.source "ModesSliderTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    return-void
.end method


# virtual methods
.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 p1, 0x6

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void
.end method
