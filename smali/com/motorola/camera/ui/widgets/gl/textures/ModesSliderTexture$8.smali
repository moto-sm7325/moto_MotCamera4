.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "ModesSliderTexture.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

.field public final synthetic val$postTranslationY:F

.field public final synthetic val$viewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/PreviewSize;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$viewSize:Lcom/motorola/camera/PreviewSize;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$viewSize:Lcom/motorola/camera/PreviewSize;

    .line 2
    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    return-void
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$viewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->access$500(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$viewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->access$500(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->access$200(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method
