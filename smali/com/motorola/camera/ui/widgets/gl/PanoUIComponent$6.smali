.class public Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;
.super Ljava/lang/Object;
.source "PanoUIComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float v8, v0, v1

    .line 5
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v2, Landroid/util/Size;

    invoke-direct {v1, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    .line 10
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v3, v4

    .line 11
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float v5, v3, v1

    .line 12
    iput v5, v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    .line 13
    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 14
    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    .line 15
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v7, 0x0

    move v2, v3

    move v3, v0

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updateTranslation(ZFFFLcom/motorola/camera/PreviewSize;Z)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    .line 21
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 22
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr v8, v1

    .line 23
    invoke-virtual {v3, v2, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    .line 25
    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x42300000    # 44.0f

    .line 26
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 27
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v2

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setPanoThumbnailTexBackgroundTranslation(FF)V

    :cond_1
    return-void
.end method
