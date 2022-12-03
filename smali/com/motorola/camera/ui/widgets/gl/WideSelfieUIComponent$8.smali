.class public Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$8;
.super Ljava/lang/Object;
.source "WideSelfieUIComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 3
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    return-void
.end method
